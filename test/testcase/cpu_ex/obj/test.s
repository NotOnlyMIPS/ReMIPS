
main.elf:     file format elf32-tradlittlemips
main.elf


Disassembly of section .text:

9fc00000 <_ftext>:
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:18
9fc00000:	2408ffff 	li	t0,-1
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:19
9fc00004:	2408ffff 	li	t0,-1
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:20
9fc00008:	100001be 	b	9fc00704 <locate>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:21
9fc0000c:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:24
9fc00010:	3c088000 	lui	t0,0x8000
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:25
9fc00014:	25290001 	addiu	t1,t1,1
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:26
9fc00018:	01005025 	move	t2,t0
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:27
9fc0001c:	01ae5821 	addu	t3,t5,t6
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:28
9fc00020:	8d0c0000 	lw	t4,0(t0)
	...
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:33
9fc000ec:	3c088000 	lui	t0,0x8000
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:34
9fc000f0:	25290001 	addiu	t1,t1,1
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:35
9fc000f4:	01005025 	move	t2,t0
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:36
9fc000f8:	01ae5821 	addu	t3,t5,t6
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:37
9fc000fc:	8d0c0000 	lw	t4,0(t0)

9fc00100 <test_finish>:
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:40
9fc00100:	25080001 	addiu	t0,t0,1
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:41
9fc00104:	240900ff 	li	t1,255
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:42
9fc00108:	3c0abfb0 	lui	t2,0xbfb0
9fc0010c:	254afff0 	addiu	t2,t2,-16
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:43
9fc00110:	ad490000 	sw	t1,0(t2)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:44
9fc00114:	1000fffa 	b	9fc00100 <test_finish>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:45
9fc00118:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:47
9fc0011c:	3c088000 	lui	t0,0x8000
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:48
9fc00120:	25290001 	addiu	t1,t1,1
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:49
9fc00124:	01005025 	move	t2,t0
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:50
9fc00128:	01ae5821 	addu	t3,t5,t6
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:51
9fc0012c:	8d0c0000 	lw	t4,0(t0)
	...
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:57
9fc00380:	0000d010 	mfhi	k0
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:58
9fc00384:	0000d812 	mflo	k1
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:59
9fc00388:	3c1a800d 	lui	k0,0x800d
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:60
9fc0038c:	935b0000 	lbu	k1,0(k0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:61
9fc00390:	241a0001 	li	k0,1
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:62
9fc00394:	137a0019 	beq	k1,k0,9fc003fc <syscall_ex>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:63
9fc00398:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:64
9fc0039c:	241a0002 	li	k0,2
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:65
9fc003a0:	137a0027 	beq	k1,k0,9fc00440 <break_ex>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:66
9fc003a4:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:67
9fc003a8:	241a0003 	li	k0,3
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:68
9fc003ac:	137a0035 	beq	k1,k0,9fc00484 <overflow_ex>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:69
9fc003b0:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:70
9fc003b4:	241a0004 	li	k0,4
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:71
9fc003b8:	137a0042 	beq	k1,k0,9fc004c4 <adel_load_ex>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:72
9fc003bc:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:73
9fc003c0:	241a0005 	li	k0,5
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:74
9fc003c4:	137a0050 	beq	k1,k0,9fc00508 <ades_ex>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:75
9fc003c8:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:76
9fc003cc:	241a0006 	li	k0,6
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:77
9fc003d0:	137a005e 	beq	k1,k0,9fc0054c <adel_if_ex>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:78
9fc003d4:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:79
9fc003d8:	241a0007 	li	k0,7
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:80
9fc003dc:	137a006d 	beq	k1,k0,9fc00594 <reserved_inst_ex>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:81
9fc003e0:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:82
9fc003e4:	241a0008 	li	k0,8
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:83
9fc003e8:	137a007b 	beq	k1,k0,9fc005d8 <int_ex>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:84
9fc003ec:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:85
9fc003f0:	241a0009 	li	k0,9
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:86
9fc003f4:	137a00a1 	beq	k1,k0,9fc0067c <trap_ex>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:87
9fc003f8:	00000000 	nop

9fc003fc <syscall_ex>:
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:90
9fc003fc:	00009021 	move	s2,zero
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:91
9fc00400:	401a7000 	mfc0	k0,c0_epc
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:92
9fc00404:	175400b0 	bne	k0,s4,9fc006c8 <ex_finish>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:93
9fc00408:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:94
9fc0040c:	401a6800 	mfc0	k0,c0_cause
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:95
9fc00410:	335a007c 	andi	k0,k0,0x7c
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:96
9fc00414:	241b0020 	li	k1,32
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:97
9fc00418:	175b00ab 	bne	k0,k1,9fc006c8 <ex_finish>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:98
9fc0041c:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:99
9fc00420:	401a6000 	mfc0	k0,c0_status
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:100
9fc00424:	335a0002 	andi	k0,k0,0x2
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:101
9fc00428:	241b0002 	li	k1,2
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:102
9fc0042c:	175b00a6 	bne	k0,k1,9fc006c8 <ex_finish>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:103
9fc00430:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:104
9fc00434:	3c120001 	lui	s2,0x1
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:105
9fc00438:	100000a3 	b	9fc006c8 <ex_finish>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:106
9fc0043c:	00000000 	nop

9fc00440 <break_ex>:
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:109
9fc00440:	00009021 	move	s2,zero
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:110
9fc00444:	401a7000 	mfc0	k0,c0_epc
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:111
9fc00448:	1754009f 	bne	k0,s4,9fc006c8 <ex_finish>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:112
9fc0044c:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:113
9fc00450:	401a6800 	mfc0	k0,c0_cause
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:114
9fc00454:	335a007c 	andi	k0,k0,0x7c
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:115
9fc00458:	241b0024 	li	k1,36
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:116
9fc0045c:	175b009a 	bne	k0,k1,9fc006c8 <ex_finish>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:117
9fc00460:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:118
9fc00464:	401a6000 	mfc0	k0,c0_status
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:119
9fc00468:	335a0002 	andi	k0,k0,0x2
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:120
9fc0046c:	241b0002 	li	k1,2
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:121
9fc00470:	175b0095 	bne	k0,k1,9fc006c8 <ex_finish>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:122
9fc00474:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:123
9fc00478:	3c120002 	lui	s2,0x2
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:124
9fc0047c:	10000092 	b	9fc006c8 <ex_finish>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:125
9fc00480:	00000000 	nop

9fc00484 <overflow_ex>:
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:128
9fc00484:	00009021 	move	s2,zero
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:129
9fc00488:	401a7000 	mfc0	k0,c0_epc
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:130
9fc0048c:	1754008e 	bne	k0,s4,9fc006c8 <ex_finish>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:131
9fc00490:	401a6800 	mfc0	k0,c0_cause
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:132
9fc00494:	335a007c 	andi	k0,k0,0x7c
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:133
9fc00498:	241b0030 	li	k1,48
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:134
9fc0049c:	175b008a 	bne	k0,k1,9fc006c8 <ex_finish>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:135
9fc004a0:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:136
9fc004a4:	401a6000 	mfc0	k0,c0_status
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:137
9fc004a8:	335a0002 	andi	k0,k0,0x2
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:138
9fc004ac:	241b0002 	li	k1,2
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:139
9fc004b0:	175b0085 	bne	k0,k1,9fc006c8 <ex_finish>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:140
9fc004b4:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:141
9fc004b8:	3c120003 	lui	s2,0x3
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:142
9fc004bc:	10000082 	b	9fc006c8 <ex_finish>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:143
9fc004c0:	00000000 	nop

9fc004c4 <adel_load_ex>:
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:146
9fc004c4:	00009021 	move	s2,zero
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:147
9fc004c8:	401a7000 	mfc0	k0,c0_epc
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:148
9fc004cc:	1754007e 	bne	k0,s4,9fc006c8 <ex_finish>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:149
9fc004d0:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:150
9fc004d4:	401a6800 	mfc0	k0,c0_cause
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:151
9fc004d8:	335a007c 	andi	k0,k0,0x7c
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:152
9fc004dc:	241b0010 	li	k1,16
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:153
9fc004e0:	175b0079 	bne	k0,k1,9fc006c8 <ex_finish>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:154
9fc004e4:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:155
9fc004e8:	401a6000 	mfc0	k0,c0_status
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:156
9fc004ec:	335a0002 	andi	k0,k0,0x2
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:157
9fc004f0:	241b0002 	li	k1,2
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:158
9fc004f4:	175b0074 	bne	k0,k1,9fc006c8 <ex_finish>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:159
9fc004f8:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:160
9fc004fc:	3c120004 	lui	s2,0x4
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:161
9fc00500:	10000071 	b	9fc006c8 <ex_finish>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:162
9fc00504:	00000000 	nop

9fc00508 <ades_ex>:
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:165
9fc00508:	00009021 	move	s2,zero
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:166
9fc0050c:	401a7000 	mfc0	k0,c0_epc
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:167
9fc00510:	1754006d 	bne	k0,s4,9fc006c8 <ex_finish>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:168
9fc00514:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:169
9fc00518:	401a6800 	mfc0	k0,c0_cause
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:170
9fc0051c:	335a007c 	andi	k0,k0,0x7c
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:171
9fc00520:	241b0014 	li	k1,20
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:172
9fc00524:	175b0068 	bne	k0,k1,9fc006c8 <ex_finish>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:173
9fc00528:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:174
9fc0052c:	401a6000 	mfc0	k0,c0_status
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:175
9fc00530:	335a0002 	andi	k0,k0,0x2
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:176
9fc00534:	241b0002 	li	k1,2
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:177
9fc00538:	175b0063 	bne	k0,k1,9fc006c8 <ex_finish>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:178
9fc0053c:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:179
9fc00540:	3c120005 	lui	s2,0x5
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:180
9fc00544:	10000060 	b	9fc006c8 <ex_finish>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:181
9fc00548:	00000000 	nop

9fc0054c <adel_if_ex>:
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:184
9fc0054c:	00009021 	move	s2,zero
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:185
9fc00550:	401a7000 	mfc0	k0,c0_epc
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:186
9fc00554:	1754005c 	bne	k0,s4,9fc006c8 <ex_finish>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:187
9fc00558:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:188
9fc0055c:	40957000 	mtc0	s5,c0_epc
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:189
9fc00560:	401a6800 	mfc0	k0,c0_cause
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:190
9fc00564:	335a007c 	andi	k0,k0,0x7c
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:191
9fc00568:	241b0010 	li	k1,16
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:192
9fc0056c:	175b0056 	bne	k0,k1,9fc006c8 <ex_finish>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:193
9fc00570:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:194
9fc00574:	401a6000 	mfc0	k0,c0_status
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:195
9fc00578:	335a0002 	andi	k0,k0,0x2
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:196
9fc0057c:	241b0002 	li	k1,2
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:197
9fc00580:	175b0051 	bne	k0,k1,9fc006c8 <ex_finish>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:198
9fc00584:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:199
9fc00588:	3c120006 	lui	s2,0x6
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:200
9fc0058c:	1000004e 	b	9fc006c8 <ex_finish>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:201
9fc00590:	00000000 	nop

9fc00594 <reserved_inst_ex>:
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:204
9fc00594:	00009021 	move	s2,zero
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:205
9fc00598:	401a7000 	mfc0	k0,c0_epc
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:206
9fc0059c:	1754004a 	bne	k0,s4,9fc006c8 <ex_finish>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:207
9fc005a0:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:208
9fc005a4:	401a6800 	mfc0	k0,c0_cause
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:209
9fc005a8:	335a007c 	andi	k0,k0,0x7c
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:210
9fc005ac:	241b0028 	li	k1,40
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:211
9fc005b0:	175b0045 	bne	k0,k1,9fc006c8 <ex_finish>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:212
9fc005b4:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:213
9fc005b8:	401a6000 	mfc0	k0,c0_status
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:214
9fc005bc:	335a0002 	andi	k0,k0,0x2
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:215
9fc005c0:	241b0002 	li	k1,2
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:216
9fc005c4:	175b0040 	bne	k0,k1,9fc006c8 <ex_finish>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:217
9fc005c8:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:218
9fc005cc:	3c120007 	lui	s2,0x7
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:219
9fc005d0:	1000003d 	b	9fc006c8 <ex_finish>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:220
9fc005d4:	00000000 	nop

9fc005d8 <int_ex>:
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:223
9fc005d8:	00009021 	move	s2,zero
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:224
9fc005dc:	401a7000 	mfc0	k0,c0_epc
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:225
9fc005e0:	17540039 	bne	k0,s4,9fc006c8 <ex_finish>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:226
9fc005e4:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:227
9fc005e8:	275a0008 	addiu	k0,k0,8
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:228
9fc005ec:	409a7000 	mtc0	k0,c0_epc
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:229
9fc005f0:	3c1bbfb0 	lui	k1,0xbfb0
9fc005f4:	af608ffc 	sw	zero,-28676(k1)
9fc005f8:	af608ffc 	sw	zero,-28676(k1)
9fc005fc:	af60fff8 	sw	zero,-8(k1)
9fc00600:	af608ffc 	sw	zero,-28676(k1)
9fc00604:	af608ffc 	sw	zero,-28676(k1)
9fc00608:	8f608ffc 	lw	zero,-28676(k1)
9fc0060c:	8f7bfff8 	lw	k1,-8(k1)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:230
9fc00610:	401a6800 	mfc0	k0,c0_cause
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:231
9fc00614:	3c1bbfb0 	lui	k1,0xbfb0
9fc00618:	af608ffc 	sw	zero,-28676(k1)
9fc0061c:	af608ffc 	sw	zero,-28676(k1)
9fc00620:	af7bfff8 	sw	k1,-8(k1)
9fc00624:	af608ffc 	sw	zero,-28676(k1)
9fc00628:	af608ffc 	sw	zero,-28676(k1)
9fc0062c:	8f608ffc 	lw	zero,-28676(k1)
9fc00630:	8f7bfff8 	lw	k1,-8(k1)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:232
9fc00634:	335a007c 	andi	k0,k0,0x7c
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:233
9fc00638:	241b0000 	li	k1,0
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:234
9fc0063c:	175b0022 	bne	k0,k1,9fc006c8 <ex_finish>
9fc00640:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:235
9fc00644:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:236
9fc00648:	401a6000 	mfc0	k0,c0_status
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:237
9fc0064c:	335a0002 	andi	k0,k0,0x2
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:238
9fc00650:	241b0002 	li	k1,2
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:239
9fc00654:	175b001c 	bne	k0,k1,9fc006c8 <ex_finish>
9fc00658:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:240
9fc0065c:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:241
9fc00660:	241affff 	li	k0,-1
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:242
9fc00664:	241b0000 	li	k1,0
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:243
9fc00668:	409a5800 	mtc0	k0,c0_compare
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:244
9fc0066c:	409b6800 	mtc0	k1,c0_cause
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:245
9fc00670:	10000022 	b	9fc006fc <ex_ret>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:246
9fc00674:	3c120008 	lui	s2,0x8
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:247
9fc00678:	00000000 	nop

9fc0067c <trap_ex>:
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:250
9fc0067c:	00009021 	move	s2,zero
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:251
9fc00680:	401a7000 	mfc0	k0,c0_epc
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:252
9fc00684:	17540010 	bne	k0,s4,9fc006c8 <ex_finish>
9fc00688:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:253
9fc0068c:	401a6800 	mfc0	k0,c0_cause
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:254
9fc00690:	335a007c 	andi	k0,k0,0x7c
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:255
9fc00694:	241b0034 	li	k1,52
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:256
9fc00698:	175b000b 	bne	k0,k1,9fc006c8 <ex_finish>
9fc0069c:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:257
9fc006a0:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:258
9fc006a4:	401a6000 	mfc0	k0,c0_status
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:259
9fc006a8:	335a0002 	andi	k0,k0,0x2
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:260
9fc006ac:	241b0002 	li	k1,2
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:261
9fc006b0:	175b0005 	bne	k0,k1,9fc006c8 <ex_finish>
9fc006b4:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:262
9fc006b8:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:263
9fc006bc:	10000002 	b	9fc006c8 <ex_finish>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:264
9fc006c0:	3c120009 	lui	s2,0x9
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:265
9fc006c4:	00000000 	nop

9fc006c8 <ex_finish>:
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:268
9fc006c8:	401a6800 	mfc0	k0,c0_cause
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:269
9fc006cc:	3c1b8000 	lui	k1,0x8000
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:270
9fc006d0:	035bd024 	and	k0,k0,k1
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:271
9fc006d4:	401b7000 	mfc0	k1,c0_epc
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:272
9fc006d8:	13400003 	beqz	k0,9fc006e8 <ex_finish+0x20>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:273
9fc006dc:	277b0004 	addiu	k1,k1,4
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:274
9fc006e0:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:275
9fc006e4:	277b0004 	addiu	k1,k1,4
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:277
9fc006e8:	409b7000 	mtc0	k1,c0_epc
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:278
9fc006ec:	16400003 	bnez	s2,9fc006fc <ex_ret>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:279
9fc006f0:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:280
9fc006f4:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:281
9fc006f8:	3c12ffff 	lui	s2,0xffff

9fc006fc <ex_ret>:
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:284
9fc006fc:	42000018 	eret
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:286
9fc00700:	00000000 	nop

9fc00704 <locate>:
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:292
9fc00704:	3c04bfb0 	lui	a0,0xbfb0
9fc00708:	2484f008 	addiu	a0,a0,-4088
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:293
9fc0070c:	3c05bfb0 	lui	a1,0xbfb0
9fc00710:	24a5f004 	addiu	a1,a1,-4092
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:294
9fc00714:	3c06bfb0 	lui	a2,0xbfb0
9fc00718:	24c6f000 	addiu	a2,a2,-4096
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:295
9fc0071c:	3c11bfb0 	lui	s1,0xbfb0
9fc00720:	2631f010 	addiu	s1,s1,-4080
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:297
9fc00724:	3c090000 	lui	t1,0x0
9fc00728:	25290002 	addiu	t1,t1,2
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:298
9fc0072c:	3c0a0000 	lui	t2,0x0
9fc00730:	254a0001 	addiu	t2,t2,1
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:299
9fc00734:	3c0b0001 	lui	t3,0x1
9fc00738:	256bffff 	addiu	t3,t3,-1
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:300
9fc0073c:	3c130000 	lui	s3,0x0
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:303
9fc00740:	ac890000 	sw	t1,0(a0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:304
9fc00744:	acaa0000 	sw	t2,0(a1)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:305
9fc00748:	accb0000 	sw	t3,0(a2)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:306
9fc0074c:	ae330000 	sw	s3,0(s1)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:307
9fc00750:	3c100000 	lui	s0,0x0
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:313
9fc00754:	3c199fc0 	lui	t9,0x9fc0
9fc00758:	27390764 	addiu	t9,t9,1892
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:314
9fc0075c:	03200008 	jr	t9
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:315
9fc00760:	00000000 	nop

9fc00764 <inst_test>:
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:321
9fc00764:	0ff0091c 	jal	9fc02470 <n1_syscall_ex_test>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:322
9fc00768:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:323
9fc0076c:	0ff00266 	jal	9fc00998 <wait_1s>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:324
9fc00770:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:325
9fc00774:	0ff01020 	jal	9fc04080 <n2_break_ex_test>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:326
9fc00778:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:327
9fc0077c:	0ff00266 	jal	9fc00998 <wait_1s>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:328
9fc00780:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:329
9fc00784:	0ff01070 	jal	9fc041c0 <n3_add_ov_ex_test>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:330
9fc00788:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:331
9fc0078c:	0ff00266 	jal	9fc00998 <wait_1s>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:332
9fc00790:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:333
9fc00794:	0ff01104 	jal	9fc04410 <n4_addi_ov_ex_test>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:334
9fc00798:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:335
9fc0079c:	0ff00266 	jal	9fc00998 <wait_1s>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:336
9fc007a0:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:337
9fc007a4:	0ff01190 	jal	9fc04640 <n5_sub_ov_ex_test>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:338
9fc007a8:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:339
9fc007ac:	0ff00266 	jal	9fc00998 <wait_1s>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:340
9fc007b0:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:341
9fc007b4:	0ff01224 	jal	9fc04890 <n6_lw_adel_ex_test>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:342
9fc007b8:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:343
9fc007bc:	0ff00266 	jal	9fc00998 <wait_1s>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:344
9fc007c0:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:345
9fc007c4:	0ff012e4 	jal	9fc04b90 <n7_lh_adel_ex_test>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:346
9fc007c8:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:347
9fc007cc:	0ff00266 	jal	9fc00998 <wait_1s>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:348
9fc007d0:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:349
9fc007d4:	0ff013a4 	jal	9fc04e90 <n8_lhu_adel_ex_test>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:350
9fc007d8:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:351
9fc007dc:	0ff00266 	jal	9fc00998 <wait_1s>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:352
9fc007e0:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:353
9fc007e4:	0ff01464 	jal	9fc05190 <n9_sw_ades_ex_test>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:354
9fc007e8:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:355
9fc007ec:	0ff00266 	jal	9fc00998 <wait_1s>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:356
9fc007f0:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:357
9fc007f4:	0ff0027c 	jal	9fc009f0 <n10_sh_ades_ex_test>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:358
9fc007f8:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:359
9fc007fc:	0ff00266 	jal	9fc00998 <wait_1s>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:360
9fc00800:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:361
9fc00804:	0ff0033c 	jal	9fc00cf0 <n11_ft_adel_ex_test>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:362
9fc00808:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:363
9fc0080c:	0ff00266 	jal	9fc00998 <wait_1s>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:364
9fc00810:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:365
9fc00814:	0ff003c8 	jal	9fc00f20 <n12_ri_ex_test>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:366
9fc00818:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:367
9fc0081c:	0ff00266 	jal	9fc00998 <wait_1s>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:368
9fc00820:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:369
9fc00824:	0ff0041c 	jal	9fc01070 <n13_ti_ex_test>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:370
9fc00828:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:371
9fc0082c:	0ff00266 	jal	9fc00998 <wait_1s>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:372
9fc00830:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:373
9fc00834:	0ff004c4 	jal	9fc01310 <n14_soft_int_ex_test>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:374
9fc00838:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:375
9fc0083c:	0ff00266 	jal	9fc00998 <wait_1s>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:376
9fc00840:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:377
9fc00844:	0ff0055c 	jal	9fc01570 <n15_beq_ds_ex_test>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:378
9fc00848:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:379
9fc0084c:	0ff00266 	jal	9fc00998 <wait_1s>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:380
9fc00850:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:381
9fc00854:	0ff0061c 	jal	9fc01870 <n16_bne_ds_ex_test>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:382
9fc00858:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:383
9fc0085c:	0ff00266 	jal	9fc00998 <wait_1s>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:384
9fc00860:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:385
9fc00864:	0ff006dc 	jal	9fc01b70 <n17_bgez_ds_ex_test>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:386
9fc00868:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:387
9fc0086c:	0ff00266 	jal	9fc00998 <wait_1s>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:388
9fc00870:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:389
9fc00874:	0ff0079c 	jal	9fc01e70 <n18_bgtz_ds_ex_test>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:390
9fc00878:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:391
9fc0087c:	0ff00266 	jal	9fc00998 <wait_1s>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:392
9fc00880:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:393
9fc00884:	0ff0085c 	jal	9fc02170 <n19_blez_ds_ex_test>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:394
9fc00888:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:395
9fc0088c:	0ff00266 	jal	9fc00998 <wait_1s>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:396
9fc00890:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:397
9fc00894:	0ff0096c 	jal	9fc025b0 <n20_bltz_ds_ex_test>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:398
9fc00898:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:399
9fc0089c:	0ff00266 	jal	9fc00998 <wait_1s>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:400
9fc008a0:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:401
9fc008a4:	0ff00a2c 	jal	9fc028b0 <n21_bltzal_ds_ex_test>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:402
9fc008a8:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:403
9fc008ac:	0ff00266 	jal	9fc00998 <wait_1s>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:404
9fc008b0:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:405
9fc008b4:	0ff00af0 	jal	9fc02bc0 <n22_bgezal_ds_ex_test>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:406
9fc008b8:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:407
9fc008bc:	0ff00266 	jal	9fc00998 <wait_1s>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:408
9fc008c0:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:409
9fc008c4:	0ff00bb4 	jal	9fc02ed0 <n23_j_ds_ex_test>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:410
9fc008c8:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:411
9fc008cc:	0ff00266 	jal	9fc00998 <wait_1s>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:412
9fc008d0:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:413
9fc008d4:	0ff00c74 	jal	9fc031d0 <n24_jal_ds_ex_test>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:414
9fc008d8:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:415
9fc008dc:	0ff00266 	jal	9fc00998 <wait_1s>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:416
9fc008e0:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:417
9fc008e4:	0ff00d38 	jal	9fc034e0 <n25_jr_ds_ex_test>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:418
9fc008e8:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:419
9fc008ec:	0ff00266 	jal	9fc00998 <wait_1s>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:420
9fc008f0:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:421
9fc008f4:	0ff00e10 	jal	9fc03840 <n26_jalr_ds_ex_test>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:422
9fc008f8:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:423
9fc008fc:	0ff00266 	jal	9fc00998 <wait_1s>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:424
9fc00900:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:425
9fc00904:	0ff00ee8 	jal	9fc03ba0 <n27_trap_ex_test>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:426
9fc00908:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:427
9fc0090c:	0ff00266 	jal	9fc00998 <wait_1s>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:428
9fc00910:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:433
9fc00914:	3c099fc0 	lui	t1,0x9fc0
9fc00918:	2529092c 	addiu	t1,t1,2348
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:434
9fc0091c:	3c0a2000 	lui	t2,0x2000
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:435
9fc00920:	012ac821 	addu	t9,t1,t2
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:436
9fc00924:	03200008 	jr	t9
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:437
9fc00928:	00000000 	nop

9fc0092c <kseg0_kseg1>:
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:444
9fc0092c:	3c100000 	lui	s0,0x0
9fc00930:	2610001b 	addiu	s0,s0,27
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:446
9fc00934:	1213000e 	beq	s0,s3,9fc00970 <kseg0_kseg1+0x44>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:447
9fc00938:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:449
9fc0093c:	3c04bfb0 	lui	a0,0xbfb0
9fc00940:	2484f000 	addiu	a0,a0,-4096
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:450
9fc00944:	3c05bfb0 	lui	a1,0xbfb0
9fc00948:	24a5f008 	addiu	a1,a1,-4088
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:451
9fc0094c:	3c06bfb0 	lui	a2,0xbfb0
9fc00950:	24c6f004 	addiu	a2,a2,-4092
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:453
9fc00954:	3c090000 	lui	t1,0x0
9fc00958:	25290002 	addiu	t1,t1,2
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:456
9fc0095c:	ac800000 	sw	zero,0(a0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:457
9fc00960:	aca90000 	sw	t1,0(a1)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:458
9fc00964:	acc90000 	sw	t1,0(a2)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:459
9fc00968:	10000009 	b	9fc00990 <kseg0_kseg1+0x64>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:460
9fc0096c:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:462
9fc00970:	3c090000 	lui	t1,0x0
9fc00974:	25290001 	addiu	t1,t1,1
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:463
9fc00978:	3c04bfb0 	lui	a0,0xbfb0
9fc0097c:	2484f008 	addiu	a0,a0,-4088
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:464
9fc00980:	3c05bfb0 	lui	a1,0xbfb0
9fc00984:	24a5f004 	addiu	a1,a1,-4092
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:466
9fc00988:	ac890000 	sw	t1,0(a0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:467
9fc0098c:	aca90000 	sw	t1,0(a1)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:474
9fc00990:	0ff00040 	jal	9fc00100 <test_finish>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:475
9fc00994:	00000000 	nop

9fc00998 <wait_1s>:
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:478
9fc00998:	3c08bfb0 	lui	t0,0xbfb0
9fc0099c:	2508f02c 	addiu	t0,t0,-4052
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:479
9fc009a0:	3c090001 	lui	t1,0x1
9fc009a4:	2529aaaa 	addiu	t1,t1,-21846
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:482
9fc009a8:	8d0a0000 	lw	t2,0(t0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:484
9fc009ac:	01495026 	xor	t2,t2,t1
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:486
9fc009b0:	000a5a40 	sll	t3,t2,0x9
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:488
9fc009b4:	256b0001 	addiu	t3,t3,1

9fc009b8 <sub1>:
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:492
9fc009b8:	256bffff 	addiu	t3,t3,-1
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:495
9fc009bc:	8d0a0000 	lw	t2,0(t0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:497
9fc009c0:	01495026 	xor	t2,t2,t1
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:499
9fc009c4:	000a5240 	sll	t2,t2,0x9
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:501
9fc009c8:	016a602b 	sltu	t4,t3,t2
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:503
9fc009cc:	15800002 	bnez	t4,9fc009d8 <sub1+0x20>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:504
9fc009d0:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:505
9fc009d4:	254b0000 	addiu	t3,t2,0
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:508
9fc009d8:	1560fff7 	bnez	t3,9fc009b8 <sub1>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:509
9fc009dc:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:510
9fc009e0:	03e00008 	jr	ra
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/start.S:511
9fc009e4:	00000000 	nop
	...

9fc009f0 <n10_sh_ades_ex_test>:
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n10_sh_ades_ex.S:7
9fc009f0:	26100001 	addiu	s0,s0,1
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n10_sh_ades_ex.S:8
9fc009f4:	3c08800d 	lui	t0,0x800d
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n10_sh_ades_ex.S:9
9fc009f8:	24120005 	li	s2,5
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n10_sh_ades_ex.S:10
9fc009fc:	ad120000 	sw	s2,0(t0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n10_sh_ades_ex.S:12
9fc00a00:	40805800 	mtc0	zero,c0_compare
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n10_sh_ades_ex.S:13
9fc00a04:	3c170040 	lui	s7,0x40
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n10_sh_ades_ex.S:14
9fc00a08:	40976000 	mtc0	s7,c0_status
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n10_sh_ades_ex.S:15
9fc00a0c:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n10_sh_ades_ex.S:16
9fc00a10:	3c170005 	lui	s7,0x5
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n10_sh_ades_ex.S:19
9fc00a14:	3c028003 	lui	v0,0x8003
9fc00a18:	3442602a 	ori	v0,v0,0x602a
9fc00a1c:	3c038003 	lui	v1,0x8003
9fc00a20:	3463602a 	ori	v1,v1,0x602a
9fc00a24:	3c04800d 	lui	a0,0x800d
9fc00a28:	3484602a 	ori	a0,a0,0x602a
9fc00a2c:	3c0547cd 	lui	a1,0x47cd
9fc00a30:	34a5f6da 	ori	a1,a1,0xf6da
9fc00a34:	24878c35 	addiu	a3,a0,-29643
9fc00a38:	ac828c32 	sw	v0,-29646(a0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n10_sh_ades_ex.S:20
9fc00a3c:	3c149fc0 	lui	s4,0x9fc0
9fc00a40:	26940a44 	addiu	s4,s4,2628
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n10_sh_ades_ex.S:21
9fc00a44:	a4858c35 	sh	a1,-29643(a0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n10_sh_ades_ex.S:22
9fc00a48:	165700a2 	bne	s2,s7,9fc00cd4 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n10_sh_ades_ex.S:23
9fc00a4c:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n10_sh_ades_ex.S:24
9fc00a50:	8c828c32 	lw	v0,-29646(a0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n10_sh_ades_ex.S:25
9fc00a54:	1443009f 	bne	v0,v1,9fc00cd4 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n10_sh_ades_ex.S:26
9fc00a58:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n10_sh_ades_ex.S:27
9fc00a5c:	40164000 	mfc0	s6,c0_badvaddr
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n10_sh_ades_ex.S:28
9fc00a60:	14f6009c 	bne	a3,s6,9fc00cd4 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n10_sh_ades_ex.S:29
9fc00a64:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n10_sh_ades_ex.S:31
9fc00a68:	24120005 	li	s2,5
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n10_sh_ades_ex.S:32
9fc00a6c:	3c026e9c 	lui	v0,0x6e9c
9fc00a70:	3442e24e 	ori	v0,v0,0xe24e
9fc00a74:	3c036e9c 	lui	v1,0x6e9c
9fc00a78:	3463e24e 	ori	v1,v1,0xe24e
9fc00a7c:	3c04800d 	lui	a0,0x800d
9fc00a80:	34842c08 	ori	a0,a0,0x2c08
9fc00a84:	3c056e9c 	lui	a1,0x6e9c
9fc00a88:	34a5e24e 	ori	a1,a1,0xe24e
9fc00a8c:	2487098b 	addiu	a3,a0,2443
9fc00a90:	ac820988 	sw	v0,2440(a0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n10_sh_ades_ex.S:33
9fc00a94:	3c149fc0 	lui	s4,0x9fc0
9fc00a98:	26940aa4 	addiu	s4,s4,2724
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n10_sh_ades_ex.S:34
9fc00a9c:	ad080004 	sw	t0,4(t0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n10_sh_ades_ex.S:35
9fc00aa0:	ad140004 	sw	s4,4(t0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n10_sh_ades_ex.S:36
9fc00aa4:	a485098b 	sh	a1,2443(a0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n10_sh_ades_ex.S:37
9fc00aa8:	ad140000 	sw	s4,0(t0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n10_sh_ades_ex.S:38
9fc00aac:	8d090004 	lw	t1,4(t0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n10_sh_ades_ex.S:39
9fc00ab0:	15340088 	bne	t1,s4,9fc00cd4 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n10_sh_ades_ex.S:40
9fc00ab4:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n10_sh_ades_ex.S:41
9fc00ab8:	16570086 	bne	s2,s7,9fc00cd4 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n10_sh_ades_ex.S:42
9fc00abc:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n10_sh_ades_ex.S:43
9fc00ac0:	8c820988 	lw	v0,2440(a0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n10_sh_ades_ex.S:44
9fc00ac4:	14430083 	bne	v0,v1,9fc00cd4 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n10_sh_ades_ex.S:45
9fc00ac8:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n10_sh_ades_ex.S:46
9fc00acc:	40164000 	mfc0	s6,c0_badvaddr
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n10_sh_ades_ex.S:47
9fc00ad0:	14f60080 	bne	a3,s6,9fc00cd4 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n10_sh_ades_ex.S:48
9fc00ad4:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n10_sh_ades_ex.S:49
9fc00ad8:	24120005 	li	s2,5
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n10_sh_ades_ex.S:50
9fc00adc:	ad120000 	sw	s2,0(t0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n10_sh_ades_ex.S:52
9fc00ae0:	24120005 	li	s2,5
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n10_sh_ades_ex.S:53
9fc00ae4:	3c02419f 	lui	v0,0x419f
9fc00ae8:	34429f3b 	ori	v0,v0,0x9f3b
9fc00aec:	3c03419f 	lui	v1,0x419f
9fc00af0:	34639f3b 	ori	v1,v1,0x9f3b
9fc00af4:	3c04800d 	lui	a0,0x800d
9fc00af8:	34841356 	ori	a0,a0,0x1356
9fc00afc:	3c05bb1a 	lui	a1,0xbb1a
9fc00b00:	34a5fce8 	ori	a1,a1,0xfce8
9fc00b04:	24871dd3 	addiu	a3,a0,7635
9fc00b08:	ac821dd2 	sw	v0,7634(a0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n10_sh_ades_ex.S:54
9fc00b0c:	3c149fc0 	lui	s4,0x9fc0
9fc00b10:	26940b1c 	addiu	s4,s4,2844
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n10_sh_ades_ex.S:55
9fc00b14:	01000011 	mthi	t0
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n10_sh_ades_ex.S:56
9fc00b18:	0110001b 	divu	zero,t0,s0
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n10_sh_ades_ex.S:57
9fc00b1c:	a4851dd3 	sh	a1,7635(a0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n10_sh_ades_ex.S:58
9fc00b20:	00004810 	mfhi	t1
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n10_sh_ades_ex.S:59
9fc00b24:	1128006b 	beq	t1,t0,9fc00cd4 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n10_sh_ades_ex.S:60
9fc00b28:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n10_sh_ades_ex.S:61
9fc00b2c:	16570069 	bne	s2,s7,9fc00cd4 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n10_sh_ades_ex.S:62
9fc00b30:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n10_sh_ades_ex.S:63
9fc00b34:	8c821dd2 	lw	v0,7634(a0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n10_sh_ades_ex.S:64
9fc00b38:	14430066 	bne	v0,v1,9fc00cd4 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n10_sh_ades_ex.S:65
9fc00b3c:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n10_sh_ades_ex.S:66
9fc00b40:	40164000 	mfc0	s6,c0_badvaddr
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n10_sh_ades_ex.S:67
9fc00b44:	14f60063 	bne	a3,s6,9fc00cd4 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n10_sh_ades_ex.S:68
9fc00b48:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n10_sh_ades_ex.S:70
9fc00b4c:	24120005 	li	s2,5
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n10_sh_ades_ex.S:71
9fc00b50:	3c028003 	lui	v0,0x8003
9fc00b54:	34423729 	ori	v0,v0,0x3729
9fc00b58:	3c038003 	lui	v1,0x8003
9fc00b5c:	34633729 	ori	v1,v1,0x3729
9fc00b60:	3c04800d 	lui	a0,0x800d
9fc00b64:	3484372c 	ori	a0,a0,0x372c
9fc00b68:	3c05190a 	lui	a1,0x190a
9fc00b6c:	34a565ca 	ori	a1,a1,0x65ca
9fc00b70:	248786f1 	addiu	a3,a0,-30991
9fc00b74:	ac8286f0 	sw	v0,-30992(a0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n10_sh_ades_ex.S:72
9fc00b78:	3c149fc0 	lui	s4,0x9fc0
9fc00b7c:	26940b80 	addiu	s4,s4,2944
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n10_sh_ades_ex.S:73
9fc00b80:	a48586f1 	sh	a1,-30991(a0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n10_sh_ades_ex.S:74
9fc00b84:	0208001b 	divu	zero,s0,t0
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n10_sh_ades_ex.S:75
9fc00b88:	16570052 	bne	s2,s7,9fc00cd4 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n10_sh_ades_ex.S:76
9fc00b8c:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n10_sh_ades_ex.S:77
9fc00b90:	8c8286f0 	lw	v0,-30992(a0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n10_sh_ades_ex.S:78
9fc00b94:	1443004f 	bne	v0,v1,9fc00cd4 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n10_sh_ades_ex.S:79
9fc00b98:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n10_sh_ades_ex.S:80
9fc00b9c:	40164000 	mfc0	s6,c0_badvaddr
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n10_sh_ades_ex.S:81
9fc00ba0:	14f6004c 	bne	a3,s6,9fc00cd4 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n10_sh_ades_ex.S:82
9fc00ba4:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n10_sh_ades_ex.S:84
9fc00ba8:	24120005 	li	s2,5
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n10_sh_ades_ex.S:85
9fc00bac:	3c028003 	lui	v0,0x8003
9fc00bb0:	34421ff3 	ori	v0,v0,0x1ff3
9fc00bb4:	3c038003 	lui	v1,0x8003
9fc00bb8:	34631ff3 	ori	v1,v1,0x1ff3
9fc00bbc:	3c04800d 	lui	a0,0x800d
9fc00bc0:	34841ff0 	ori	a0,a0,0x1ff0
9fc00bc4:	3c059fcc 	lui	a1,0x9fcc
9fc00bc8:	34a54ca0 	ori	a1,a1,0x4ca0
9fc00bcc:	2487b663 	addiu	a3,a0,-18845
9fc00bd0:	ac82b660 	sw	v0,-18848(a0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n10_sh_ades_ex.S:86
9fc00bd4:	3c149fc0 	lui	s4,0x9fc0
9fc00bd8:	26940be4 	addiu	s4,s4,3044
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n10_sh_ades_ex.S:87
9fc00bdc:	01000013 	mtlo	t0
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n10_sh_ades_ex.S:88
9fc00be0:	01100019 	multu	t0,s0
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n10_sh_ades_ex.S:89
9fc00be4:	a485b663 	sh	a1,-18845(a0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n10_sh_ades_ex.S:90
9fc00be8:	00004810 	mfhi	t1
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n10_sh_ades_ex.S:91
9fc00bec:	11280039 	beq	t1,t0,9fc00cd4 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n10_sh_ades_ex.S:92
9fc00bf0:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n10_sh_ades_ex.S:93
9fc00bf4:	16570037 	bne	s2,s7,9fc00cd4 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n10_sh_ades_ex.S:94
9fc00bf8:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n10_sh_ades_ex.S:95
9fc00bfc:	8c82b660 	lw	v0,-18848(a0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n10_sh_ades_ex.S:96
9fc00c00:	14430034 	bne	v0,v1,9fc00cd4 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n10_sh_ades_ex.S:97
9fc00c04:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n10_sh_ades_ex.S:98
9fc00c08:	40164000 	mfc0	s6,c0_badvaddr
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n10_sh_ades_ex.S:99
9fc00c0c:	14f60031 	bne	a3,s6,9fc00cd4 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n10_sh_ades_ex.S:100
9fc00c10:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n10_sh_ades_ex.S:102
9fc00c14:	24120005 	li	s2,5
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n10_sh_ades_ex.S:103
9fc00c18:	3c0273b3 	lui	v0,0x73b3
9fc00c1c:	34425a2b 	ori	v0,v0,0x5a2b
9fc00c20:	3c0373b3 	lui	v1,0x73b3
9fc00c24:	34635a2b 	ori	v1,v1,0x5a2b
9fc00c28:	3c04800d 	lui	a0,0x800d
9fc00c2c:	3484351b 	ori	a0,a0,0x351b
9fc00c30:	3c05bd6f 	lui	a1,0xbd6f
9fc00c34:	34a5420a 	ori	a1,a1,0x420a
9fc00c38:	248764f2 	addiu	a3,a0,25842
9fc00c3c:	ac8264f1 	sw	v0,25841(a0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n10_sh_ades_ex.S:104
9fc00c40:	3c149fc0 	lui	s4,0x9fc0
9fc00c44:	26940c48 	addiu	s4,s4,3144
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n10_sh_ades_ex.S:105
9fc00c48:	a48564f2 	sh	a1,25842(a0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n10_sh_ades_ex.S:106
9fc00c4c:	01120019 	multu	t0,s2
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n10_sh_ades_ex.S:107
9fc00c50:	16570020 	bne	s2,s7,9fc00cd4 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n10_sh_ades_ex.S:108
9fc00c54:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n10_sh_ades_ex.S:109
9fc00c58:	8c8264f1 	lw	v0,25841(a0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n10_sh_ades_ex.S:110
9fc00c5c:	1443001d 	bne	v0,v1,9fc00cd4 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n10_sh_ades_ex.S:111
9fc00c60:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n10_sh_ades_ex.S:112
9fc00c64:	40164000 	mfc0	s6,c0_badvaddr
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n10_sh_ades_ex.S:113
9fc00c68:	14f6001a 	bne	a3,s6,9fc00cd4 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n10_sh_ades_ex.S:114
9fc00c6c:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n10_sh_ades_ex.S:116
9fc00c70:	24120005 	li	s2,5
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n10_sh_ades_ex.S:117
9fc00c74:	3c02a521 	lui	v0,0xa521
9fc00c78:	34420b0a 	ori	v0,v0,0xb0a
9fc00c7c:	3c03a521 	lui	v1,0xa521
9fc00c80:	34630b0a 	ori	v1,v1,0xb0a
9fc00c84:	3c04800d 	lui	a0,0x800d
9fc00c88:	348463d7 	ori	a0,a0,0x63d7
9fc00c8c:	3c0500e9 	lui	a1,0xe9
9fc00c90:	34a55990 	ori	a1,a1,0x5990
9fc00c94:	24877fc6 	addiu	a3,a0,32710
9fc00c98:	ac827fc5 	sw	v0,32709(a0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n10_sh_ades_ex.S:118
9fc00c9c:	3c149fc0 	lui	s4,0x9fc0
9fc00ca0:	26940ca8 	addiu	s4,s4,3240
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n10_sh_ades_ex.S:119
9fc00ca4:	40927000 	mtc0	s2,c0_epc
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n10_sh_ades_ex.S:120
9fc00ca8:	a4857fc6 	sh	a1,32710(a0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n10_sh_ades_ex.S:121
9fc00cac:	40887000 	mtc0	t0,c0_epc
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n10_sh_ades_ex.S:122
9fc00cb0:	16570008 	bne	s2,s7,9fc00cd4 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n10_sh_ades_ex.S:123
9fc00cb4:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n10_sh_ades_ex.S:124
9fc00cb8:	8c827fc5 	lw	v0,32709(a0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n10_sh_ades_ex.S:125
9fc00cbc:	14430005 	bne	v0,v1,9fc00cd4 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n10_sh_ades_ex.S:126
9fc00cc0:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n10_sh_ades_ex.S:127
9fc00cc4:	40164000 	mfc0	s6,c0_badvaddr
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n10_sh_ades_ex.S:128
9fc00cc8:	14f60002 	bne	a3,s6,9fc00cd4 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n10_sh_ades_ex.S:129
9fc00ccc:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n10_sh_ades_ex.S:131
9fc00cd0:	26730001 	addiu	s3,s3,1

9fc00cd4 <inst_error>:
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n10_sh_ades_ex.S:134
9fc00cd4:	00104e00 	sll	t1,s0,0x18
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n10_sh_ades_ex.S:135
9fc00cd8:	01334025 	or	t0,t1,s3
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n10_sh_ades_ex.S:136
9fc00cdc:	ae280000 	sw	t0,0(s1)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n10_sh_ades_ex.S:137
9fc00ce0:	03e00008 	jr	ra
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n10_sh_ades_ex.S:138
9fc00ce4:	00000000 	nop
	...

9fc00cf0 <n11_ft_adel_ex_test>:
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n11_ft_adel_ex.S:7
9fc00cf0:	26100001 	addiu	s0,s0,1
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n11_ft_adel_ex.S:8
9fc00cf4:	3c08800d 	lui	t0,0x800d
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n11_ft_adel_ex.S:9
9fc00cf8:	24120006 	li	s2,6
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n11_ft_adel_ex.S:10
9fc00cfc:	ad120000 	sw	s2,0(t0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n11_ft_adel_ex.S:12
9fc00d00:	40805800 	mtc0	zero,c0_compare
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n11_ft_adel_ex.S:13
9fc00d04:	3c170040 	lui	s7,0x40
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n11_ft_adel_ex.S:14
9fc00d08:	40976000 	mtc0	s7,c0_status
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n11_ft_adel_ex.S:15
9fc00d0c:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n11_ft_adel_ex.S:16
9fc00d10:	3c170006 	lui	s7,0x6
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n11_ft_adel_ex.S:19
9fc00d14:	3c14b27f 	lui	s4,0xb27f
9fc00d18:	36949789 	ori	s4,s4,0x9789
9fc00d1c:	3c07b27f 	lui	a3,0xb27f
9fc00d20:	34e79789 	ori	a3,a3,0x9789
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n11_ft_adel_ex.S:20
9fc00d24:	3c159fc0 	lui	s5,0x9fc0
9fc00d28:	26b50d30 	addiu	s5,s5,3376
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n11_ft_adel_ex.S:21
9fc00d2c:	02800008 	jr	s4
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n11_ft_adel_ex.S:22
9fc00d30:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n11_ft_adel_ex.S:23
9fc00d34:	16570072 	bne	s2,s7,9fc00f00 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n11_ft_adel_ex.S:24
9fc00d38:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n11_ft_adel_ex.S:25
9fc00d3c:	40164000 	mfc0	s6,c0_badvaddr
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n11_ft_adel_ex.S:26
9fc00d40:	14f6006f 	bne	a3,s6,9fc00f00 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n11_ft_adel_ex.S:27
9fc00d44:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n11_ft_adel_ex.S:29
9fc00d48:	24120006 	li	s2,6
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n11_ft_adel_ex.S:30
9fc00d4c:	3c14a101 	lui	s4,0xa101
9fc00d50:	3694bbed 	ori	s4,s4,0xbbed
9fc00d54:	3c07a101 	lui	a3,0xa101
9fc00d58:	34e7bbed 	ori	a3,a3,0xbbed
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n11_ft_adel_ex.S:31
9fc00d5c:	40947000 	mtc0	s4,c0_epc
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n11_ft_adel_ex.S:32
9fc00d60:	3c159fc0 	lui	s5,0x9fc0
9fc00d64:	26b50d70 	addiu	s5,s5,3440
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n11_ft_adel_ex.S:33
9fc00d68:	ad080004 	sw	t0,4(t0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n11_ft_adel_ex.S:34
9fc00d6c:	ad140004 	sw	s4,4(t0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n11_ft_adel_ex.S:36
9fc00d70:	42000018 	eret
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n11_ft_adel_ex.S:38
9fc00d74:	ad140000 	sw	s4,0(t0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n11_ft_adel_ex.S:39
9fc00d78:	8d090004 	lw	t1,4(t0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n11_ft_adel_ex.S:40
9fc00d7c:	15340060 	bne	t1,s4,9fc00f00 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n11_ft_adel_ex.S:41
9fc00d80:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n11_ft_adel_ex.S:42
9fc00d84:	1657005e 	bne	s2,s7,9fc00f00 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n11_ft_adel_ex.S:43
9fc00d88:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n11_ft_adel_ex.S:44
9fc00d8c:	40164000 	mfc0	s6,c0_badvaddr
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n11_ft_adel_ex.S:45
9fc00d90:	14f6005b 	bne	a3,s6,9fc00f00 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n11_ft_adel_ex.S:46
9fc00d94:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n11_ft_adel_ex.S:47
9fc00d98:	24120006 	li	s2,6
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n11_ft_adel_ex.S:48
9fc00d9c:	ad120000 	sw	s2,0(t0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n11_ft_adel_ex.S:50
9fc00da0:	24120006 	li	s2,6
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n11_ft_adel_ex.S:51
9fc00da4:	3c148479 	lui	s4,0x8479
9fc00da8:	36940977 	ori	s4,s4,0x977
9fc00dac:	3c078479 	lui	a3,0x8479
9fc00db0:	34e70977 	ori	a3,a3,0x977
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n11_ft_adel_ex.S:52
9fc00db4:	40947000 	mtc0	s4,c0_epc
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n11_ft_adel_ex.S:53
9fc00db8:	3c159fc0 	lui	s5,0x9fc0
9fc00dbc:	26b50dc8 	addiu	s5,s5,3528
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n11_ft_adel_ex.S:54
9fc00dc0:	01000011 	mthi	t0
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n11_ft_adel_ex.S:55
9fc00dc4:	0110001b 	divu	zero,t0,s0
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n11_ft_adel_ex.S:57
9fc00dc8:	42000018 	eret
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n11_ft_adel_ex.S:59
9fc00dcc:	00004810 	mfhi	t1
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n11_ft_adel_ex.S:60
9fc00dd0:	1128004b 	beq	t1,t0,9fc00f00 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n11_ft_adel_ex.S:61
9fc00dd4:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n11_ft_adel_ex.S:62
9fc00dd8:	16570049 	bne	s2,s7,9fc00f00 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n11_ft_adel_ex.S:63
9fc00ddc:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n11_ft_adel_ex.S:64
9fc00de0:	40164000 	mfc0	s6,c0_badvaddr
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n11_ft_adel_ex.S:65
9fc00de4:	14f60046 	bne	a3,s6,9fc00f00 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n11_ft_adel_ex.S:66
9fc00de8:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n11_ft_adel_ex.S:68
9fc00dec:	24120006 	li	s2,6
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n11_ft_adel_ex.S:69
9fc00df0:	3c1492b0 	lui	s4,0x92b0
9fc00df4:	3694a2c3 	ori	s4,s4,0xa2c3
9fc00df8:	3c0792b0 	lui	a3,0x92b0
9fc00dfc:	34e7a2c3 	ori	a3,a3,0xa2c3
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n11_ft_adel_ex.S:70
9fc00e00:	3c159fc0 	lui	s5,0x9fc0
9fc00e04:	26b50e0c 	addiu	s5,s5,3596
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n11_ft_adel_ex.S:71
9fc00e08:	02800008 	jr	s4
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n11_ft_adel_ex.S:72
9fc00e0c:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n11_ft_adel_ex.S:73
9fc00e10:	0208001b 	divu	zero,s0,t0
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n11_ft_adel_ex.S:74
9fc00e14:	1657003a 	bne	s2,s7,9fc00f00 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n11_ft_adel_ex.S:75
9fc00e18:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n11_ft_adel_ex.S:76
9fc00e1c:	40164000 	mfc0	s6,c0_badvaddr
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n11_ft_adel_ex.S:77
9fc00e20:	14f60037 	bne	a3,s6,9fc00f00 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n11_ft_adel_ex.S:78
9fc00e24:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n11_ft_adel_ex.S:80
9fc00e28:	24120006 	li	s2,6
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n11_ft_adel_ex.S:81
9fc00e2c:	3c14af9e 	lui	s4,0xaf9e
9fc00e30:	3694dafa 	ori	s4,s4,0xdafa
9fc00e34:	3c07af9e 	lui	a3,0xaf9e
9fc00e38:	34e7dafa 	ori	a3,a3,0xdafa
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n11_ft_adel_ex.S:82
9fc00e3c:	40947000 	mtc0	s4,c0_epc
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n11_ft_adel_ex.S:83
9fc00e40:	3c159fc0 	lui	s5,0x9fc0
9fc00e44:	26b50e50 	addiu	s5,s5,3664
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n11_ft_adel_ex.S:84
9fc00e48:	01000013 	mtlo	t0
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n11_ft_adel_ex.S:85
9fc00e4c:	01100019 	multu	t0,s0
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n11_ft_adel_ex.S:87
9fc00e50:	42000018 	eret
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n11_ft_adel_ex.S:89
9fc00e54:	00004810 	mfhi	t1
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n11_ft_adel_ex.S:90
9fc00e58:	11280029 	beq	t1,t0,9fc00f00 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n11_ft_adel_ex.S:91
9fc00e5c:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n11_ft_adel_ex.S:92
9fc00e60:	16570027 	bne	s2,s7,9fc00f00 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n11_ft_adel_ex.S:93
9fc00e64:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n11_ft_adel_ex.S:94
9fc00e68:	40164000 	mfc0	s6,c0_badvaddr
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n11_ft_adel_ex.S:95
9fc00e6c:	14f60024 	bne	a3,s6,9fc00f00 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n11_ft_adel_ex.S:96
9fc00e70:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n11_ft_adel_ex.S:98
9fc00e74:	24120006 	li	s2,6
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n11_ft_adel_ex.S:99
9fc00e78:	3c14b088 	lui	s4,0xb088
9fc00e7c:	3694f329 	ori	s4,s4,0xf329
9fc00e80:	3c07b088 	lui	a3,0xb088
9fc00e84:	34e7f329 	ori	a3,a3,0xf329
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n11_ft_adel_ex.S:100
9fc00e88:	3c159fc0 	lui	s5,0x9fc0
9fc00e8c:	26b50e94 	addiu	s5,s5,3732
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n11_ft_adel_ex.S:101
9fc00e90:	02800008 	jr	s4
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n11_ft_adel_ex.S:102
9fc00e94:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n11_ft_adel_ex.S:103
9fc00e98:	01120019 	multu	t0,s2
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n11_ft_adel_ex.S:104
9fc00e9c:	16570018 	bne	s2,s7,9fc00f00 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n11_ft_adel_ex.S:105
9fc00ea0:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n11_ft_adel_ex.S:106
9fc00ea4:	14430016 	bne	v0,v1,9fc00f00 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n11_ft_adel_ex.S:107
9fc00ea8:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n11_ft_adel_ex.S:108
9fc00eac:	40164000 	mfc0	s6,c0_badvaddr
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n11_ft_adel_ex.S:109
9fc00eb0:	14f60013 	bne	a3,s6,9fc00f00 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n11_ft_adel_ex.S:110
9fc00eb4:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n11_ft_adel_ex.S:112
9fc00eb8:	24120006 	li	s2,6
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n11_ft_adel_ex.S:113
9fc00ebc:	3c14827f 	lui	s4,0x827f
9fc00ec0:	369497ab 	ori	s4,s4,0x97ab
9fc00ec4:	3c07827f 	lui	a3,0x827f
9fc00ec8:	34e797ab 	ori	a3,a3,0x97ab
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n11_ft_adel_ex.S:114
9fc00ecc:	40947000 	mtc0	s4,c0_epc
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n11_ft_adel_ex.S:115
9fc00ed0:	3c159fc0 	lui	s5,0x9fc0
9fc00ed4:	26b50ed8 	addiu	s5,s5,3800
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n11_ft_adel_ex.S:117
9fc00ed8:	42000018 	eret
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n11_ft_adel_ex.S:119
9fc00edc:	40887000 	mtc0	t0,c0_epc
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n11_ft_adel_ex.S:120
9fc00ee0:	16570007 	bne	s2,s7,9fc00f00 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n11_ft_adel_ex.S:121
9fc00ee4:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n11_ft_adel_ex.S:122
9fc00ee8:	14430005 	bne	v0,v1,9fc00f00 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n11_ft_adel_ex.S:123
9fc00eec:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n11_ft_adel_ex.S:124
9fc00ef0:	40164000 	mfc0	s6,c0_badvaddr
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n11_ft_adel_ex.S:125
9fc00ef4:	14f60002 	bne	a3,s6,9fc00f00 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n11_ft_adel_ex.S:126
9fc00ef8:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n11_ft_adel_ex.S:128
9fc00efc:	26730001 	addiu	s3,s3,1

9fc00f00 <inst_error>:
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n11_ft_adel_ex.S:131
9fc00f00:	00104e00 	sll	t1,s0,0x18
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n11_ft_adel_ex.S:132
9fc00f04:	01334025 	or	t0,t1,s3
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n11_ft_adel_ex.S:133
9fc00f08:	ae280000 	sw	t0,0(s1)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n11_ft_adel_ex.S:134
9fc00f0c:	03e00008 	jr	ra
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n11_ft_adel_ex.S:135
9fc00f10:	00000000 	nop
	...

9fc00f20 <n12_ri_ex_test>:
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n12_ri_ex.S:7
9fc00f20:	26100001 	addiu	s0,s0,1
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n12_ri_ex.S:8
9fc00f24:	3c08800d 	lui	t0,0x800d
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n12_ri_ex.S:9
9fc00f28:	24120007 	li	s2,7
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n12_ri_ex.S:10
9fc00f2c:	ad120000 	sw	s2,0(t0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n12_ri_ex.S:12
9fc00f30:	40805800 	mtc0	zero,c0_compare
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n12_ri_ex.S:13
9fc00f34:	3c170040 	lui	s7,0x40
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n12_ri_ex.S:14
9fc00f38:	40976000 	mtc0	s7,c0_status
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n12_ri_ex.S:15
9fc00f3c:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n12_ri_ex.S:16
9fc00f40:	3c170007 	lui	s7,0x7
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n12_ri_ex.S:19
9fc00f44:	3c149fc0 	lui	s4,0x9fc0
9fc00f48:	26940f4c 	addiu	s4,s4,3916
9fc00f4c:	700000fe 	0x700000fe
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n12_ri_ex.S:21
9fc00f50:	16570040 	bne	s2,s7,9fc01054 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n12_ri_ex.S:22
9fc00f54:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n12_ri_ex.S:24
9fc00f58:	24120007 	li	s2,7
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n12_ri_ex.S:25
9fc00f5c:	3c149fc0 	lui	s4,0x9fc0
9fc00f60:	26940f6c 	addiu	s4,s4,3948
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n12_ri_ex.S:26
9fc00f64:	ad080004 	sw	t0,4(t0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n12_ri_ex.S:27
9fc00f68:	ad140004 	sw	s4,4(t0)
9fc00f6c:	7a22db9c 	0x7a22db9c
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n12_ri_ex.S:29
9fc00f70:	ad140000 	sw	s4,0(t0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n12_ri_ex.S:30
9fc00f74:	8d090004 	lw	t1,4(t0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n12_ri_ex.S:31
9fc00f78:	15340036 	bne	t1,s4,9fc01054 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n12_ri_ex.S:32
9fc00f7c:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n12_ri_ex.S:33
9fc00f80:	16570034 	bne	s2,s7,9fc01054 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n12_ri_ex.S:34
9fc00f84:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n12_ri_ex.S:35
9fc00f88:	24120007 	li	s2,7
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n12_ri_ex.S:36
9fc00f8c:	ad120000 	sw	s2,0(t0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n12_ri_ex.S:38
9fc00f90:	24120007 	li	s2,7
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n12_ri_ex.S:39
9fc00f94:	3c149fc0 	lui	s4,0x9fc0
9fc00f98:	26940fa4 	addiu	s4,s4,4004
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n12_ri_ex.S:40
9fc00f9c:	01000011 	mthi	t0
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n12_ri_ex.S:41
9fc00fa0:	0110001b 	divu	zero,t0,s0
9fc00fa4:	6f76e210 	0x6f76e210
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n12_ri_ex.S:43
9fc00fa8:	00004810 	mfhi	t1
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n12_ri_ex.S:44
9fc00fac:	11280029 	beq	t1,t0,9fc01054 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n12_ri_ex.S:45
9fc00fb0:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n12_ri_ex.S:46
9fc00fb4:	16570027 	bne	s2,s7,9fc01054 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n12_ri_ex.S:47
9fc00fb8:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n12_ri_ex.S:49
9fc00fbc:	24120007 	li	s2,7
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n12_ri_ex.S:50
9fc00fc0:	3c149fc0 	lui	s4,0x9fc0
9fc00fc4:	26940fc8 	addiu	s4,s4,4040
9fc00fc8:	5a8d78ce 	0x5a8d78ce
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n12_ri_ex.S:52
9fc00fcc:	0208001b 	divu	zero,s0,t0
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n12_ri_ex.S:53
9fc00fd0:	16570020 	bne	s2,s7,9fc01054 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n12_ri_ex.S:54
9fc00fd4:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n12_ri_ex.S:56
9fc00fd8:	24120007 	li	s2,7
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n12_ri_ex.S:57
9fc00fdc:	3c149fc0 	lui	s4,0x9fc0
9fc00fe0:	26940fec 	addiu	s4,s4,4076
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n12_ri_ex.S:58
9fc00fe4:	01000013 	mtlo	t0
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n12_ri_ex.S:59
9fc00fe8:	01100019 	multu	t0,s0
9fc00fec:	7bd1ac60 	0x7bd1ac60
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n12_ri_ex.S:61
9fc00ff0:	00004810 	mfhi	t1
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n12_ri_ex.S:62
9fc00ff4:	11280017 	beq	t1,t0,9fc01054 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n12_ri_ex.S:63
9fc00ff8:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n12_ri_ex.S:64
9fc00ffc:	16570015 	bne	s2,s7,9fc01054 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n12_ri_ex.S:65
9fc01000:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n12_ri_ex.S:67
9fc01004:	24120007 	li	s2,7
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n12_ri_ex.S:68
9fc01008:	3c149fc0 	lui	s4,0x9fc0
9fc0100c:	26941010 	addiu	s4,s4,4112
9fc01010:	7e6265cc 	0x7e6265cc
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n12_ri_ex.S:70
9fc01014:	01120019 	multu	t0,s2
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n12_ri_ex.S:71
9fc01018:	1657000e 	bne	s2,s7,9fc01054 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n12_ri_ex.S:72
9fc0101c:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n12_ri_ex.S:73
9fc01020:	1443000c 	bne	v0,v1,9fc01054 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n12_ri_ex.S:74
9fc01024:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n12_ri_ex.S:76
9fc01028:	24120007 	li	s2,7
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n12_ri_ex.S:77
9fc0102c:	3c149fc0 	lui	s4,0x9fc0
9fc01030:	26941038 	addiu	s4,s4,4152
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n12_ri_ex.S:78
9fc01034:	40927000 	mtc0	s2,c0_epc
9fc01038:	9fc55510 	0x9fc55510
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n12_ri_ex.S:80
9fc0103c:	40887000 	mtc0	t0,c0_epc
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n12_ri_ex.S:81
9fc01040:	16570004 	bne	s2,s7,9fc01054 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n12_ri_ex.S:82
9fc01044:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n12_ri_ex.S:83
9fc01048:	14430002 	bne	v0,v1,9fc01054 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n12_ri_ex.S:84
9fc0104c:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n12_ri_ex.S:86
9fc01050:	26730001 	addiu	s3,s3,1

9fc01054 <inst_error>:
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n12_ri_ex.S:89
9fc01054:	00104e00 	sll	t1,s0,0x18
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n12_ri_ex.S:90
9fc01058:	01334025 	or	t0,t1,s3
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n12_ri_ex.S:91
9fc0105c:	ae280000 	sw	t0,0(s1)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n12_ri_ex.S:92
9fc01060:	03e00008 	jr	ra
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n12_ri_ex.S:93
9fc01064:	00000000 	nop
	...

9fc01070 <n13_ti_ex_test>:
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n13_ti_ex.S:7
9fc01070:	26100001 	addiu	s0,s0,1
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n13_ti_ex.S:8
9fc01074:	3c08800d 	lui	t0,0x800d
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n13_ti_ex.S:9
9fc01078:	24120008 	li	s2,8
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n13_ti_ex.S:10
9fc0107c:	ad120000 	sw	s2,0(t0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n13_ti_ex.S:12
9fc01080:	40805800 	mtc0	zero,c0_compare
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n13_ti_ex.S:13
9fc01084:	3c170040 	lui	s7,0x40
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n13_ti_ex.S:14
9fc01088:	40976000 	mtc0	s7,c0_status
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n13_ti_ex.S:15
9fc0108c:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n13_ti_ex.S:16
9fc01090:	3c170008 	lui	s7,0x8
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n13_ti_ex.S:19
9fc01094:	3c149fc0 	lui	s4,0x9fc0
9fc01098:	269410cc 	addiu	s4,s4,4300
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n13_ti_ex.S:20
9fc0109c:	3c070040 	lui	a3,0x40
9fc010a0:	34e7ff01 	ori	a3,a3,0xff01
9fc010a4:	3c0345df 	lui	v1,0x45df
9fc010a8:	34630200 	ori	v1,v1,0x200
9fc010ac:	2462000a 	addiu	v0,v1,10
9fc010b0:	40824800 	mtc0	v0,c0_count
9fc010b4:	40835800 	mtc0	v1,c0_compare
9fc010b8:	3c0245df 	lui	v0,0x45df
9fc010bc:	344200e0 	ori	v0,v0,0xe0
9fc010c0:	40876000 	mtc0	a3,c0_status
9fc010c4:	00000000 	nop
9fc010c8:	40824800 	mtc0	v0,c0_count
9fc010cc:	1000ffff 	b	9fc010cc <n13_ti_ex_test+0x5c>
9fc010d0:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n13_ti_ex.S:21
9fc010d4:	16570088 	bne	s2,s7,9fc012f8 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n13_ti_ex.S:22
9fc010d8:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n13_ti_ex.S:24
9fc010dc:	24120008 	li	s2,8
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n13_ti_ex.S:25
9fc010e0:	3c149fc0 	lui	s4,0x9fc0
9fc010e4:	26941120 	addiu	s4,s4,4384
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n13_ti_ex.S:26
9fc010e8:	ad080004 	sw	t0,4(t0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n13_ti_ex.S:27
9fc010ec:	ad140004 	sw	s4,4(t0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n13_ti_ex.S:28
9fc010f0:	3c070040 	lui	a3,0x40
9fc010f4:	34e7ff01 	ori	a3,a3,0xff01
9fc010f8:	3c03b70e 	lui	v1,0xb70e
9fc010fc:	34633e4b 	ori	v1,v1,0x3e4b
9fc01100:	2462000a 	addiu	v0,v1,10
9fc01104:	40824800 	mtc0	v0,c0_count
9fc01108:	40835800 	mtc0	v1,c0_compare
9fc0110c:	3c02b70e 	lui	v0,0xb70e
9fc01110:	34423e49 	ori	v0,v0,0x3e49
9fc01114:	40876000 	mtc0	a3,c0_status
9fc01118:	00000000 	nop
9fc0111c:	40824800 	mtc0	v0,c0_count
9fc01120:	1000ffff 	b	9fc01120 <n13_ti_ex_test+0xb0>
9fc01124:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n13_ti_ex.S:29
9fc01128:	ad140000 	sw	s4,0(t0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n13_ti_ex.S:30
9fc0112c:	8d090004 	lw	t1,4(t0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n13_ti_ex.S:31
9fc01130:	15340071 	bne	t1,s4,9fc012f8 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n13_ti_ex.S:32
9fc01134:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n13_ti_ex.S:33
9fc01138:	1657006f 	bne	s2,s7,9fc012f8 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n13_ti_ex.S:34
9fc0113c:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n13_ti_ex.S:35
9fc01140:	24120008 	li	s2,8
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n13_ti_ex.S:36
9fc01144:	ad120000 	sw	s2,0(t0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n13_ti_ex.S:38
9fc01148:	24120008 	li	s2,8
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n13_ti_ex.S:39
9fc0114c:	3c149fc0 	lui	s4,0x9fc0
9fc01150:	26941184 	addiu	s4,s4,4484
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n13_ti_ex.S:40
9fc01154:	01000011 	mthi	t0
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n13_ti_ex.S:41
9fc01158:	0110001b 	divu	zero,t0,s0
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n13_ti_ex.S:42
9fc0115c:	3c070040 	lui	a3,0x40
9fc01160:	34e7ff01 	ori	a3,a3,0xff01
9fc01164:	24030022 	li	v1,34
9fc01168:	2462000a 	addiu	v0,v1,10
9fc0116c:	40824800 	mtc0	v0,c0_count
9fc01170:	40835800 	mtc0	v1,c0_compare
9fc01174:	2402fffc 	li	v0,-4
9fc01178:	40876000 	mtc0	a3,c0_status
9fc0117c:	00000000 	nop
9fc01180:	40824800 	mtc0	v0,c0_count
9fc01184:	1000ffff 	b	9fc01184 <n13_ti_ex_test+0x114>
9fc01188:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n13_ti_ex.S:43
9fc0118c:	00004810 	mfhi	t1
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n13_ti_ex.S:44
9fc01190:	11280059 	beq	t1,t0,9fc012f8 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n13_ti_ex.S:45
9fc01194:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n13_ti_ex.S:46
9fc01198:	16570057 	bne	s2,s7,9fc012f8 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n13_ti_ex.S:47
9fc0119c:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n13_ti_ex.S:49
9fc011a0:	24120008 	li	s2,8
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n13_ti_ex.S:50
9fc011a4:	3c149fc0 	lui	s4,0x9fc0
9fc011a8:	269411dc 	addiu	s4,s4,4572
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n13_ti_ex.S:51
9fc011ac:	3c070040 	lui	a3,0x40
9fc011b0:	34e7ff01 	ori	a3,a3,0xff01
9fc011b4:	3c035a8d 	lui	v1,0x5a8d
9fc011b8:	34637945 	ori	v1,v1,0x7945
9fc011bc:	2462000a 	addiu	v0,v1,10
9fc011c0:	40824800 	mtc0	v0,c0_count
9fc011c4:	40835800 	mtc0	v1,c0_compare
9fc011c8:	3c025a8d 	lui	v0,0x5a8d
9fc011cc:	344278ce 	ori	v0,v0,0x78ce
9fc011d0:	40876000 	mtc0	a3,c0_status
9fc011d4:	00000000 	nop
9fc011d8:	40824800 	mtc0	v0,c0_count
9fc011dc:	1000ffff 	b	9fc011dc <n13_ti_ex_test+0x16c>
9fc011e0:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n13_ti_ex.S:52
9fc011e4:	0208001b 	divu	zero,s0,t0
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n13_ti_ex.S:53
9fc011e8:	16570043 	bne	s2,s7,9fc012f8 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n13_ti_ex.S:54
9fc011ec:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n13_ti_ex.S:56
9fc011f0:	24120008 	li	s2,8
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n13_ti_ex.S:57
9fc011f4:	3c149fc0 	lui	s4,0x9fc0
9fc011f8:	26941234 	addiu	s4,s4,4660
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n13_ti_ex.S:58
9fc011fc:	01000013 	mtlo	t0
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n13_ti_ex.S:59
9fc01200:	01100019 	multu	t0,s0
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n13_ti_ex.S:60
9fc01204:	3c070040 	lui	a3,0x40
9fc01208:	34e7ff01 	ori	a3,a3,0xff01
9fc0120c:	3c037bd1 	lui	v1,0x7bd1
9fc01210:	3463ac71 	ori	v1,v1,0xac71
9fc01214:	2462000a 	addiu	v0,v1,10
9fc01218:	40824800 	mtc0	v0,c0_count
9fc0121c:	40835800 	mtc0	v1,c0_compare
9fc01220:	3c027bd1 	lui	v0,0x7bd1
9fc01224:	3442ac60 	ori	v0,v0,0xac60
9fc01228:	40876000 	mtc0	a3,c0_status
9fc0122c:	00000000 	nop
9fc01230:	40824800 	mtc0	v0,c0_count
9fc01234:	1000ffff 	b	9fc01234 <n13_ti_ex_test+0x1c4>
9fc01238:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n13_ti_ex.S:61
9fc0123c:	00004810 	mfhi	t1
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n13_ti_ex.S:62
9fc01240:	1128002d 	beq	t1,t0,9fc012f8 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n13_ti_ex.S:63
9fc01244:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n13_ti_ex.S:64
9fc01248:	1657002b 	bne	s2,s7,9fc012f8 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n13_ti_ex.S:65
9fc0124c:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n13_ti_ex.S:67
9fc01250:	24120008 	li	s2,8
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n13_ti_ex.S:68
9fc01254:	3c149fc0 	lui	s4,0x9fc0
9fc01258:	2694128c 	addiu	s4,s4,4748
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n13_ti_ex.S:69
9fc0125c:	3c070040 	lui	a3,0x40
9fc01260:	34e7ff01 	ori	a3,a3,0xff01
9fc01264:	3c037e62 	lui	v1,0x7e62
9fc01268:	346365cd 	ori	v1,v1,0x65cd
9fc0126c:	2462000a 	addiu	v0,v1,10
9fc01270:	40824800 	mtc0	v0,c0_count
9fc01274:	40835800 	mtc0	v1,c0_compare
9fc01278:	3c027e62 	lui	v0,0x7e62
9fc0127c:	344265cc 	ori	v0,v0,0x65cc
9fc01280:	40876000 	mtc0	a3,c0_status
9fc01284:	00000000 	nop
9fc01288:	40824800 	mtc0	v0,c0_count
9fc0128c:	1000ffff 	b	9fc0128c <n13_ti_ex_test+0x21c>
9fc01290:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n13_ti_ex.S:70
9fc01294:	01120019 	multu	t0,s2
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n13_ti_ex.S:71
9fc01298:	16570017 	bne	s2,s7,9fc012f8 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n13_ti_ex.S:72
9fc0129c:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n13_ti_ex.S:74
9fc012a0:	24120008 	li	s2,8
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n13_ti_ex.S:75
9fc012a4:	3c149fc0 	lui	s4,0x9fc0
9fc012a8:	269412e0 	addiu	s4,s4,4832
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n13_ti_ex.S:76
9fc012ac:	40927000 	mtc0	s2,c0_epc
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n13_ti_ex.S:77
9fc012b0:	3c070040 	lui	a3,0x40
9fc012b4:	34e7ff01 	ori	a3,a3,0xff01
9fc012b8:	3c039fc5 	lui	v1,0x9fc5
9fc012bc:	34635510 	ori	v1,v1,0x5510
9fc012c0:	2462000a 	addiu	v0,v1,10
9fc012c4:	40824800 	mtc0	v0,c0_count
9fc012c8:	40835800 	mtc0	v1,c0_compare
9fc012cc:	3c029fc5 	lui	v0,0x9fc5
9fc012d0:	34425510 	ori	v0,v0,0x5510
9fc012d4:	40876000 	mtc0	a3,c0_status
9fc012d8:	00000000 	nop
9fc012dc:	40824800 	mtc0	v0,c0_count
9fc012e0:	1000ffff 	b	9fc012e0 <n13_ti_ex_test+0x270>
9fc012e4:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n13_ti_ex.S:78
9fc012e8:	40887000 	mtc0	t0,c0_epc
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n13_ti_ex.S:79
9fc012ec:	16570002 	bne	s2,s7,9fc012f8 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n13_ti_ex.S:80
9fc012f0:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n13_ti_ex.S:82
9fc012f4:	26730001 	addiu	s3,s3,1

9fc012f8 <inst_error>:
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n13_ti_ex.S:85
9fc012f8:	00104e00 	sll	t1,s0,0x18
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n13_ti_ex.S:86
9fc012fc:	01334025 	or	t0,t1,s3
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n13_ti_ex.S:87
9fc01300:	ae280000 	sw	t0,0(s1)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n13_ti_ex.S:88
9fc01304:	03e00008 	jr	ra
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n13_ti_ex.S:89
9fc01308:	00000000 	nop
inst_error():
9fc0130c:	00000000 	nop

9fc01310 <n14_soft_int_ex_test>:
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n14_soft_int_ex.S:7
9fc01310:	26100001 	addiu	s0,s0,1
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n14_soft_int_ex.S:8
9fc01314:	3c08800d 	lui	t0,0x800d
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n14_soft_int_ex.S:9
9fc01318:	24120008 	li	s2,8
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n14_soft_int_ex.S:10
9fc0131c:	ad120000 	sw	s2,0(t0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n14_soft_int_ex.S:12
9fc01320:	40805800 	mtc0	zero,c0_compare
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n14_soft_int_ex.S:13
9fc01324:	3c170040 	lui	s7,0x40
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n14_soft_int_ex.S:14
9fc01328:	40976000 	mtc0	s7,c0_status
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n14_soft_int_ex.S:15
9fc0132c:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n14_soft_int_ex.S:16
9fc01330:	3c170008 	lui	s7,0x8
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n14_soft_int_ex.S:19
9fc01334:	3c149fc0 	lui	s4,0x9fc0
9fc01338:	26941364 	addiu	s4,s4,4964
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n14_soft_int_ex.S:20
9fc0133c:	3c070040 	lui	a3,0x40
9fc01340:	34e7ff01 	ori	a3,a3,0xff01
9fc01344:	2402ffff 	li	v0,-1
9fc01348:	3c03000f 	lui	v1,0xf
9fc0134c:	3463f2ff 	ori	v1,v1,0xf2ff
9fc01350:	40804800 	mtc0	zero,c0_count
9fc01354:	40825800 	mtc0	v0,c0_compare
9fc01358:	40876000 	mtc0	a3,c0_status
9fc0135c:	00000000 	nop
9fc01360:	40836800 	mtc0	v1,c0_cause
9fc01364:	1000ffff 	b	9fc01364 <n14_soft_int_ex_test+0x54>
9fc01368:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n14_soft_int_ex.S:21
9fc0136c:	16570078 	bne	s2,s7,9fc01550 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n14_soft_int_ex.S:22
9fc01370:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n14_soft_int_ex.S:24
9fc01374:	24120008 	li	s2,8
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n14_soft_int_ex.S:25
9fc01378:	3c149fc0 	lui	s4,0x9fc0
9fc0137c:	269413ac 	addiu	s4,s4,5036
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n14_soft_int_ex.S:26
9fc01380:	ad080004 	sw	t0,4(t0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n14_soft_int_ex.S:27
9fc01384:	ad140004 	sw	s4,4(t0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n14_soft_int_ex.S:28
9fc01388:	3c070040 	lui	a3,0x40
9fc0138c:	34e7ff01 	ori	a3,a3,0xff01
9fc01390:	2402ffff 	li	v0,-1
9fc01394:	3403f1ff 	li	v1,0xf1ff
9fc01398:	40804800 	mtc0	zero,c0_count
9fc0139c:	40825800 	mtc0	v0,c0_compare
9fc013a0:	40876000 	mtc0	a3,c0_status
9fc013a4:	00000000 	nop
9fc013a8:	40836800 	mtc0	v1,c0_cause
9fc013ac:	1000ffff 	b	9fc013ac <n14_soft_int_ex_test+0x9c>
9fc013b0:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n14_soft_int_ex.S:29
9fc013b4:	ad140000 	sw	s4,0(t0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n14_soft_int_ex.S:30
9fc013b8:	8d090004 	lw	t1,4(t0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n14_soft_int_ex.S:31
9fc013bc:	15340064 	bne	t1,s4,9fc01550 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n14_soft_int_ex.S:32
9fc013c0:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n14_soft_int_ex.S:33
9fc013c4:	16570062 	bne	s2,s7,9fc01550 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n14_soft_int_ex.S:34
9fc013c8:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n14_soft_int_ex.S:35
9fc013cc:	24120008 	li	s2,8
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n14_soft_int_ex.S:36
9fc013d0:	ad120000 	sw	s2,0(t0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n14_soft_int_ex.S:38
9fc013d4:	24120008 	li	s2,8
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n14_soft_int_ex.S:39
9fc013d8:	3c149fc0 	lui	s4,0x9fc0
9fc013dc:	2694140c 	addiu	s4,s4,5132
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n14_soft_int_ex.S:40
9fc013e0:	01000011 	mthi	t0
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n14_soft_int_ex.S:41
9fc013e4:	0110001b 	divu	zero,t0,s0
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n14_soft_int_ex.S:42
9fc013e8:	3c070040 	lui	a3,0x40
9fc013ec:	34e7ff01 	ori	a3,a3,0xff01
9fc013f0:	2402ffff 	li	v0,-1
9fc013f4:	24030100 	li	v1,256
9fc013f8:	40804800 	mtc0	zero,c0_count
9fc013fc:	40825800 	mtc0	v0,c0_compare
9fc01400:	40876000 	mtc0	a3,c0_status
9fc01404:	00000000 	nop
9fc01408:	40836800 	mtc0	v1,c0_cause
9fc0140c:	1000ffff 	b	9fc0140c <n14_soft_int_ex_test+0xfc>
9fc01410:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n14_soft_int_ex.S:43
9fc01414:	00004810 	mfhi	t1
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n14_soft_int_ex.S:44
9fc01418:	1128004d 	beq	t1,t0,9fc01550 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n14_soft_int_ex.S:45
9fc0141c:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n14_soft_int_ex.S:46
9fc01420:	1657004b 	bne	s2,s7,9fc01550 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n14_soft_int_ex.S:47
9fc01424:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n14_soft_int_ex.S:49
9fc01428:	24120008 	li	s2,8
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n14_soft_int_ex.S:50
9fc0142c:	3c149fc0 	lui	s4,0x9fc0
9fc01430:	26941458 	addiu	s4,s4,5208
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n14_soft_int_ex.S:51
9fc01434:	3c070040 	lui	a3,0x40
9fc01438:	34e7ff01 	ori	a3,a3,0xff01
9fc0143c:	2402ffff 	li	v0,-1
9fc01440:	24030200 	li	v1,512
9fc01444:	40804800 	mtc0	zero,c0_count
9fc01448:	40825800 	mtc0	v0,c0_compare
9fc0144c:	40876000 	mtc0	a3,c0_status
9fc01450:	00000000 	nop
9fc01454:	40836800 	mtc0	v1,c0_cause
9fc01458:	1000ffff 	b	9fc01458 <n14_soft_int_ex_test+0x148>
9fc0145c:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n14_soft_int_ex.S:52
9fc01460:	0208001b 	divu	zero,s0,t0
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n14_soft_int_ex.S:53
9fc01464:	1657003a 	bne	s2,s7,9fc01550 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n14_soft_int_ex.S:54
9fc01468:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n14_soft_int_ex.S:56
9fc0146c:	24120008 	li	s2,8
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n14_soft_int_ex.S:57
9fc01470:	3c149fc0 	lui	s4,0x9fc0
9fc01474:	269414a4 	addiu	s4,s4,5284
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n14_soft_int_ex.S:58
9fc01478:	01000013 	mtlo	t0
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n14_soft_int_ex.S:59
9fc0147c:	01100019 	multu	t0,s0
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n14_soft_int_ex.S:60
9fc01480:	3c070040 	lui	a3,0x40
9fc01484:	34e7ff01 	ori	a3,a3,0xff01
9fc01488:	2402ffff 	li	v0,-1
9fc0148c:	24030300 	li	v1,768
9fc01490:	40804800 	mtc0	zero,c0_count
9fc01494:	40825800 	mtc0	v0,c0_compare
9fc01498:	40876000 	mtc0	a3,c0_status
9fc0149c:	00000000 	nop
9fc014a0:	40836800 	mtc0	v1,c0_cause
9fc014a4:	1000ffff 	b	9fc014a4 <n14_soft_int_ex_test+0x194>
9fc014a8:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n14_soft_int_ex.S:61
9fc014ac:	00004810 	mfhi	t1
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n14_soft_int_ex.S:62
9fc014b0:	11280027 	beq	t1,t0,9fc01550 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n14_soft_int_ex.S:63
9fc014b4:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n14_soft_int_ex.S:64
9fc014b8:	16570025 	bne	s2,s7,9fc01550 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n14_soft_int_ex.S:65
9fc014bc:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n14_soft_int_ex.S:67
9fc014c0:	24120008 	li	s2,8
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n14_soft_int_ex.S:68
9fc014c4:	3c149fc0 	lui	s4,0x9fc0
9fc014c8:	269414f0 	addiu	s4,s4,5360
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n14_soft_int_ex.S:69
9fc014cc:	3c070040 	lui	a3,0x40
9fc014d0:	34e7ff01 	ori	a3,a3,0xff01
9fc014d4:	2402ffff 	li	v0,-1
9fc014d8:	24030500 	li	v1,1280
9fc014dc:	40804800 	mtc0	zero,c0_count
9fc014e0:	40825800 	mtc0	v0,c0_compare
9fc014e4:	40876000 	mtc0	a3,c0_status
9fc014e8:	00000000 	nop
9fc014ec:	40836800 	mtc0	v1,c0_cause
9fc014f0:	1000ffff 	b	9fc014f0 <n14_soft_int_ex_test+0x1e0>
9fc014f4:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n14_soft_int_ex.S:70
9fc014f8:	01120019 	multu	t0,s2
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n14_soft_int_ex.S:71
9fc014fc:	16570014 	bne	s2,s7,9fc01550 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n14_soft_int_ex.S:72
9fc01500:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n14_soft_int_ex.S:74
9fc01504:	24120008 	li	s2,8
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n14_soft_int_ex.S:75
9fc01508:	3c149fc0 	lui	s4,0x9fc0
9fc0150c:	26941538 	addiu	s4,s4,5432
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n14_soft_int_ex.S:76
9fc01510:	40927000 	mtc0	s2,c0_epc
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n14_soft_int_ex.S:77
9fc01514:	3c070040 	lui	a3,0x40
9fc01518:	34e7ff01 	ori	a3,a3,0xff01
9fc0151c:	2402ffff 	li	v0,-1
9fc01520:	24030f00 	li	v1,3840
9fc01524:	40804800 	mtc0	zero,c0_count
9fc01528:	40825800 	mtc0	v0,c0_compare
9fc0152c:	40876000 	mtc0	a3,c0_status
9fc01530:	00000000 	nop
9fc01534:	40836800 	mtc0	v1,c0_cause
9fc01538:	1000ffff 	b	9fc01538 <n14_soft_int_ex_test+0x228>
9fc0153c:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n14_soft_int_ex.S:78
9fc01540:	40887000 	mtc0	t0,c0_epc
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n14_soft_int_ex.S:79
9fc01544:	16570002 	bne	s2,s7,9fc01550 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n14_soft_int_ex.S:80
9fc01548:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n14_soft_int_ex.S:82
9fc0154c:	26730001 	addiu	s3,s3,1

9fc01550 <inst_error>:
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n14_soft_int_ex.S:85
9fc01550:	00104e00 	sll	t1,s0,0x18
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n14_soft_int_ex.S:86
9fc01554:	01334025 	or	t0,t1,s3
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n14_soft_int_ex.S:87
9fc01558:	ae280000 	sw	t0,0(s1)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n14_soft_int_ex.S:88
9fc0155c:	03e00008 	jr	ra
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n14_soft_int_ex.S:89
9fc01560:	00000000 	nop
	...

9fc01570 <n15_beq_ds_ex_test>:
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n15_beq_ds_ex.S:7
9fc01570:	26100001 	addiu	s0,s0,1
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n15_beq_ds_ex.S:8
9fc01574:	3c08800d 	lui	t0,0x800d
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n15_beq_ds_ex.S:10
9fc01578:	40805800 	mtc0	zero,c0_compare
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n15_beq_ds_ex.S:11
9fc0157c:	3c170040 	lui	s7,0x40
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n15_beq_ds_ex.S:12
9fc01580:	40976000 	mtc0	s7,c0_status
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n15_beq_ds_ex.S:13
9fc01584:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n15_beq_ds_ex.S:16
9fc01588:	24120001 	li	s2,1
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n15_beq_ds_ex.S:17
9fc0158c:	3c170001 	lui	s7,0x1
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n15_beq_ds_ex.S:18
9fc01590:	ad120000 	sw	s2,0(t0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n15_beq_ds_ex.S:19
9fc01594:	3c149fc0 	lui	s4,0x9fc0
9fc01598:	2694159c 	addiu	s4,s4,5532
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n15_beq_ds_ex.S:20
9fc0159c:	100000af 	b	9fc0185c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n15_beq_ds_ex.S:21
9fc015a0:	0000000c 	syscall
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n15_beq_ds_ex.S:22
9fc015a4:	165700ad 	bne	s2,s7,9fc0185c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n15_beq_ds_ex.S:23
9fc015a8:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n15_beq_ds_ex.S:24
9fc015ac:	24120001 	li	s2,1
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n15_beq_ds_ex.S:25
9fc015b0:	3c149fc0 	lui	s4,0x9fc0
9fc015b4:	269415b8 	addiu	s4,s4,5560
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n15_beq_ds_ex.S:26
9fc015b8:	110000a8 	beqz	t0,9fc0185c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n15_beq_ds_ex.S:27
9fc015bc:	0000000c 	syscall
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n15_beq_ds_ex.S:28
9fc015c0:	165700a6 	bne	s2,s7,9fc0185c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n15_beq_ds_ex.S:29
9fc015c4:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n15_beq_ds_ex.S:31
9fc015c8:	24120002 	li	s2,2
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n15_beq_ds_ex.S:32
9fc015cc:	3c170002 	lui	s7,0x2
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n15_beq_ds_ex.S:33
9fc015d0:	ad120000 	sw	s2,0(t0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n15_beq_ds_ex.S:34
9fc015d4:	3c149fc0 	lui	s4,0x9fc0
9fc015d8:	269415dc 	addiu	s4,s4,5596
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n15_beq_ds_ex.S:35
9fc015dc:	1000009f 	b	9fc0185c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n15_beq_ds_ex.S:36
9fc015e0:	0000000d 	break
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n15_beq_ds_ex.S:37
9fc015e4:	1657009d 	bne	s2,s7,9fc0185c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n15_beq_ds_ex.S:38
9fc015e8:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n15_beq_ds_ex.S:39
9fc015ec:	24120002 	li	s2,2
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n15_beq_ds_ex.S:40
9fc015f0:	3c149fc0 	lui	s4,0x9fc0
9fc015f4:	269415f8 	addiu	s4,s4,5624
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n15_beq_ds_ex.S:41
9fc015f8:	11000098 	beqz	t0,9fc0185c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n15_beq_ds_ex.S:42
9fc015fc:	0000000d 	break
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n15_beq_ds_ex.S:43
9fc01600:	16570096 	bne	s2,s7,9fc0185c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n15_beq_ds_ex.S:44
9fc01604:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n15_beq_ds_ex.S:46
9fc01608:	24120003 	li	s2,3
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n15_beq_ds_ex.S:47
9fc0160c:	3c170003 	lui	s7,0x3
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n15_beq_ds_ex.S:48
9fc01610:	ad120000 	sw	s2,0(t0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n15_beq_ds_ex.S:49
9fc01614:	3c149fc0 	lui	s4,0x9fc0
9fc01618:	2694162c 	addiu	s4,s4,5676
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n15_beq_ds_ex.S:50
9fc0161c:	3c04ba03 	lui	a0,0xba03
9fc01620:	34844f60 	ori	a0,a0,0x4f60
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n15_beq_ds_ex.S:51
9fc01624:	3c05b615 	lui	a1,0xb615
9fc01628:	34a5fd67 	ori	a1,a1,0xfd67
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n15_beq_ds_ex.S:52
9fc0162c:	1000008b 	b	9fc0185c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n15_beq_ds_ex.S:53
9fc01630:	0085b820 	add	s7,a0,a1
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n15_beq_ds_ex.S:54
9fc01634:	16570089 	bne	s2,s7,9fc0185c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n15_beq_ds_ex.S:55
9fc01638:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n15_beq_ds_ex.S:56
9fc0163c:	24120003 	li	s2,3
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n15_beq_ds_ex.S:57
9fc01640:	3c149fc0 	lui	s4,0x9fc0
9fc01644:	26941648 	addiu	s4,s4,5704
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n15_beq_ds_ex.S:58
9fc01648:	11000084 	beqz	t0,9fc0185c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n15_beq_ds_ex.S:59
9fc0164c:	0085b820 	add	s7,a0,a1
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n15_beq_ds_ex.S:60
9fc01650:	ad170000 	sw	s7,0(t0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n15_beq_ds_ex.S:61
9fc01654:	16570081 	bne	s2,s7,9fc0185c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n15_beq_ds_ex.S:62
9fc01658:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n15_beq_ds_ex.S:63
9fc0165c:	24120003 	li	s2,3
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n15_beq_ds_ex.S:64
9fc01660:	ad120000 	sw	s2,0(t0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n15_beq_ds_ex.S:65
9fc01664:	3c149fc0 	lui	s4,0x9fc0
9fc01668:	26941674 	addiu	s4,s4,5748
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n15_beq_ds_ex.S:66
9fc0166c:	3c047fff 	lui	a0,0x7fff
9fc01670:	3484c19e 	ori	a0,a0,0xc19e
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n15_beq_ds_ex.S:67
9fc01674:	10000079 	b	9fc0185c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n15_beq_ds_ex.S:68
9fc01678:	20976512 	addi	s7,a0,25874
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n15_beq_ds_ex.S:69
9fc0167c:	16570077 	bne	s2,s7,9fc0185c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n15_beq_ds_ex.S:70
9fc01680:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n15_beq_ds_ex.S:71
9fc01684:	24120003 	li	s2,3
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n15_beq_ds_ex.S:72
9fc01688:	3c149fc0 	lui	s4,0x9fc0
9fc0168c:	26941690 	addiu	s4,s4,5776
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n15_beq_ds_ex.S:73
9fc01690:	11000072 	beqz	t0,9fc0185c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n15_beq_ds_ex.S:74
9fc01694:	20976512 	addi	s7,a0,25874
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n15_beq_ds_ex.S:75
9fc01698:	16570070 	bne	s2,s7,9fc0185c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n15_beq_ds_ex.S:76
9fc0169c:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n15_beq_ds_ex.S:77
9fc016a0:	24120003 	li	s2,3
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n15_beq_ds_ex.S:78
9fc016a4:	3c149fc0 	lui	s4,0x9fc0
9fc016a8:	269416bc 	addiu	s4,s4,5820
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n15_beq_ds_ex.S:79
9fc016ac:	3c04a85e 	lui	a0,0xa85e
9fc016b0:	34847d00 	ori	a0,a0,0x7d00
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n15_beq_ds_ex.S:80
9fc016b4:	3c056b7e 	lui	a1,0x6b7e
9fc016b8:	34a58e36 	ori	a1,a1,0x8e36
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n15_beq_ds_ex.S:81
9fc016bc:	10000067 	b	9fc0185c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n15_beq_ds_ex.S:82
9fc016c0:	0085b822 	sub	s7,a0,a1
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n15_beq_ds_ex.S:83
9fc016c4:	16570065 	bne	s2,s7,9fc0185c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n15_beq_ds_ex.S:84
9fc016c8:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n15_beq_ds_ex.S:85
9fc016cc:	24120003 	li	s2,3
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n15_beq_ds_ex.S:86
9fc016d0:	3c149fc0 	lui	s4,0x9fc0
9fc016d4:	269416d8 	addiu	s4,s4,5848
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n15_beq_ds_ex.S:87
9fc016d8:	11000060 	beqz	t0,9fc0185c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n15_beq_ds_ex.S:88
9fc016dc:	0085b822 	sub	s7,a0,a1
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n15_beq_ds_ex.S:89
9fc016e0:	1657005e 	bne	s2,s7,9fc0185c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n15_beq_ds_ex.S:90
9fc016e4:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n15_beq_ds_ex.S:92
9fc016e8:	24120004 	li	s2,4
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n15_beq_ds_ex.S:93
9fc016ec:	3c170004 	lui	s7,0x4
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n15_beq_ds_ex.S:94
9fc016f0:	ad120000 	sw	s2,0(t0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n15_beq_ds_ex.S:95
9fc016f4:	3c149fc0 	lui	s4,0x9fc0
9fc016f8:	269416fc 	addiu	s4,s4,5884
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n15_beq_ds_ex.S:96
9fc016fc:	10000057 	b	9fc0185c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n15_beq_ds_ex.S:97
9fc01700:	8d170002 	lw	s7,2(t0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n15_beq_ds_ex.S:98
9fc01704:	16570055 	bne	s2,s7,9fc0185c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n15_beq_ds_ex.S:99
9fc01708:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n15_beq_ds_ex.S:100
9fc0170c:	24120004 	li	s2,4
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n15_beq_ds_ex.S:101
9fc01710:	3c149fc0 	lui	s4,0x9fc0
9fc01714:	26941718 	addiu	s4,s4,5912
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n15_beq_ds_ex.S:102
9fc01718:	11000050 	beqz	t0,9fc0185c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n15_beq_ds_ex.S:103
9fc0171c:	8d170002 	lw	s7,2(t0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n15_beq_ds_ex.S:104
9fc01720:	1657004e 	bne	s2,s7,9fc0185c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n15_beq_ds_ex.S:105
9fc01724:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n15_beq_ds_ex.S:106
9fc01728:	24120004 	li	s2,4
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n15_beq_ds_ex.S:107
9fc0172c:	3c149fc0 	lui	s4,0x9fc0
9fc01730:	26941734 	addiu	s4,s4,5940
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n15_beq_ds_ex.S:108
9fc01734:	10000049 	b	9fc0185c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n15_beq_ds_ex.S:109
9fc01738:	85170001 	lh	s7,1(t0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n15_beq_ds_ex.S:110
9fc0173c:	02f2001b 	divu	zero,s7,s2
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n15_beq_ds_ex.S:111
9fc01740:	16570046 	bne	s2,s7,9fc0185c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n15_beq_ds_ex.S:112
9fc01744:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n15_beq_ds_ex.S:113
9fc01748:	24120004 	li	s2,4
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n15_beq_ds_ex.S:114
9fc0174c:	3c149fc0 	lui	s4,0x9fc0
9fc01750:	26941754 	addiu	s4,s4,5972
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n15_beq_ds_ex.S:115
9fc01754:	11000041 	beqz	t0,9fc0185c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n15_beq_ds_ex.S:116
9fc01758:	85170001 	lh	s7,1(t0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n15_beq_ds_ex.S:117
9fc0175c:	1657003f 	bne	s2,s7,9fc0185c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n15_beq_ds_ex.S:118
9fc01760:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n15_beq_ds_ex.S:119
9fc01764:	3c149fc0 	lui	s4,0x9fc0
9fc01768:	2694176c 	addiu	s4,s4,5996
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n15_beq_ds_ex.S:120
9fc0176c:	1000003b 	b	9fc0185c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n15_beq_ds_ex.S:121
9fc01770:	95170003 	lhu	s7,3(t0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n15_beq_ds_ex.S:122
9fc01774:	16570039 	bne	s2,s7,9fc0185c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n15_beq_ds_ex.S:123
9fc01778:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n15_beq_ds_ex.S:124
9fc0177c:	24120004 	li	s2,4
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n15_beq_ds_ex.S:125
9fc01780:	3c149fc0 	lui	s4,0x9fc0
9fc01784:	26941788 	addiu	s4,s4,6024
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n15_beq_ds_ex.S:126
9fc01788:	11000034 	beqz	t0,9fc0185c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n15_beq_ds_ex.S:127
9fc0178c:	95170003 	lhu	s7,3(t0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n15_beq_ds_ex.S:128
9fc01790:	16570032 	bne	s2,s7,9fc0185c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n15_beq_ds_ex.S:129
9fc01794:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n15_beq_ds_ex.S:131
9fc01798:	24120005 	li	s2,5
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n15_beq_ds_ex.S:132
9fc0179c:	3c170005 	lui	s7,0x5
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n15_beq_ds_ex.S:133
9fc017a0:	ad120000 	sw	s2,0(t0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n15_beq_ds_ex.S:134
9fc017a4:	3c149fc0 	lui	s4,0x9fc0
9fc017a8:	269417ac 	addiu	s4,s4,6060
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n15_beq_ds_ex.S:135
9fc017ac:	1000002b 	b	9fc0185c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n15_beq_ds_ex.S:136
9fc017b0:	ad170002 	sw	s7,2(t0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n15_beq_ds_ex.S:137
9fc017b4:	16570029 	bne	s2,s7,9fc0185c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n15_beq_ds_ex.S:138
9fc017b8:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n15_beq_ds_ex.S:139
9fc017bc:	24120005 	li	s2,5
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n15_beq_ds_ex.S:140
9fc017c0:	3c149fc0 	lui	s4,0x9fc0
9fc017c4:	269417c8 	addiu	s4,s4,6088
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n15_beq_ds_ex.S:141
9fc017c8:	11000024 	beqz	t0,9fc0185c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n15_beq_ds_ex.S:142
9fc017cc:	ad170002 	sw	s7,2(t0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n15_beq_ds_ex.S:143
9fc017d0:	16570022 	bne	s2,s7,9fc0185c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n15_beq_ds_ex.S:144
9fc017d4:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n15_beq_ds_ex.S:145
9fc017d8:	24120005 	li	s2,5
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n15_beq_ds_ex.S:146
9fc017dc:	3c149fc0 	lui	s4,0x9fc0
9fc017e0:	269417e4 	addiu	s4,s4,6116
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n15_beq_ds_ex.S:147
9fc017e4:	1000001d 	b	9fc0185c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n15_beq_ds_ex.S:148
9fc017e8:	a5170001 	sh	s7,1(t0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n15_beq_ds_ex.S:149
9fc017ec:	1657001b 	bne	s2,s7,9fc0185c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n15_beq_ds_ex.S:150
9fc017f0:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n15_beq_ds_ex.S:151
9fc017f4:	24120005 	li	s2,5
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n15_beq_ds_ex.S:152
9fc017f8:	3c149fc0 	lui	s4,0x9fc0
9fc017fc:	26941800 	addiu	s4,s4,6144
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n15_beq_ds_ex.S:153
9fc01800:	11000016 	beqz	t0,9fc0185c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n15_beq_ds_ex.S:154
9fc01804:	a5170001 	sh	s7,1(t0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n15_beq_ds_ex.S:155
9fc01808:	16570014 	bne	s2,s7,9fc0185c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n15_beq_ds_ex.S:156
9fc0180c:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n15_beq_ds_ex.S:159
9fc01810:	24120007 	li	s2,7
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n15_beq_ds_ex.S:160
9fc01814:	3c170007 	lui	s7,0x7
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n15_beq_ds_ex.S:161
9fc01818:	ad120000 	sw	s2,0(t0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n15_beq_ds_ex.S:162
9fc0181c:	3c149fc0 	lui	s4,0x9fc0
9fc01820:	26941824 	addiu	s4,s4,6180
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n15_beq_ds_ex.S:163
9fc01824:	1000000d 	b	9fc0185c <inst_error>
9fc01828:	9e3c56aa 	0x9e3c56aa
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n15_beq_ds_ex.S:165
9fc0182c:	02f20018 	mult	s7,s2
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n15_beq_ds_ex.S:166
9fc01830:	1657000a 	bne	s2,s7,9fc0185c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n15_beq_ds_ex.S:167
9fc01834:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n15_beq_ds_ex.S:168
9fc01838:	24120007 	li	s2,7
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n15_beq_ds_ex.S:169
9fc0183c:	3c149fc0 	lui	s4,0x9fc0
9fc01840:	26941848 	addiu	s4,s4,6216
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n15_beq_ds_ex.S:170
9fc01844:	02f20018 	mult	s7,s2
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n15_beq_ds_ex.S:171
9fc01848:	11000004 	beqz	t0,9fc0185c <inst_error>
9fc0184c:	ec1ba960 	swc3	$27,-22176(zero)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n15_beq_ds_ex.S:173
9fc01850:	16570002 	bne	s2,s7,9fc0185c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n15_beq_ds_ex.S:174
9fc01854:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n15_beq_ds_ex.S:176
9fc01858:	26730001 	addiu	s3,s3,1

9fc0185c <inst_error>:
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n15_beq_ds_ex.S:179
9fc0185c:	00104e00 	sll	t1,s0,0x18
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n15_beq_ds_ex.S:180
9fc01860:	01334025 	or	t0,t1,s3
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n15_beq_ds_ex.S:181
9fc01864:	ae280000 	sw	t0,0(s1)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n15_beq_ds_ex.S:182
9fc01868:	03e00008 	jr	ra
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n15_beq_ds_ex.S:183
9fc0186c:	00000000 	nop

9fc01870 <n16_bne_ds_ex_test>:
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n16_bne_ds_ex.S:7
9fc01870:	26100001 	addiu	s0,s0,1
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n16_bne_ds_ex.S:8
9fc01874:	3c08800d 	lui	t0,0x800d
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n16_bne_ds_ex.S:10
9fc01878:	40805800 	mtc0	zero,c0_compare
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n16_bne_ds_ex.S:11
9fc0187c:	3c170040 	lui	s7,0x40
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n16_bne_ds_ex.S:12
9fc01880:	40976000 	mtc0	s7,c0_status
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n16_bne_ds_ex.S:13
9fc01884:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n16_bne_ds_ex.S:16
9fc01888:	24120001 	li	s2,1
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n16_bne_ds_ex.S:17
9fc0188c:	3c170001 	lui	s7,0x1
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n16_bne_ds_ex.S:18
9fc01890:	ad120000 	sw	s2,0(t0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n16_bne_ds_ex.S:19
9fc01894:	3c149fc0 	lui	s4,0x9fc0
9fc01898:	2694189c 	addiu	s4,s4,6300
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n16_bne_ds_ex.S:20
9fc0189c:	140000af 	bnez	zero,9fc01b5c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n16_bne_ds_ex.S:21
9fc018a0:	0000000c 	syscall
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n16_bne_ds_ex.S:22
9fc018a4:	165700ad 	bne	s2,s7,9fc01b5c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n16_bne_ds_ex.S:23
9fc018a8:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n16_bne_ds_ex.S:24
9fc018ac:	24120001 	li	s2,1
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n16_bne_ds_ex.S:25
9fc018b0:	3c149fc0 	lui	s4,0x9fc0
9fc018b4:	269418b8 	addiu	s4,s4,6328
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n16_bne_ds_ex.S:26
9fc018b8:	150000a8 	bnez	t0,9fc01b5c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n16_bne_ds_ex.S:27
9fc018bc:	0000000c 	syscall
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n16_bne_ds_ex.S:28
9fc018c0:	165700a6 	bne	s2,s7,9fc01b5c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n16_bne_ds_ex.S:29
9fc018c4:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n16_bne_ds_ex.S:31
9fc018c8:	24120002 	li	s2,2
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n16_bne_ds_ex.S:32
9fc018cc:	3c170002 	lui	s7,0x2
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n16_bne_ds_ex.S:33
9fc018d0:	ad120000 	sw	s2,0(t0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n16_bne_ds_ex.S:34
9fc018d4:	3c149fc0 	lui	s4,0x9fc0
9fc018d8:	269418dc 	addiu	s4,s4,6364
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n16_bne_ds_ex.S:35
9fc018dc:	1400009f 	bnez	zero,9fc01b5c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n16_bne_ds_ex.S:36
9fc018e0:	0000000d 	break
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n16_bne_ds_ex.S:37
9fc018e4:	1657009d 	bne	s2,s7,9fc01b5c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n16_bne_ds_ex.S:38
9fc018e8:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n16_bne_ds_ex.S:39
9fc018ec:	24120002 	li	s2,2
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n16_bne_ds_ex.S:40
9fc018f0:	3c149fc0 	lui	s4,0x9fc0
9fc018f4:	269418f8 	addiu	s4,s4,6392
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n16_bne_ds_ex.S:41
9fc018f8:	15000098 	bnez	t0,9fc01b5c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n16_bne_ds_ex.S:42
9fc018fc:	0000000d 	break
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n16_bne_ds_ex.S:43
9fc01900:	16570096 	bne	s2,s7,9fc01b5c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n16_bne_ds_ex.S:44
9fc01904:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n16_bne_ds_ex.S:46
9fc01908:	24120003 	li	s2,3
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n16_bne_ds_ex.S:47
9fc0190c:	3c170003 	lui	s7,0x3
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n16_bne_ds_ex.S:48
9fc01910:	ad120000 	sw	s2,0(t0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n16_bne_ds_ex.S:49
9fc01914:	3c149fc0 	lui	s4,0x9fc0
9fc01918:	2694192c 	addiu	s4,s4,6444
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n16_bne_ds_ex.S:50
9fc0191c:	3c04ba03 	lui	a0,0xba03
9fc01920:	34844f60 	ori	a0,a0,0x4f60
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n16_bne_ds_ex.S:51
9fc01924:	3c05b615 	lui	a1,0xb615
9fc01928:	34a5fd67 	ori	a1,a1,0xfd67
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n16_bne_ds_ex.S:52
9fc0192c:	1400008b 	bnez	zero,9fc01b5c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n16_bne_ds_ex.S:53
9fc01930:	0085b820 	add	s7,a0,a1
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n16_bne_ds_ex.S:54
9fc01934:	16570089 	bne	s2,s7,9fc01b5c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n16_bne_ds_ex.S:55
9fc01938:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n16_bne_ds_ex.S:56
9fc0193c:	24120003 	li	s2,3
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n16_bne_ds_ex.S:57
9fc01940:	3c149fc0 	lui	s4,0x9fc0
9fc01944:	26941948 	addiu	s4,s4,6472
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n16_bne_ds_ex.S:58
9fc01948:	15000084 	bnez	t0,9fc01b5c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n16_bne_ds_ex.S:59
9fc0194c:	0085b820 	add	s7,a0,a1
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n16_bne_ds_ex.S:60
9fc01950:	16570082 	bne	s2,s7,9fc01b5c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n16_bne_ds_ex.S:61
9fc01954:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n16_bne_ds_ex.S:62
9fc01958:	24120003 	li	s2,3
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n16_bne_ds_ex.S:63
9fc0195c:	3c149fc0 	lui	s4,0x9fc0
9fc01960:	2694196c 	addiu	s4,s4,6508
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n16_bne_ds_ex.S:64
9fc01964:	3c047fff 	lui	a0,0x7fff
9fc01968:	3484c19e 	ori	a0,a0,0xc19e
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n16_bne_ds_ex.S:65
9fc0196c:	1400007b 	bnez	zero,9fc01b5c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n16_bne_ds_ex.S:66
9fc01970:	20976512 	addi	s7,a0,25874
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n16_bne_ds_ex.S:67
9fc01974:	16570079 	bne	s2,s7,9fc01b5c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n16_bne_ds_ex.S:68
9fc01978:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n16_bne_ds_ex.S:69
9fc0197c:	24120003 	li	s2,3
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n16_bne_ds_ex.S:70
9fc01980:	3c149fc0 	lui	s4,0x9fc0
9fc01984:	26941988 	addiu	s4,s4,6536
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n16_bne_ds_ex.S:71
9fc01988:	15000074 	bnez	t0,9fc01b5c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n16_bne_ds_ex.S:72
9fc0198c:	20976512 	addi	s7,a0,25874
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n16_bne_ds_ex.S:73
9fc01990:	16570072 	bne	s2,s7,9fc01b5c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n16_bne_ds_ex.S:74
9fc01994:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n16_bne_ds_ex.S:75
9fc01998:	24120003 	li	s2,3
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n16_bne_ds_ex.S:76
9fc0199c:	3c149fc0 	lui	s4,0x9fc0
9fc019a0:	269419b4 	addiu	s4,s4,6580
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n16_bne_ds_ex.S:77
9fc019a4:	3c04a85e 	lui	a0,0xa85e
9fc019a8:	34847d00 	ori	a0,a0,0x7d00
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n16_bne_ds_ex.S:78
9fc019ac:	3c056b7e 	lui	a1,0x6b7e
9fc019b0:	34a58e36 	ori	a1,a1,0x8e36
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n16_bne_ds_ex.S:79
9fc019b4:	14000069 	bnez	zero,9fc01b5c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n16_bne_ds_ex.S:80
9fc019b8:	0085b822 	sub	s7,a0,a1
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n16_bne_ds_ex.S:81
9fc019bc:	16570067 	bne	s2,s7,9fc01b5c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n16_bne_ds_ex.S:82
9fc019c0:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n16_bne_ds_ex.S:83
9fc019c4:	24120003 	li	s2,3
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n16_bne_ds_ex.S:84
9fc019c8:	3c149fc0 	lui	s4,0x9fc0
9fc019cc:	269419d0 	addiu	s4,s4,6608
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n16_bne_ds_ex.S:85
9fc019d0:	15000062 	bnez	t0,9fc01b5c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n16_bne_ds_ex.S:86
9fc019d4:	0085b822 	sub	s7,a0,a1
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n16_bne_ds_ex.S:87
9fc019d8:	16570060 	bne	s2,s7,9fc01b5c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n16_bne_ds_ex.S:88
9fc019dc:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n16_bne_ds_ex.S:90
9fc019e0:	24120004 	li	s2,4
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n16_bne_ds_ex.S:91
9fc019e4:	3c170004 	lui	s7,0x4
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n16_bne_ds_ex.S:92
9fc019e8:	ad120000 	sw	s2,0(t0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n16_bne_ds_ex.S:93
9fc019ec:	3c149fc0 	lui	s4,0x9fc0
9fc019f0:	269419f4 	addiu	s4,s4,6644
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n16_bne_ds_ex.S:94
9fc019f4:	14000059 	bnez	zero,9fc01b5c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n16_bne_ds_ex.S:95
9fc019f8:	8d170002 	lw	s7,2(t0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n16_bne_ds_ex.S:96
9fc019fc:	ad170000 	sw	s7,0(t0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n16_bne_ds_ex.S:97
9fc01a00:	16570056 	bne	s2,s7,9fc01b5c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n16_bne_ds_ex.S:98
9fc01a04:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n16_bne_ds_ex.S:99
9fc01a08:	24120004 	li	s2,4
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n16_bne_ds_ex.S:100
9fc01a0c:	ad120000 	sw	s2,0(t0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n16_bne_ds_ex.S:101
9fc01a10:	3c149fc0 	lui	s4,0x9fc0
9fc01a14:	26941a18 	addiu	s4,s4,6680
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n16_bne_ds_ex.S:102
9fc01a18:	15000050 	bnez	t0,9fc01b5c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n16_bne_ds_ex.S:103
9fc01a1c:	8d170002 	lw	s7,2(t0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n16_bne_ds_ex.S:104
9fc01a20:	1657004e 	bne	s2,s7,9fc01b5c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n16_bne_ds_ex.S:105
9fc01a24:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n16_bne_ds_ex.S:106
9fc01a28:	24120004 	li	s2,4
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n16_bne_ds_ex.S:107
9fc01a2c:	3c149fc0 	lui	s4,0x9fc0
9fc01a30:	26941a34 	addiu	s4,s4,6708
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n16_bne_ds_ex.S:108
9fc01a34:	14000049 	bnez	zero,9fc01b5c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n16_bne_ds_ex.S:109
9fc01a38:	85170001 	lh	s7,1(t0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n16_bne_ds_ex.S:110
9fc01a3c:	16570047 	bne	s2,s7,9fc01b5c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n16_bne_ds_ex.S:111
9fc01a40:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n16_bne_ds_ex.S:112
9fc01a44:	24120004 	li	s2,4
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n16_bne_ds_ex.S:113
9fc01a48:	3c149fc0 	lui	s4,0x9fc0
9fc01a4c:	26941a50 	addiu	s4,s4,6736
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n16_bne_ds_ex.S:114
9fc01a50:	15000042 	bnez	t0,9fc01b5c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n16_bne_ds_ex.S:115
9fc01a54:	85170001 	lh	s7,1(t0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n16_bne_ds_ex.S:116
9fc01a58:	16570040 	bne	s2,s7,9fc01b5c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n16_bne_ds_ex.S:117
9fc01a5c:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n16_bne_ds_ex.S:118
9fc01a60:	3c149fc0 	lui	s4,0x9fc0
9fc01a64:	26941a68 	addiu	s4,s4,6760
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n16_bne_ds_ex.S:119
9fc01a68:	1400003c 	bnez	zero,9fc01b5c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n16_bne_ds_ex.S:120
9fc01a6c:	95170003 	lhu	s7,3(t0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n16_bne_ds_ex.S:121
9fc01a70:	1657003a 	bne	s2,s7,9fc01b5c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n16_bne_ds_ex.S:122
9fc01a74:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n16_bne_ds_ex.S:123
9fc01a78:	24120004 	li	s2,4
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n16_bne_ds_ex.S:124
9fc01a7c:	3c149fc0 	lui	s4,0x9fc0
9fc01a80:	26941a84 	addiu	s4,s4,6788
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n16_bne_ds_ex.S:125
9fc01a84:	15000035 	bnez	t0,9fc01b5c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n16_bne_ds_ex.S:126
9fc01a88:	95170003 	lhu	s7,3(t0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n16_bne_ds_ex.S:127
9fc01a8c:	16570033 	bne	s2,s7,9fc01b5c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n16_bne_ds_ex.S:128
9fc01a90:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n16_bne_ds_ex.S:130
9fc01a94:	24120005 	li	s2,5
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n16_bne_ds_ex.S:131
9fc01a98:	3c170005 	lui	s7,0x5
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n16_bne_ds_ex.S:132
9fc01a9c:	ad120000 	sw	s2,0(t0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n16_bne_ds_ex.S:133
9fc01aa0:	3c149fc0 	lui	s4,0x9fc0
9fc01aa4:	26941aa8 	addiu	s4,s4,6824
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n16_bne_ds_ex.S:134
9fc01aa8:	1400002c 	bnez	zero,9fc01b5c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n16_bne_ds_ex.S:135
9fc01aac:	ad170002 	sw	s7,2(t0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n16_bne_ds_ex.S:136
9fc01ab0:	02f2001b 	divu	zero,s7,s2
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n16_bne_ds_ex.S:137
9fc01ab4:	16570029 	bne	s2,s7,9fc01b5c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n16_bne_ds_ex.S:138
9fc01ab8:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n16_bne_ds_ex.S:139
9fc01abc:	24120005 	li	s2,5
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n16_bne_ds_ex.S:140
9fc01ac0:	3c149fc0 	lui	s4,0x9fc0
9fc01ac4:	26941ac8 	addiu	s4,s4,6856
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n16_bne_ds_ex.S:141
9fc01ac8:	15000024 	bnez	t0,9fc01b5c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n16_bne_ds_ex.S:142
9fc01acc:	ad170002 	sw	s7,2(t0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n16_bne_ds_ex.S:143
9fc01ad0:	16570022 	bne	s2,s7,9fc01b5c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n16_bne_ds_ex.S:144
9fc01ad4:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n16_bne_ds_ex.S:145
9fc01ad8:	24120005 	li	s2,5
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n16_bne_ds_ex.S:146
9fc01adc:	3c149fc0 	lui	s4,0x9fc0
9fc01ae0:	26941ae4 	addiu	s4,s4,6884
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n16_bne_ds_ex.S:147
9fc01ae4:	1400001d 	bnez	zero,9fc01b5c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n16_bne_ds_ex.S:148
9fc01ae8:	a5170001 	sh	s7,1(t0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n16_bne_ds_ex.S:149
9fc01aec:	1657001b 	bne	s2,s7,9fc01b5c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n16_bne_ds_ex.S:150
9fc01af0:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n16_bne_ds_ex.S:151
9fc01af4:	24120005 	li	s2,5
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n16_bne_ds_ex.S:152
9fc01af8:	3c149fc0 	lui	s4,0x9fc0
9fc01afc:	26941b00 	addiu	s4,s4,6912
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n16_bne_ds_ex.S:153
9fc01b00:	15000016 	bnez	t0,9fc01b5c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n16_bne_ds_ex.S:154
9fc01b04:	a5170001 	sh	s7,1(t0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n16_bne_ds_ex.S:155
9fc01b08:	16570014 	bne	s2,s7,9fc01b5c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n16_bne_ds_ex.S:156
9fc01b0c:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n16_bne_ds_ex.S:159
9fc01b10:	24120007 	li	s2,7
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n16_bne_ds_ex.S:160
9fc01b14:	3c170007 	lui	s7,0x7
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n16_bne_ds_ex.S:161
9fc01b18:	ad120000 	sw	s2,0(t0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n16_bne_ds_ex.S:162
9fc01b1c:	3c149fc0 	lui	s4,0x9fc0
9fc01b20:	26941b24 	addiu	s4,s4,6948
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n16_bne_ds_ex.S:163
9fc01b24:	1400000d 	bnez	zero,9fc01b5c <inst_error>
9fc01b28:	9e3c56aa 	0x9e3c56aa
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n16_bne_ds_ex.S:165
9fc01b2c:	02f20018 	mult	s7,s2
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n16_bne_ds_ex.S:166
9fc01b30:	1657000a 	bne	s2,s7,9fc01b5c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n16_bne_ds_ex.S:167
9fc01b34:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n16_bne_ds_ex.S:168
9fc01b38:	24120007 	li	s2,7
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n16_bne_ds_ex.S:169
9fc01b3c:	3c149fc0 	lui	s4,0x9fc0
9fc01b40:	26941b48 	addiu	s4,s4,6984
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n16_bne_ds_ex.S:170
9fc01b44:	02f20018 	mult	s7,s2
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n16_bne_ds_ex.S:171
9fc01b48:	15000004 	bnez	t0,9fc01b5c <inst_error>
9fc01b4c:	ec1ba960 	swc3	$27,-22176(zero)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n16_bne_ds_ex.S:173
9fc01b50:	16570002 	bne	s2,s7,9fc01b5c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n16_bne_ds_ex.S:174
9fc01b54:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n16_bne_ds_ex.S:176
9fc01b58:	26730001 	addiu	s3,s3,1

9fc01b5c <inst_error>:
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n16_bne_ds_ex.S:179
9fc01b5c:	00104e00 	sll	t1,s0,0x18
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n16_bne_ds_ex.S:180
9fc01b60:	01334025 	or	t0,t1,s3
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n16_bne_ds_ex.S:181
9fc01b64:	ae280000 	sw	t0,0(s1)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n16_bne_ds_ex.S:182
9fc01b68:	03e00008 	jr	ra
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n16_bne_ds_ex.S:183
9fc01b6c:	00000000 	nop

9fc01b70 <n17_bgez_ds_ex_test>:
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n17_bgez_ds_ex.S:7
9fc01b70:	26100001 	addiu	s0,s0,1
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n17_bgez_ds_ex.S:8
9fc01b74:	3c08800d 	lui	t0,0x800d
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n17_bgez_ds_ex.S:10
9fc01b78:	40805800 	mtc0	zero,c0_compare
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n17_bgez_ds_ex.S:11
9fc01b7c:	3c170040 	lui	s7,0x40
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n17_bgez_ds_ex.S:12
9fc01b80:	40976000 	mtc0	s7,c0_status
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n17_bgez_ds_ex.S:13
9fc01b84:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n17_bgez_ds_ex.S:16
9fc01b88:	24120001 	li	s2,1
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n17_bgez_ds_ex.S:17
9fc01b8c:	3c170001 	lui	s7,0x1
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n17_bgez_ds_ex.S:18
9fc01b90:	ad120000 	sw	s2,0(t0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n17_bgez_ds_ex.S:19
9fc01b94:	3c149fc0 	lui	s4,0x9fc0
9fc01b98:	26941b9c 	addiu	s4,s4,7068
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n17_bgez_ds_ex.S:20
9fc01b9c:	040100af 	b	9fc01e5c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n17_bgez_ds_ex.S:21
9fc01ba0:	0000000c 	syscall
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n17_bgez_ds_ex.S:22
9fc01ba4:	165700ad 	bne	s2,s7,9fc01e5c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n17_bgez_ds_ex.S:23
9fc01ba8:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n17_bgez_ds_ex.S:24
9fc01bac:	24120001 	li	s2,1
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n17_bgez_ds_ex.S:25
9fc01bb0:	3c149fc0 	lui	s4,0x9fc0
9fc01bb4:	26941bb8 	addiu	s4,s4,7096
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n17_bgez_ds_ex.S:26
9fc01bb8:	050100a8 	bgez	t0,9fc01e5c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n17_bgez_ds_ex.S:27
9fc01bbc:	0000000c 	syscall
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n17_bgez_ds_ex.S:28
9fc01bc0:	165700a6 	bne	s2,s7,9fc01e5c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n17_bgez_ds_ex.S:29
9fc01bc4:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n17_bgez_ds_ex.S:31
9fc01bc8:	24120002 	li	s2,2
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n17_bgez_ds_ex.S:32
9fc01bcc:	3c170002 	lui	s7,0x2
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n17_bgez_ds_ex.S:33
9fc01bd0:	ad120000 	sw	s2,0(t0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n17_bgez_ds_ex.S:34
9fc01bd4:	3c149fc0 	lui	s4,0x9fc0
9fc01bd8:	26941bdc 	addiu	s4,s4,7132
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n17_bgez_ds_ex.S:35
9fc01bdc:	0401009f 	b	9fc01e5c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n17_bgez_ds_ex.S:36
9fc01be0:	0000000d 	break
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n17_bgez_ds_ex.S:37
9fc01be4:	1657009d 	bne	s2,s7,9fc01e5c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n17_bgez_ds_ex.S:38
9fc01be8:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n17_bgez_ds_ex.S:39
9fc01bec:	24120002 	li	s2,2
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n17_bgez_ds_ex.S:40
9fc01bf0:	3c149fc0 	lui	s4,0x9fc0
9fc01bf4:	26941bf8 	addiu	s4,s4,7160
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n17_bgez_ds_ex.S:41
9fc01bf8:	05010098 	bgez	t0,9fc01e5c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n17_bgez_ds_ex.S:42
9fc01bfc:	0000000d 	break
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n17_bgez_ds_ex.S:43
9fc01c00:	16570096 	bne	s2,s7,9fc01e5c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n17_bgez_ds_ex.S:44
9fc01c04:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n17_bgez_ds_ex.S:46
9fc01c08:	24120003 	li	s2,3
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n17_bgez_ds_ex.S:47
9fc01c0c:	3c170003 	lui	s7,0x3
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n17_bgez_ds_ex.S:48
9fc01c10:	ad120000 	sw	s2,0(t0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n17_bgez_ds_ex.S:49
9fc01c14:	3c149fc0 	lui	s4,0x9fc0
9fc01c18:	26941c2c 	addiu	s4,s4,7212
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n17_bgez_ds_ex.S:50
9fc01c1c:	3c04ba03 	lui	a0,0xba03
9fc01c20:	34844f60 	ori	a0,a0,0x4f60
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n17_bgez_ds_ex.S:51
9fc01c24:	3c05b615 	lui	a1,0xb615
9fc01c28:	34a5fd67 	ori	a1,a1,0xfd67
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n17_bgez_ds_ex.S:52
9fc01c2c:	0401008b 	b	9fc01e5c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n17_bgez_ds_ex.S:53
9fc01c30:	0085b820 	add	s7,a0,a1
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n17_bgez_ds_ex.S:54
9fc01c34:	16570089 	bne	s2,s7,9fc01e5c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n17_bgez_ds_ex.S:55
9fc01c38:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n17_bgez_ds_ex.S:56
9fc01c3c:	24120003 	li	s2,3
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n17_bgez_ds_ex.S:57
9fc01c40:	3c149fc0 	lui	s4,0x9fc0
9fc01c44:	26941c48 	addiu	s4,s4,7240
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n17_bgez_ds_ex.S:58
9fc01c48:	05010084 	bgez	t0,9fc01e5c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n17_bgez_ds_ex.S:59
9fc01c4c:	0085b820 	add	s7,a0,a1
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n17_bgez_ds_ex.S:60
9fc01c50:	ad170000 	sw	s7,0(t0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n17_bgez_ds_ex.S:61
9fc01c54:	16570081 	bne	s2,s7,9fc01e5c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n17_bgez_ds_ex.S:62
9fc01c58:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n17_bgez_ds_ex.S:63
9fc01c5c:	24120003 	li	s2,3
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n17_bgez_ds_ex.S:64
9fc01c60:	ad120000 	sw	s2,0(t0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n17_bgez_ds_ex.S:65
9fc01c64:	3c149fc0 	lui	s4,0x9fc0
9fc01c68:	26941c74 	addiu	s4,s4,7284
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n17_bgez_ds_ex.S:66
9fc01c6c:	3c047fff 	lui	a0,0x7fff
9fc01c70:	3484c19e 	ori	a0,a0,0xc19e
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n17_bgez_ds_ex.S:67
9fc01c74:	04010079 	b	9fc01e5c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n17_bgez_ds_ex.S:68
9fc01c78:	20976512 	addi	s7,a0,25874
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n17_bgez_ds_ex.S:69
9fc01c7c:	16570077 	bne	s2,s7,9fc01e5c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n17_bgez_ds_ex.S:70
9fc01c80:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n17_bgez_ds_ex.S:71
9fc01c84:	24120003 	li	s2,3
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n17_bgez_ds_ex.S:72
9fc01c88:	3c149fc0 	lui	s4,0x9fc0
9fc01c8c:	26941c90 	addiu	s4,s4,7312
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n17_bgez_ds_ex.S:73
9fc01c90:	05010072 	bgez	t0,9fc01e5c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n17_bgez_ds_ex.S:74
9fc01c94:	20976512 	addi	s7,a0,25874
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n17_bgez_ds_ex.S:75
9fc01c98:	16570070 	bne	s2,s7,9fc01e5c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n17_bgez_ds_ex.S:76
9fc01c9c:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n17_bgez_ds_ex.S:77
9fc01ca0:	24120003 	li	s2,3
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n17_bgez_ds_ex.S:78
9fc01ca4:	3c149fc0 	lui	s4,0x9fc0
9fc01ca8:	26941cbc 	addiu	s4,s4,7356
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n17_bgez_ds_ex.S:79
9fc01cac:	3c04a85e 	lui	a0,0xa85e
9fc01cb0:	34847d00 	ori	a0,a0,0x7d00
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n17_bgez_ds_ex.S:80
9fc01cb4:	3c056b7e 	lui	a1,0x6b7e
9fc01cb8:	34a58e36 	ori	a1,a1,0x8e36
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n17_bgez_ds_ex.S:81
9fc01cbc:	04010067 	b	9fc01e5c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n17_bgez_ds_ex.S:82
9fc01cc0:	0085b822 	sub	s7,a0,a1
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n17_bgez_ds_ex.S:83
9fc01cc4:	16570065 	bne	s2,s7,9fc01e5c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n17_bgez_ds_ex.S:84
9fc01cc8:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n17_bgez_ds_ex.S:85
9fc01ccc:	24120003 	li	s2,3
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n17_bgez_ds_ex.S:86
9fc01cd0:	3c149fc0 	lui	s4,0x9fc0
9fc01cd4:	26941cd8 	addiu	s4,s4,7384
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n17_bgez_ds_ex.S:87
9fc01cd8:	05010060 	bgez	t0,9fc01e5c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n17_bgez_ds_ex.S:88
9fc01cdc:	0085b822 	sub	s7,a0,a1
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n17_bgez_ds_ex.S:89
9fc01ce0:	1657005e 	bne	s2,s7,9fc01e5c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n17_bgez_ds_ex.S:90
9fc01ce4:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n17_bgez_ds_ex.S:92
9fc01ce8:	24120004 	li	s2,4
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n17_bgez_ds_ex.S:93
9fc01cec:	3c170004 	lui	s7,0x4
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n17_bgez_ds_ex.S:94
9fc01cf0:	ad120000 	sw	s2,0(t0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n17_bgez_ds_ex.S:95
9fc01cf4:	3c149fc0 	lui	s4,0x9fc0
9fc01cf8:	26941cfc 	addiu	s4,s4,7420
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n17_bgez_ds_ex.S:96
9fc01cfc:	04010057 	b	9fc01e5c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n17_bgez_ds_ex.S:97
9fc01d00:	8d170002 	lw	s7,2(t0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n17_bgez_ds_ex.S:98
9fc01d04:	16570055 	bne	s2,s7,9fc01e5c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n17_bgez_ds_ex.S:99
9fc01d08:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n17_bgez_ds_ex.S:100
9fc01d0c:	24120004 	li	s2,4
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n17_bgez_ds_ex.S:101
9fc01d10:	3c149fc0 	lui	s4,0x9fc0
9fc01d14:	26941d18 	addiu	s4,s4,7448
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n17_bgez_ds_ex.S:102
9fc01d18:	05010050 	bgez	t0,9fc01e5c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n17_bgez_ds_ex.S:103
9fc01d1c:	8d170002 	lw	s7,2(t0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n17_bgez_ds_ex.S:104
9fc01d20:	1657004e 	bne	s2,s7,9fc01e5c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n17_bgez_ds_ex.S:105
9fc01d24:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n17_bgez_ds_ex.S:106
9fc01d28:	24120004 	li	s2,4
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n17_bgez_ds_ex.S:107
9fc01d2c:	3c149fc0 	lui	s4,0x9fc0
9fc01d30:	26941d34 	addiu	s4,s4,7476
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n17_bgez_ds_ex.S:108
9fc01d34:	04010049 	b	9fc01e5c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n17_bgez_ds_ex.S:109
9fc01d38:	85170001 	lh	s7,1(t0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n17_bgez_ds_ex.S:110
9fc01d3c:	02f2001b 	divu	zero,s7,s2
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n17_bgez_ds_ex.S:111
9fc01d40:	16570046 	bne	s2,s7,9fc01e5c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n17_bgez_ds_ex.S:112
9fc01d44:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n17_bgez_ds_ex.S:113
9fc01d48:	24120004 	li	s2,4
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n17_bgez_ds_ex.S:114
9fc01d4c:	3c149fc0 	lui	s4,0x9fc0
9fc01d50:	26941d54 	addiu	s4,s4,7508
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n17_bgez_ds_ex.S:115
9fc01d54:	05010041 	bgez	t0,9fc01e5c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n17_bgez_ds_ex.S:116
9fc01d58:	85170001 	lh	s7,1(t0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n17_bgez_ds_ex.S:117
9fc01d5c:	1657003f 	bne	s2,s7,9fc01e5c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n17_bgez_ds_ex.S:118
9fc01d60:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n17_bgez_ds_ex.S:119
9fc01d64:	3c149fc0 	lui	s4,0x9fc0
9fc01d68:	26941d6c 	addiu	s4,s4,7532
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n17_bgez_ds_ex.S:120
9fc01d6c:	0401003b 	b	9fc01e5c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n17_bgez_ds_ex.S:121
9fc01d70:	95170003 	lhu	s7,3(t0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n17_bgez_ds_ex.S:122
9fc01d74:	16570039 	bne	s2,s7,9fc01e5c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n17_bgez_ds_ex.S:123
9fc01d78:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n17_bgez_ds_ex.S:124
9fc01d7c:	24120004 	li	s2,4
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n17_bgez_ds_ex.S:125
9fc01d80:	3c149fc0 	lui	s4,0x9fc0
9fc01d84:	26941d88 	addiu	s4,s4,7560
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n17_bgez_ds_ex.S:126
9fc01d88:	05010034 	bgez	t0,9fc01e5c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n17_bgez_ds_ex.S:127
9fc01d8c:	95170003 	lhu	s7,3(t0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n17_bgez_ds_ex.S:128
9fc01d90:	16570032 	bne	s2,s7,9fc01e5c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n17_bgez_ds_ex.S:129
9fc01d94:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n17_bgez_ds_ex.S:131
9fc01d98:	24120005 	li	s2,5
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n17_bgez_ds_ex.S:132
9fc01d9c:	3c170005 	lui	s7,0x5
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n17_bgez_ds_ex.S:133
9fc01da0:	ad120000 	sw	s2,0(t0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n17_bgez_ds_ex.S:134
9fc01da4:	3c149fc0 	lui	s4,0x9fc0
9fc01da8:	26941dac 	addiu	s4,s4,7596
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n17_bgez_ds_ex.S:135
9fc01dac:	0401002b 	b	9fc01e5c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n17_bgez_ds_ex.S:136
9fc01db0:	ad170002 	sw	s7,2(t0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n17_bgez_ds_ex.S:137
9fc01db4:	16570029 	bne	s2,s7,9fc01e5c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n17_bgez_ds_ex.S:138
9fc01db8:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n17_bgez_ds_ex.S:139
9fc01dbc:	24120005 	li	s2,5
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n17_bgez_ds_ex.S:140
9fc01dc0:	3c149fc0 	lui	s4,0x9fc0
9fc01dc4:	26941dc8 	addiu	s4,s4,7624
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n17_bgez_ds_ex.S:141
9fc01dc8:	05010024 	bgez	t0,9fc01e5c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n17_bgez_ds_ex.S:142
9fc01dcc:	ad170002 	sw	s7,2(t0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n17_bgez_ds_ex.S:143
9fc01dd0:	16570022 	bne	s2,s7,9fc01e5c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n17_bgez_ds_ex.S:144
9fc01dd4:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n17_bgez_ds_ex.S:145
9fc01dd8:	24120005 	li	s2,5
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n17_bgez_ds_ex.S:146
9fc01ddc:	3c149fc0 	lui	s4,0x9fc0
9fc01de0:	26941de4 	addiu	s4,s4,7652
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n17_bgez_ds_ex.S:147
9fc01de4:	0401001d 	b	9fc01e5c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n17_bgez_ds_ex.S:148
9fc01de8:	a5170001 	sh	s7,1(t0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n17_bgez_ds_ex.S:149
9fc01dec:	1657001b 	bne	s2,s7,9fc01e5c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n17_bgez_ds_ex.S:150
9fc01df0:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n17_bgez_ds_ex.S:151
9fc01df4:	24120005 	li	s2,5
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n17_bgez_ds_ex.S:152
9fc01df8:	3c149fc0 	lui	s4,0x9fc0
9fc01dfc:	26941e00 	addiu	s4,s4,7680
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n17_bgez_ds_ex.S:153
9fc01e00:	05010016 	bgez	t0,9fc01e5c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n17_bgez_ds_ex.S:154
9fc01e04:	a5170001 	sh	s7,1(t0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n17_bgez_ds_ex.S:155
9fc01e08:	16570014 	bne	s2,s7,9fc01e5c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n17_bgez_ds_ex.S:156
9fc01e0c:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n17_bgez_ds_ex.S:159
9fc01e10:	24120007 	li	s2,7
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n17_bgez_ds_ex.S:160
9fc01e14:	3c170007 	lui	s7,0x7
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n17_bgez_ds_ex.S:161
9fc01e18:	ad120000 	sw	s2,0(t0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n17_bgez_ds_ex.S:162
9fc01e1c:	3c149fc0 	lui	s4,0x9fc0
9fc01e20:	26941e24 	addiu	s4,s4,7716
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n17_bgez_ds_ex.S:163
9fc01e24:	0401000d 	b	9fc01e5c <inst_error>
9fc01e28:	9e3c56aa 	0x9e3c56aa
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n17_bgez_ds_ex.S:165
9fc01e2c:	02f20018 	mult	s7,s2
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n17_bgez_ds_ex.S:166
9fc01e30:	1657000a 	bne	s2,s7,9fc01e5c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n17_bgez_ds_ex.S:167
9fc01e34:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n17_bgez_ds_ex.S:168
9fc01e38:	24120007 	li	s2,7
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n17_bgez_ds_ex.S:169
9fc01e3c:	3c149fc0 	lui	s4,0x9fc0
9fc01e40:	26941e48 	addiu	s4,s4,7752
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n17_bgez_ds_ex.S:170
9fc01e44:	02f20018 	mult	s7,s2
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n17_bgez_ds_ex.S:171
9fc01e48:	05010004 	bgez	t0,9fc01e5c <inst_error>
9fc01e4c:	ec1ba960 	swc3	$27,-22176(zero)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n17_bgez_ds_ex.S:173
9fc01e50:	16570002 	bne	s2,s7,9fc01e5c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n17_bgez_ds_ex.S:174
9fc01e54:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n17_bgez_ds_ex.S:176
9fc01e58:	26730001 	addiu	s3,s3,1

9fc01e5c <inst_error>:
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n17_bgez_ds_ex.S:179
9fc01e5c:	00104e00 	sll	t1,s0,0x18
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n17_bgez_ds_ex.S:180
9fc01e60:	01334025 	or	t0,t1,s3
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n17_bgez_ds_ex.S:181
9fc01e64:	ae280000 	sw	t0,0(s1)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n17_bgez_ds_ex.S:182
9fc01e68:	03e00008 	jr	ra
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n17_bgez_ds_ex.S:183
9fc01e6c:	00000000 	nop

9fc01e70 <n18_bgtz_ds_ex_test>:
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n18_bgtz_ds_ex.S:7
9fc01e70:	26100001 	addiu	s0,s0,1
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n18_bgtz_ds_ex.S:8
9fc01e74:	3c08800d 	lui	t0,0x800d
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n18_bgtz_ds_ex.S:10
9fc01e78:	40805800 	mtc0	zero,c0_compare
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n18_bgtz_ds_ex.S:11
9fc01e7c:	3c170040 	lui	s7,0x40
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n18_bgtz_ds_ex.S:12
9fc01e80:	40976000 	mtc0	s7,c0_status
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n18_bgtz_ds_ex.S:13
9fc01e84:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n18_bgtz_ds_ex.S:16
9fc01e88:	24120001 	li	s2,1
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n18_bgtz_ds_ex.S:17
9fc01e8c:	3c170001 	lui	s7,0x1
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n18_bgtz_ds_ex.S:18
9fc01e90:	ad120000 	sw	s2,0(t0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n18_bgtz_ds_ex.S:19
9fc01e94:	3c149fc0 	lui	s4,0x9fc0
9fc01e98:	26941e9c 	addiu	s4,s4,7836
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n18_bgtz_ds_ex.S:20
9fc01e9c:	1e4000af 	bgtz	s2,9fc0215c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n18_bgtz_ds_ex.S:21
9fc01ea0:	0000000c 	syscall
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n18_bgtz_ds_ex.S:22
9fc01ea4:	165700ad 	bne	s2,s7,9fc0215c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n18_bgtz_ds_ex.S:23
9fc01ea8:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n18_bgtz_ds_ex.S:24
9fc01eac:	24120001 	li	s2,1
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n18_bgtz_ds_ex.S:25
9fc01eb0:	3c149fc0 	lui	s4,0x9fc0
9fc01eb4:	26941eb8 	addiu	s4,s4,7864
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n18_bgtz_ds_ex.S:26
9fc01eb8:	1d0000a8 	bgtz	t0,9fc0215c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n18_bgtz_ds_ex.S:27
9fc01ebc:	0000000c 	syscall
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n18_bgtz_ds_ex.S:28
9fc01ec0:	165700a6 	bne	s2,s7,9fc0215c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n18_bgtz_ds_ex.S:29
9fc01ec4:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n18_bgtz_ds_ex.S:31
9fc01ec8:	24120002 	li	s2,2
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n18_bgtz_ds_ex.S:32
9fc01ecc:	3c170002 	lui	s7,0x2
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n18_bgtz_ds_ex.S:33
9fc01ed0:	ad120000 	sw	s2,0(t0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n18_bgtz_ds_ex.S:34
9fc01ed4:	3c149fc0 	lui	s4,0x9fc0
9fc01ed8:	26941edc 	addiu	s4,s4,7900
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n18_bgtz_ds_ex.S:35
9fc01edc:	1e40009f 	bgtz	s2,9fc0215c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n18_bgtz_ds_ex.S:36
9fc01ee0:	0000000d 	break
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n18_bgtz_ds_ex.S:37
9fc01ee4:	1657009d 	bne	s2,s7,9fc0215c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n18_bgtz_ds_ex.S:38
9fc01ee8:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n18_bgtz_ds_ex.S:39
9fc01eec:	24120002 	li	s2,2
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n18_bgtz_ds_ex.S:40
9fc01ef0:	3c149fc0 	lui	s4,0x9fc0
9fc01ef4:	26941ef8 	addiu	s4,s4,7928
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n18_bgtz_ds_ex.S:41
9fc01ef8:	1d000098 	bgtz	t0,9fc0215c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n18_bgtz_ds_ex.S:42
9fc01efc:	0000000d 	break
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n18_bgtz_ds_ex.S:43
9fc01f00:	16570096 	bne	s2,s7,9fc0215c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n18_bgtz_ds_ex.S:44
9fc01f04:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n18_bgtz_ds_ex.S:46
9fc01f08:	24120003 	li	s2,3
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n18_bgtz_ds_ex.S:47
9fc01f0c:	3c170003 	lui	s7,0x3
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n18_bgtz_ds_ex.S:48
9fc01f10:	ad120000 	sw	s2,0(t0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n18_bgtz_ds_ex.S:49
9fc01f14:	3c149fc0 	lui	s4,0x9fc0
9fc01f18:	26941f2c 	addiu	s4,s4,7980
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n18_bgtz_ds_ex.S:50
9fc01f1c:	3c04ba03 	lui	a0,0xba03
9fc01f20:	34844f60 	ori	a0,a0,0x4f60
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n18_bgtz_ds_ex.S:51
9fc01f24:	3c05b615 	lui	a1,0xb615
9fc01f28:	34a5fd67 	ori	a1,a1,0xfd67
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n18_bgtz_ds_ex.S:52
9fc01f2c:	1e40008b 	bgtz	s2,9fc0215c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n18_bgtz_ds_ex.S:53
9fc01f30:	0085b820 	add	s7,a0,a1
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n18_bgtz_ds_ex.S:54
9fc01f34:	16570089 	bne	s2,s7,9fc0215c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n18_bgtz_ds_ex.S:55
9fc01f38:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n18_bgtz_ds_ex.S:56
9fc01f3c:	24120003 	li	s2,3
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n18_bgtz_ds_ex.S:57
9fc01f40:	3c149fc0 	lui	s4,0x9fc0
9fc01f44:	26941f48 	addiu	s4,s4,8008
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n18_bgtz_ds_ex.S:58
9fc01f48:	1d000084 	bgtz	t0,9fc0215c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n18_bgtz_ds_ex.S:59
9fc01f4c:	0085b820 	add	s7,a0,a1
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n18_bgtz_ds_ex.S:60
9fc01f50:	ad170000 	sw	s7,0(t0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n18_bgtz_ds_ex.S:61
9fc01f54:	16570081 	bne	s2,s7,9fc0215c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n18_bgtz_ds_ex.S:62
9fc01f58:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n18_bgtz_ds_ex.S:63
9fc01f5c:	24120003 	li	s2,3
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n18_bgtz_ds_ex.S:64
9fc01f60:	ad120000 	sw	s2,0(t0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n18_bgtz_ds_ex.S:65
9fc01f64:	3c149fc0 	lui	s4,0x9fc0
9fc01f68:	26941f74 	addiu	s4,s4,8052
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n18_bgtz_ds_ex.S:66
9fc01f6c:	3c047fff 	lui	a0,0x7fff
9fc01f70:	3484c19e 	ori	a0,a0,0xc19e
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n18_bgtz_ds_ex.S:67
9fc01f74:	1e400079 	bgtz	s2,9fc0215c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n18_bgtz_ds_ex.S:68
9fc01f78:	20976512 	addi	s7,a0,25874
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n18_bgtz_ds_ex.S:69
9fc01f7c:	16570077 	bne	s2,s7,9fc0215c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n18_bgtz_ds_ex.S:70
9fc01f80:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n18_bgtz_ds_ex.S:71
9fc01f84:	24120003 	li	s2,3
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n18_bgtz_ds_ex.S:72
9fc01f88:	3c149fc0 	lui	s4,0x9fc0
9fc01f8c:	26941f90 	addiu	s4,s4,8080
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n18_bgtz_ds_ex.S:73
9fc01f90:	1d000072 	bgtz	t0,9fc0215c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n18_bgtz_ds_ex.S:74
9fc01f94:	20976512 	addi	s7,a0,25874
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n18_bgtz_ds_ex.S:75
9fc01f98:	16570070 	bne	s2,s7,9fc0215c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n18_bgtz_ds_ex.S:76
9fc01f9c:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n18_bgtz_ds_ex.S:77
9fc01fa0:	24120003 	li	s2,3
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n18_bgtz_ds_ex.S:78
9fc01fa4:	3c149fc0 	lui	s4,0x9fc0
9fc01fa8:	26941fbc 	addiu	s4,s4,8124
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n18_bgtz_ds_ex.S:79
9fc01fac:	3c04a85e 	lui	a0,0xa85e
9fc01fb0:	34847d00 	ori	a0,a0,0x7d00
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n18_bgtz_ds_ex.S:80
9fc01fb4:	3c056b7e 	lui	a1,0x6b7e
9fc01fb8:	34a58e36 	ori	a1,a1,0x8e36
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n18_bgtz_ds_ex.S:81
9fc01fbc:	1e400067 	bgtz	s2,9fc0215c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n18_bgtz_ds_ex.S:82
9fc01fc0:	0085b822 	sub	s7,a0,a1
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n18_bgtz_ds_ex.S:83
9fc01fc4:	16570065 	bne	s2,s7,9fc0215c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n18_bgtz_ds_ex.S:84
9fc01fc8:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n18_bgtz_ds_ex.S:85
9fc01fcc:	24120003 	li	s2,3
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n18_bgtz_ds_ex.S:86
9fc01fd0:	3c149fc0 	lui	s4,0x9fc0
9fc01fd4:	26941fd8 	addiu	s4,s4,8152
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n18_bgtz_ds_ex.S:87
9fc01fd8:	1d000060 	bgtz	t0,9fc0215c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n18_bgtz_ds_ex.S:88
9fc01fdc:	0085b822 	sub	s7,a0,a1
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n18_bgtz_ds_ex.S:89
9fc01fe0:	1657005e 	bne	s2,s7,9fc0215c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n18_bgtz_ds_ex.S:90
9fc01fe4:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n18_bgtz_ds_ex.S:92
9fc01fe8:	24120004 	li	s2,4
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n18_bgtz_ds_ex.S:93
9fc01fec:	3c170004 	lui	s7,0x4
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n18_bgtz_ds_ex.S:94
9fc01ff0:	ad120000 	sw	s2,0(t0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n18_bgtz_ds_ex.S:95
9fc01ff4:	3c149fc0 	lui	s4,0x9fc0
9fc01ff8:	26941ffc 	addiu	s4,s4,8188
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n18_bgtz_ds_ex.S:96
9fc01ffc:	1e400057 	bgtz	s2,9fc0215c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n18_bgtz_ds_ex.S:97
9fc02000:	8d170002 	lw	s7,2(t0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n18_bgtz_ds_ex.S:98
9fc02004:	16570055 	bne	s2,s7,9fc0215c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n18_bgtz_ds_ex.S:99
9fc02008:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n18_bgtz_ds_ex.S:100
9fc0200c:	24120004 	li	s2,4
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n18_bgtz_ds_ex.S:101
9fc02010:	3c149fc0 	lui	s4,0x9fc0
9fc02014:	26942018 	addiu	s4,s4,8216
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n18_bgtz_ds_ex.S:102
9fc02018:	1d000050 	bgtz	t0,9fc0215c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n18_bgtz_ds_ex.S:103
9fc0201c:	8d170002 	lw	s7,2(t0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n18_bgtz_ds_ex.S:104
9fc02020:	1657004e 	bne	s2,s7,9fc0215c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n18_bgtz_ds_ex.S:105
9fc02024:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n18_bgtz_ds_ex.S:106
9fc02028:	24120004 	li	s2,4
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n18_bgtz_ds_ex.S:107
9fc0202c:	3c149fc0 	lui	s4,0x9fc0
9fc02030:	26942034 	addiu	s4,s4,8244
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n18_bgtz_ds_ex.S:108
9fc02034:	1e400049 	bgtz	s2,9fc0215c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n18_bgtz_ds_ex.S:109
9fc02038:	85170001 	lh	s7,1(t0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n18_bgtz_ds_ex.S:110
9fc0203c:	02f2001b 	divu	zero,s7,s2
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n18_bgtz_ds_ex.S:111
9fc02040:	16570046 	bne	s2,s7,9fc0215c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n18_bgtz_ds_ex.S:112
9fc02044:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n18_bgtz_ds_ex.S:113
9fc02048:	24120004 	li	s2,4
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n18_bgtz_ds_ex.S:114
9fc0204c:	3c149fc0 	lui	s4,0x9fc0
9fc02050:	26942054 	addiu	s4,s4,8276
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n18_bgtz_ds_ex.S:115
9fc02054:	1d000041 	bgtz	t0,9fc0215c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n18_bgtz_ds_ex.S:116
9fc02058:	85170001 	lh	s7,1(t0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n18_bgtz_ds_ex.S:117
9fc0205c:	1657003f 	bne	s2,s7,9fc0215c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n18_bgtz_ds_ex.S:118
9fc02060:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n18_bgtz_ds_ex.S:119
9fc02064:	3c149fc0 	lui	s4,0x9fc0
9fc02068:	2694206c 	addiu	s4,s4,8300
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n18_bgtz_ds_ex.S:120
9fc0206c:	1e40003b 	bgtz	s2,9fc0215c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n18_bgtz_ds_ex.S:121
9fc02070:	95170003 	lhu	s7,3(t0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n18_bgtz_ds_ex.S:122
9fc02074:	16570039 	bne	s2,s7,9fc0215c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n18_bgtz_ds_ex.S:123
9fc02078:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n18_bgtz_ds_ex.S:124
9fc0207c:	24120004 	li	s2,4
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n18_bgtz_ds_ex.S:125
9fc02080:	3c149fc0 	lui	s4,0x9fc0
9fc02084:	26942088 	addiu	s4,s4,8328
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n18_bgtz_ds_ex.S:126
9fc02088:	1d000034 	bgtz	t0,9fc0215c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n18_bgtz_ds_ex.S:127
9fc0208c:	95170003 	lhu	s7,3(t0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n18_bgtz_ds_ex.S:128
9fc02090:	16570032 	bne	s2,s7,9fc0215c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n18_bgtz_ds_ex.S:129
9fc02094:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n18_bgtz_ds_ex.S:131
9fc02098:	24120005 	li	s2,5
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n18_bgtz_ds_ex.S:132
9fc0209c:	3c170005 	lui	s7,0x5
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n18_bgtz_ds_ex.S:133
9fc020a0:	ad120000 	sw	s2,0(t0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n18_bgtz_ds_ex.S:134
9fc020a4:	3c149fc0 	lui	s4,0x9fc0
9fc020a8:	269420ac 	addiu	s4,s4,8364
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n18_bgtz_ds_ex.S:135
9fc020ac:	1e40002b 	bgtz	s2,9fc0215c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n18_bgtz_ds_ex.S:136
9fc020b0:	ad170002 	sw	s7,2(t0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n18_bgtz_ds_ex.S:137
9fc020b4:	16570029 	bne	s2,s7,9fc0215c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n18_bgtz_ds_ex.S:138
9fc020b8:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n18_bgtz_ds_ex.S:139
9fc020bc:	24120005 	li	s2,5
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n18_bgtz_ds_ex.S:140
9fc020c0:	3c149fc0 	lui	s4,0x9fc0
9fc020c4:	269420c8 	addiu	s4,s4,8392
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n18_bgtz_ds_ex.S:141
9fc020c8:	1d000024 	bgtz	t0,9fc0215c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n18_bgtz_ds_ex.S:142
9fc020cc:	ad170002 	sw	s7,2(t0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n18_bgtz_ds_ex.S:143
9fc020d0:	16570022 	bne	s2,s7,9fc0215c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n18_bgtz_ds_ex.S:144
9fc020d4:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n18_bgtz_ds_ex.S:145
9fc020d8:	24120005 	li	s2,5
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n18_bgtz_ds_ex.S:146
9fc020dc:	3c149fc0 	lui	s4,0x9fc0
9fc020e0:	269420e4 	addiu	s4,s4,8420
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n18_bgtz_ds_ex.S:147
9fc020e4:	1e40001d 	bgtz	s2,9fc0215c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n18_bgtz_ds_ex.S:148
9fc020e8:	a5170001 	sh	s7,1(t0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n18_bgtz_ds_ex.S:149
9fc020ec:	1657001b 	bne	s2,s7,9fc0215c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n18_bgtz_ds_ex.S:150
9fc020f0:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n18_bgtz_ds_ex.S:151
9fc020f4:	24120005 	li	s2,5
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n18_bgtz_ds_ex.S:152
9fc020f8:	3c149fc0 	lui	s4,0x9fc0
9fc020fc:	26942100 	addiu	s4,s4,8448
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n18_bgtz_ds_ex.S:153
9fc02100:	1d000016 	bgtz	t0,9fc0215c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n18_bgtz_ds_ex.S:154
9fc02104:	a5170001 	sh	s7,1(t0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n18_bgtz_ds_ex.S:155
9fc02108:	16570014 	bne	s2,s7,9fc0215c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n18_bgtz_ds_ex.S:156
9fc0210c:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n18_bgtz_ds_ex.S:159
9fc02110:	24120007 	li	s2,7
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n18_bgtz_ds_ex.S:160
9fc02114:	3c170007 	lui	s7,0x7
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n18_bgtz_ds_ex.S:161
9fc02118:	ad120000 	sw	s2,0(t0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n18_bgtz_ds_ex.S:162
9fc0211c:	3c149fc0 	lui	s4,0x9fc0
9fc02120:	26942124 	addiu	s4,s4,8484
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n18_bgtz_ds_ex.S:163
9fc02124:	1e40000d 	bgtz	s2,9fc0215c <inst_error>
9fc02128:	9e3c56aa 	0x9e3c56aa
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n18_bgtz_ds_ex.S:165
9fc0212c:	02f20018 	mult	s7,s2
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n18_bgtz_ds_ex.S:166
9fc02130:	1657000a 	bne	s2,s7,9fc0215c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n18_bgtz_ds_ex.S:167
9fc02134:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n18_bgtz_ds_ex.S:168
9fc02138:	24120007 	li	s2,7
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n18_bgtz_ds_ex.S:169
9fc0213c:	3c149fc0 	lui	s4,0x9fc0
9fc02140:	26942148 	addiu	s4,s4,8520
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n18_bgtz_ds_ex.S:170
9fc02144:	02f20018 	mult	s7,s2
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n18_bgtz_ds_ex.S:171
9fc02148:	1d000004 	bgtz	t0,9fc0215c <inst_error>
9fc0214c:	ec1ba960 	swc3	$27,-22176(zero)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n18_bgtz_ds_ex.S:173
9fc02150:	16570002 	bne	s2,s7,9fc0215c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n18_bgtz_ds_ex.S:174
9fc02154:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n18_bgtz_ds_ex.S:176
9fc02158:	26730001 	addiu	s3,s3,1

9fc0215c <inst_error>:
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n18_bgtz_ds_ex.S:179
9fc0215c:	00104e00 	sll	t1,s0,0x18
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n18_bgtz_ds_ex.S:180
9fc02160:	01334025 	or	t0,t1,s3
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n18_bgtz_ds_ex.S:181
9fc02164:	ae280000 	sw	t0,0(s1)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n18_bgtz_ds_ex.S:182
9fc02168:	03e00008 	jr	ra
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n18_bgtz_ds_ex.S:183
9fc0216c:	00000000 	nop

9fc02170 <n19_blez_ds_ex_test>:
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n19_blez_ds_ex.S:7
9fc02170:	26100001 	addiu	s0,s0,1
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n19_blez_ds_ex.S:8
9fc02174:	3c08800d 	lui	t0,0x800d
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n19_blez_ds_ex.S:10
9fc02178:	40805800 	mtc0	zero,c0_compare
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n19_blez_ds_ex.S:11
9fc0217c:	3c170040 	lui	s7,0x40
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n19_blez_ds_ex.S:12
9fc02180:	40976000 	mtc0	s7,c0_status
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n19_blez_ds_ex.S:13
9fc02184:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n19_blez_ds_ex.S:16
9fc02188:	24120001 	li	s2,1
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n19_blez_ds_ex.S:17
9fc0218c:	3c170001 	lui	s7,0x1
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n19_blez_ds_ex.S:18
9fc02190:	ad120000 	sw	s2,0(t0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n19_blez_ds_ex.S:19
9fc02194:	3c149fc0 	lui	s4,0x9fc0
9fc02198:	2694219c 	addiu	s4,s4,8604
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n19_blez_ds_ex.S:20
9fc0219c:	180000af 	blez	zero,9fc0245c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n19_blez_ds_ex.S:21
9fc021a0:	0000000c 	syscall
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n19_blez_ds_ex.S:22
9fc021a4:	165700ad 	bne	s2,s7,9fc0245c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n19_blez_ds_ex.S:23
9fc021a8:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n19_blez_ds_ex.S:24
9fc021ac:	24120001 	li	s2,1
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n19_blez_ds_ex.S:25
9fc021b0:	3c149fc0 	lui	s4,0x9fc0
9fc021b4:	269421b8 	addiu	s4,s4,8632
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n19_blez_ds_ex.S:26
9fc021b8:	1a4000a8 	blez	s2,9fc0245c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n19_blez_ds_ex.S:27
9fc021bc:	0000000c 	syscall
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n19_blez_ds_ex.S:28
9fc021c0:	165700a6 	bne	s2,s7,9fc0245c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n19_blez_ds_ex.S:29
9fc021c4:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n19_blez_ds_ex.S:31
9fc021c8:	24120002 	li	s2,2
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n19_blez_ds_ex.S:32
9fc021cc:	3c170002 	lui	s7,0x2
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n19_blez_ds_ex.S:33
9fc021d0:	ad120000 	sw	s2,0(t0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n19_blez_ds_ex.S:34
9fc021d4:	3c149fc0 	lui	s4,0x9fc0
9fc021d8:	269421dc 	addiu	s4,s4,8668
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n19_blez_ds_ex.S:35
9fc021dc:	1800009f 	blez	zero,9fc0245c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n19_blez_ds_ex.S:36
9fc021e0:	0000000d 	break
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n19_blez_ds_ex.S:37
9fc021e4:	1657009d 	bne	s2,s7,9fc0245c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n19_blez_ds_ex.S:38
9fc021e8:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n19_blez_ds_ex.S:39
9fc021ec:	24120002 	li	s2,2
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n19_blez_ds_ex.S:40
9fc021f0:	3c149fc0 	lui	s4,0x9fc0
9fc021f4:	269421f8 	addiu	s4,s4,8696
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n19_blez_ds_ex.S:41
9fc021f8:	1a400098 	blez	s2,9fc0245c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n19_blez_ds_ex.S:42
9fc021fc:	0000000d 	break
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n19_blez_ds_ex.S:43
9fc02200:	16570096 	bne	s2,s7,9fc0245c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n19_blez_ds_ex.S:44
9fc02204:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n19_blez_ds_ex.S:46
9fc02208:	24120003 	li	s2,3
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n19_blez_ds_ex.S:47
9fc0220c:	3c170003 	lui	s7,0x3
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n19_blez_ds_ex.S:48
9fc02210:	ad120000 	sw	s2,0(t0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n19_blez_ds_ex.S:49
9fc02214:	3c149fc0 	lui	s4,0x9fc0
9fc02218:	2694222c 	addiu	s4,s4,8748
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n19_blez_ds_ex.S:50
9fc0221c:	3c04ba03 	lui	a0,0xba03
9fc02220:	34844f60 	ori	a0,a0,0x4f60
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n19_blez_ds_ex.S:51
9fc02224:	3c05b615 	lui	a1,0xb615
9fc02228:	34a5fd67 	ori	a1,a1,0xfd67
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n19_blez_ds_ex.S:52
9fc0222c:	1800008b 	blez	zero,9fc0245c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n19_blez_ds_ex.S:53
9fc02230:	0085b820 	add	s7,a0,a1
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n19_blez_ds_ex.S:54
9fc02234:	16570089 	bne	s2,s7,9fc0245c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n19_blez_ds_ex.S:55
9fc02238:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n19_blez_ds_ex.S:56
9fc0223c:	24120003 	li	s2,3
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n19_blez_ds_ex.S:57
9fc02240:	3c149fc0 	lui	s4,0x9fc0
9fc02244:	26942248 	addiu	s4,s4,8776
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n19_blez_ds_ex.S:58
9fc02248:	1a400084 	blez	s2,9fc0245c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n19_blez_ds_ex.S:59
9fc0224c:	0085b820 	add	s7,a0,a1
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n19_blez_ds_ex.S:60
9fc02250:	ad170000 	sw	s7,0(t0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n19_blez_ds_ex.S:61
9fc02254:	16570081 	bne	s2,s7,9fc0245c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n19_blez_ds_ex.S:62
9fc02258:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n19_blez_ds_ex.S:63
9fc0225c:	24120003 	li	s2,3
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n19_blez_ds_ex.S:64
9fc02260:	ad120000 	sw	s2,0(t0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n19_blez_ds_ex.S:65
9fc02264:	3c149fc0 	lui	s4,0x9fc0
9fc02268:	26942274 	addiu	s4,s4,8820
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n19_blez_ds_ex.S:66
9fc0226c:	3c047fff 	lui	a0,0x7fff
9fc02270:	3484c19e 	ori	a0,a0,0xc19e
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n19_blez_ds_ex.S:67
9fc02274:	18000079 	blez	zero,9fc0245c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n19_blez_ds_ex.S:68
9fc02278:	20976512 	addi	s7,a0,25874
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n19_blez_ds_ex.S:69
9fc0227c:	16570077 	bne	s2,s7,9fc0245c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n19_blez_ds_ex.S:70
9fc02280:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n19_blez_ds_ex.S:71
9fc02284:	24120003 	li	s2,3
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n19_blez_ds_ex.S:72
9fc02288:	3c149fc0 	lui	s4,0x9fc0
9fc0228c:	26942290 	addiu	s4,s4,8848
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n19_blez_ds_ex.S:73
9fc02290:	1a400072 	blez	s2,9fc0245c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n19_blez_ds_ex.S:74
9fc02294:	20976512 	addi	s7,a0,25874
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n19_blez_ds_ex.S:75
9fc02298:	16570070 	bne	s2,s7,9fc0245c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n19_blez_ds_ex.S:76
9fc0229c:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n19_blez_ds_ex.S:77
9fc022a0:	24120003 	li	s2,3
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n19_blez_ds_ex.S:78
9fc022a4:	3c149fc0 	lui	s4,0x9fc0
9fc022a8:	269422bc 	addiu	s4,s4,8892
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n19_blez_ds_ex.S:79
9fc022ac:	3c04a85e 	lui	a0,0xa85e
9fc022b0:	34847d00 	ori	a0,a0,0x7d00
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n19_blez_ds_ex.S:80
9fc022b4:	3c056b7e 	lui	a1,0x6b7e
9fc022b8:	34a58e36 	ori	a1,a1,0x8e36
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n19_blez_ds_ex.S:81
9fc022bc:	18000067 	blez	zero,9fc0245c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n19_blez_ds_ex.S:82
9fc022c0:	0085b822 	sub	s7,a0,a1
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n19_blez_ds_ex.S:83
9fc022c4:	16570065 	bne	s2,s7,9fc0245c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n19_blez_ds_ex.S:84
9fc022c8:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n19_blez_ds_ex.S:85
9fc022cc:	24120003 	li	s2,3
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n19_blez_ds_ex.S:86
9fc022d0:	3c149fc0 	lui	s4,0x9fc0
9fc022d4:	269422d8 	addiu	s4,s4,8920
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n19_blez_ds_ex.S:87
9fc022d8:	1a400060 	blez	s2,9fc0245c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n19_blez_ds_ex.S:88
9fc022dc:	0085b822 	sub	s7,a0,a1
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n19_blez_ds_ex.S:89
9fc022e0:	1657005e 	bne	s2,s7,9fc0245c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n19_blez_ds_ex.S:90
9fc022e4:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n19_blez_ds_ex.S:92
9fc022e8:	24120004 	li	s2,4
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n19_blez_ds_ex.S:93
9fc022ec:	3c170004 	lui	s7,0x4
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n19_blez_ds_ex.S:94
9fc022f0:	ad120000 	sw	s2,0(t0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n19_blez_ds_ex.S:95
9fc022f4:	3c149fc0 	lui	s4,0x9fc0
9fc022f8:	269422fc 	addiu	s4,s4,8956
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n19_blez_ds_ex.S:96
9fc022fc:	18000057 	blez	zero,9fc0245c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n19_blez_ds_ex.S:97
9fc02300:	8d170002 	lw	s7,2(t0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n19_blez_ds_ex.S:98
9fc02304:	16570055 	bne	s2,s7,9fc0245c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n19_blez_ds_ex.S:99
9fc02308:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n19_blez_ds_ex.S:100
9fc0230c:	24120004 	li	s2,4
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n19_blez_ds_ex.S:101
9fc02310:	3c149fc0 	lui	s4,0x9fc0
9fc02314:	26942318 	addiu	s4,s4,8984
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n19_blez_ds_ex.S:102
9fc02318:	1a400050 	blez	s2,9fc0245c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n19_blez_ds_ex.S:103
9fc0231c:	8d170002 	lw	s7,2(t0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n19_blez_ds_ex.S:104
9fc02320:	1657004e 	bne	s2,s7,9fc0245c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n19_blez_ds_ex.S:105
9fc02324:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n19_blez_ds_ex.S:106
9fc02328:	24120004 	li	s2,4
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n19_blez_ds_ex.S:107
9fc0232c:	3c149fc0 	lui	s4,0x9fc0
9fc02330:	26942334 	addiu	s4,s4,9012
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n19_blez_ds_ex.S:108
9fc02334:	18000049 	blez	zero,9fc0245c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n19_blez_ds_ex.S:109
9fc02338:	85170001 	lh	s7,1(t0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n19_blez_ds_ex.S:110
9fc0233c:	02f2001b 	divu	zero,s7,s2
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n19_blez_ds_ex.S:111
9fc02340:	16570046 	bne	s2,s7,9fc0245c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n19_blez_ds_ex.S:112
9fc02344:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n19_blez_ds_ex.S:113
9fc02348:	24120004 	li	s2,4
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n19_blez_ds_ex.S:114
9fc0234c:	3c149fc0 	lui	s4,0x9fc0
9fc02350:	26942354 	addiu	s4,s4,9044
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n19_blez_ds_ex.S:115
9fc02354:	1a400041 	blez	s2,9fc0245c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n19_blez_ds_ex.S:116
9fc02358:	85170001 	lh	s7,1(t0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n19_blez_ds_ex.S:117
9fc0235c:	1657003f 	bne	s2,s7,9fc0245c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n19_blez_ds_ex.S:118
9fc02360:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n19_blez_ds_ex.S:119
9fc02364:	3c149fc0 	lui	s4,0x9fc0
9fc02368:	2694236c 	addiu	s4,s4,9068
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n19_blez_ds_ex.S:120
9fc0236c:	1800003b 	blez	zero,9fc0245c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n19_blez_ds_ex.S:121
9fc02370:	95170003 	lhu	s7,3(t0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n19_blez_ds_ex.S:122
9fc02374:	16570039 	bne	s2,s7,9fc0245c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n19_blez_ds_ex.S:123
9fc02378:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n19_blez_ds_ex.S:124
9fc0237c:	24120004 	li	s2,4
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n19_blez_ds_ex.S:125
9fc02380:	3c149fc0 	lui	s4,0x9fc0
9fc02384:	26942388 	addiu	s4,s4,9096
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n19_blez_ds_ex.S:126
9fc02388:	1a400034 	blez	s2,9fc0245c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n19_blez_ds_ex.S:127
9fc0238c:	95170003 	lhu	s7,3(t0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n19_blez_ds_ex.S:128
9fc02390:	16570032 	bne	s2,s7,9fc0245c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n19_blez_ds_ex.S:129
9fc02394:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n19_blez_ds_ex.S:131
9fc02398:	24120005 	li	s2,5
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n19_blez_ds_ex.S:132
9fc0239c:	3c170005 	lui	s7,0x5
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n19_blez_ds_ex.S:133
9fc023a0:	ad120000 	sw	s2,0(t0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n19_blez_ds_ex.S:134
9fc023a4:	3c149fc0 	lui	s4,0x9fc0
9fc023a8:	269423ac 	addiu	s4,s4,9132
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n19_blez_ds_ex.S:135
9fc023ac:	1800002b 	blez	zero,9fc0245c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n19_blez_ds_ex.S:136
9fc023b0:	ad170002 	sw	s7,2(t0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n19_blez_ds_ex.S:137
9fc023b4:	16570029 	bne	s2,s7,9fc0245c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n19_blez_ds_ex.S:138
9fc023b8:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n19_blez_ds_ex.S:139
9fc023bc:	24120005 	li	s2,5
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n19_blez_ds_ex.S:140
9fc023c0:	3c149fc0 	lui	s4,0x9fc0
9fc023c4:	269423c8 	addiu	s4,s4,9160
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n19_blez_ds_ex.S:141
9fc023c8:	1a400024 	blez	s2,9fc0245c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n19_blez_ds_ex.S:142
9fc023cc:	ad170002 	sw	s7,2(t0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n19_blez_ds_ex.S:143
9fc023d0:	16570022 	bne	s2,s7,9fc0245c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n19_blez_ds_ex.S:144
9fc023d4:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n19_blez_ds_ex.S:145
9fc023d8:	24120005 	li	s2,5
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n19_blez_ds_ex.S:146
9fc023dc:	3c149fc0 	lui	s4,0x9fc0
9fc023e0:	269423e4 	addiu	s4,s4,9188
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n19_blez_ds_ex.S:147
9fc023e4:	1800001d 	blez	zero,9fc0245c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n19_blez_ds_ex.S:148
9fc023e8:	a5170001 	sh	s7,1(t0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n19_blez_ds_ex.S:149
9fc023ec:	1657001b 	bne	s2,s7,9fc0245c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n19_blez_ds_ex.S:150
9fc023f0:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n19_blez_ds_ex.S:151
9fc023f4:	24120005 	li	s2,5
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n19_blez_ds_ex.S:152
9fc023f8:	3c149fc0 	lui	s4,0x9fc0
9fc023fc:	26942400 	addiu	s4,s4,9216
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n19_blez_ds_ex.S:153
9fc02400:	1a400016 	blez	s2,9fc0245c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n19_blez_ds_ex.S:154
9fc02404:	a5170001 	sh	s7,1(t0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n19_blez_ds_ex.S:155
9fc02408:	16570014 	bne	s2,s7,9fc0245c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n19_blez_ds_ex.S:156
9fc0240c:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n19_blez_ds_ex.S:159
9fc02410:	24120007 	li	s2,7
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n19_blez_ds_ex.S:160
9fc02414:	3c170007 	lui	s7,0x7
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n19_blez_ds_ex.S:161
9fc02418:	ad120000 	sw	s2,0(t0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n19_blez_ds_ex.S:162
9fc0241c:	3c149fc0 	lui	s4,0x9fc0
9fc02420:	26942424 	addiu	s4,s4,9252
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n19_blez_ds_ex.S:163
9fc02424:	1800000d 	blez	zero,9fc0245c <inst_error>
9fc02428:	9e3c56aa 	0x9e3c56aa
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n19_blez_ds_ex.S:165
9fc0242c:	02f20018 	mult	s7,s2
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n19_blez_ds_ex.S:166
9fc02430:	1657000a 	bne	s2,s7,9fc0245c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n19_blez_ds_ex.S:167
9fc02434:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n19_blez_ds_ex.S:168
9fc02438:	24120007 	li	s2,7
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n19_blez_ds_ex.S:169
9fc0243c:	3c149fc0 	lui	s4,0x9fc0
9fc02440:	26942448 	addiu	s4,s4,9288
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n19_blez_ds_ex.S:170
9fc02444:	02f20018 	mult	s7,s2
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n19_blez_ds_ex.S:171
9fc02448:	1a400004 	blez	s2,9fc0245c <inst_error>
9fc0244c:	ec1ba960 	swc3	$27,-22176(zero)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n19_blez_ds_ex.S:173
9fc02450:	16570002 	bne	s2,s7,9fc0245c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n19_blez_ds_ex.S:174
9fc02454:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n19_blez_ds_ex.S:176
9fc02458:	26730001 	addiu	s3,s3,1

9fc0245c <inst_error>:
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n19_blez_ds_ex.S:179
9fc0245c:	00104e00 	sll	t1,s0,0x18
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n19_blez_ds_ex.S:180
9fc02460:	01334025 	or	t0,t1,s3
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n19_blez_ds_ex.S:181
9fc02464:	ae280000 	sw	t0,0(s1)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n19_blez_ds_ex.S:182
9fc02468:	03e00008 	jr	ra
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n19_blez_ds_ex.S:183
9fc0246c:	00000000 	nop

9fc02470 <n1_syscall_ex_test>:
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n1_syscall_ex.S:7
9fc02470:	26100001 	addiu	s0,s0,1
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n1_syscall_ex.S:8
9fc02474:	3c08800d 	lui	t0,0x800d
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n1_syscall_ex.S:9
9fc02478:	24120001 	li	s2,1
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n1_syscall_ex.S:10
9fc0247c:	ad120000 	sw	s2,0(t0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n1_syscall_ex.S:12
9fc02480:	40805800 	mtc0	zero,c0_compare
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n1_syscall_ex.S:13
9fc02484:	3c170040 	lui	s7,0x40
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n1_syscall_ex.S:14
9fc02488:	40976000 	mtc0	s7,c0_status
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n1_syscall_ex.S:15
9fc0248c:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n1_syscall_ex.S:16
9fc02490:	3c170001 	lui	s7,0x1
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n1_syscall_ex.S:19
9fc02494:	3c149fc0 	lui	s4,0x9fc0
9fc02498:	2694249c 	addiu	s4,s4,9372

9fc0249c <syscall_pc1>:
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n1_syscall_ex.S:21
9fc0249c:	0000000c 	syscall
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n1_syscall_ex.S:22
9fc024a0:	1657003c 	bne	s2,s7,9fc02594 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n1_syscall_ex.S:23
9fc024a4:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n1_syscall_ex.S:25
9fc024a8:	24120001 	li	s2,1
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n1_syscall_ex.S:26
9fc024ac:	3c149fc0 	lui	s4,0x9fc0
9fc024b0:	269424bc 	addiu	s4,s4,9404
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n1_syscall_ex.S:27
9fc024b4:	ad080004 	sw	t0,4(t0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n1_syscall_ex.S:28
9fc024b8:	ad140004 	sw	s4,4(t0)

9fc024bc <syscall_pc2>:
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n1_syscall_ex.S:30
9fc024bc:	0000000c 	syscall
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n1_syscall_ex.S:31
9fc024c0:	ad140000 	sw	s4,0(t0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n1_syscall_ex.S:32
9fc024c4:	8d090004 	lw	t1,4(t0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n1_syscall_ex.S:33
9fc024c8:	15340032 	bne	t1,s4,9fc02594 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n1_syscall_ex.S:34
9fc024cc:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n1_syscall_ex.S:35
9fc024d0:	16570030 	bne	s2,s7,9fc02594 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n1_syscall_ex.S:36
9fc024d4:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n1_syscall_ex.S:37
9fc024d8:	24120001 	li	s2,1
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n1_syscall_ex.S:38
9fc024dc:	ad120000 	sw	s2,0(t0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n1_syscall_ex.S:40
9fc024e0:	24120001 	li	s2,1
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n1_syscall_ex.S:41
9fc024e4:	3c149fc0 	lui	s4,0x9fc0
9fc024e8:	269424f4 	addiu	s4,s4,9460
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n1_syscall_ex.S:42
9fc024ec:	01000011 	mthi	t0
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n1_syscall_ex.S:43
9fc024f0:	0110001b 	divu	zero,t0,s0

9fc024f4 <syscall_pc3>:
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n1_syscall_ex.S:45
9fc024f4:	0000000c 	syscall
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n1_syscall_ex.S:46
9fc024f8:	00004810 	mfhi	t1
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n1_syscall_ex.S:47
9fc024fc:	11280025 	beq	t1,t0,9fc02594 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n1_syscall_ex.S:48
9fc02500:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n1_syscall_ex.S:49
9fc02504:	16570023 	bne	s2,s7,9fc02594 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n1_syscall_ex.S:50
9fc02508:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n1_syscall_ex.S:52
9fc0250c:	24120001 	li	s2,1
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n1_syscall_ex.S:53
9fc02510:	3c149fc0 	lui	s4,0x9fc0
9fc02514:	26942518 	addiu	s4,s4,9496

9fc02518 <syscall_pc4>:
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n1_syscall_ex.S:55
9fc02518:	0000000c 	syscall
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n1_syscall_ex.S:56
9fc0251c:	0208001b 	divu	zero,s0,t0
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n1_syscall_ex.S:57
9fc02520:	1657001c 	bne	s2,s7,9fc02594 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n1_syscall_ex.S:58
9fc02524:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n1_syscall_ex.S:60
9fc02528:	24120001 	li	s2,1
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n1_syscall_ex.S:61
9fc0252c:	3c149fc0 	lui	s4,0x9fc0
9fc02530:	2694253c 	addiu	s4,s4,9532
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n1_syscall_ex.S:62
9fc02534:	01000013 	mtlo	t0
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n1_syscall_ex.S:63
9fc02538:	01100019 	multu	t0,s0

9fc0253c <syscall_pc5>:
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n1_syscall_ex.S:65
9fc0253c:	0000000c 	syscall
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n1_syscall_ex.S:66
9fc02540:	00004810 	mfhi	t1
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n1_syscall_ex.S:67
9fc02544:	11280013 	beq	t1,t0,9fc02594 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n1_syscall_ex.S:68
9fc02548:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n1_syscall_ex.S:69
9fc0254c:	16570011 	bne	s2,s7,9fc02594 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n1_syscall_ex.S:70
9fc02550:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n1_syscall_ex.S:72
9fc02554:	24120001 	li	s2,1
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n1_syscall_ex.S:73
9fc02558:	3c149fc0 	lui	s4,0x9fc0
9fc0255c:	26942560 	addiu	s4,s4,9568

9fc02560 <syscall_pc6>:
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n1_syscall_ex.S:75
9fc02560:	0000000c 	syscall
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n1_syscall_ex.S:76
9fc02564:	01120019 	multu	t0,s2
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n1_syscall_ex.S:77
9fc02568:	1657000a 	bne	s2,s7,9fc02594 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n1_syscall_ex.S:78
9fc0256c:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n1_syscall_ex.S:80
9fc02570:	24120001 	li	s2,1
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n1_syscall_ex.S:81
9fc02574:	3c149fc0 	lui	s4,0x9fc0
9fc02578:	26942580 	addiu	s4,s4,9600
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n1_syscall_ex.S:82
9fc0257c:	40927000 	mtc0	s2,c0_epc

9fc02580 <syscall_pc7>:
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n1_syscall_ex.S:84
9fc02580:	0000000c 	syscall
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n1_syscall_ex.S:85
9fc02584:	40887000 	mtc0	t0,c0_epc
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n1_syscall_ex.S:86
9fc02588:	16570002 	bne	s2,s7,9fc02594 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n1_syscall_ex.S:87
9fc0258c:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n1_syscall_ex.S:89
9fc02590:	26730001 	addiu	s3,s3,1

9fc02594 <inst_error>:
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n1_syscall_ex.S:92
9fc02594:	00104e00 	sll	t1,s0,0x18
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n1_syscall_ex.S:93
9fc02598:	01334025 	or	t0,t1,s3
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n1_syscall_ex.S:94
9fc0259c:	ae280000 	sw	t0,0(s1)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n1_syscall_ex.S:95
9fc025a0:	03e00008 	jr	ra
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n1_syscall_ex.S:96
9fc025a4:	00000000 	nop
	...

9fc025b0 <n20_bltz_ds_ex_test>:
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n20_bltz_ds_ex.S:7
9fc025b0:	26100001 	addiu	s0,s0,1
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n20_bltz_ds_ex.S:8
9fc025b4:	3c08800d 	lui	t0,0x800d
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n20_bltz_ds_ex.S:10
9fc025b8:	40805800 	mtc0	zero,c0_compare
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n20_bltz_ds_ex.S:11
9fc025bc:	3c170040 	lui	s7,0x40
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n20_bltz_ds_ex.S:12
9fc025c0:	40976000 	mtc0	s7,c0_status
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n20_bltz_ds_ex.S:13
9fc025c4:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n20_bltz_ds_ex.S:16
9fc025c8:	24120001 	li	s2,1
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n20_bltz_ds_ex.S:17
9fc025cc:	3c170001 	lui	s7,0x1
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n20_bltz_ds_ex.S:18
9fc025d0:	ad120000 	sw	s2,0(t0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n20_bltz_ds_ex.S:19
9fc025d4:	3c149fc0 	lui	s4,0x9fc0
9fc025d8:	269425dc 	addiu	s4,s4,9692
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n20_bltz_ds_ex.S:20
9fc025dc:	050000af 	bltz	t0,9fc0289c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n20_bltz_ds_ex.S:21
9fc025e0:	0000000c 	syscall
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n20_bltz_ds_ex.S:22
9fc025e4:	165700ad 	bne	s2,s7,9fc0289c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n20_bltz_ds_ex.S:23
9fc025e8:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n20_bltz_ds_ex.S:24
9fc025ec:	24120001 	li	s2,1
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n20_bltz_ds_ex.S:25
9fc025f0:	3c149fc0 	lui	s4,0x9fc0
9fc025f4:	269425f8 	addiu	s4,s4,9720
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n20_bltz_ds_ex.S:26
9fc025f8:	064000a8 	bltz	s2,9fc0289c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n20_bltz_ds_ex.S:27
9fc025fc:	0000000c 	syscall
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n20_bltz_ds_ex.S:28
9fc02600:	165700a6 	bne	s2,s7,9fc0289c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n20_bltz_ds_ex.S:29
9fc02604:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n20_bltz_ds_ex.S:31
9fc02608:	24120002 	li	s2,2
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n20_bltz_ds_ex.S:32
9fc0260c:	3c170002 	lui	s7,0x2
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n20_bltz_ds_ex.S:33
9fc02610:	ad120000 	sw	s2,0(t0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n20_bltz_ds_ex.S:34
9fc02614:	3c149fc0 	lui	s4,0x9fc0
9fc02618:	2694261c 	addiu	s4,s4,9756
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n20_bltz_ds_ex.S:35
9fc0261c:	0500009f 	bltz	t0,9fc0289c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n20_bltz_ds_ex.S:36
9fc02620:	0000000d 	break
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n20_bltz_ds_ex.S:37
9fc02624:	1657009d 	bne	s2,s7,9fc0289c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n20_bltz_ds_ex.S:38
9fc02628:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n20_bltz_ds_ex.S:39
9fc0262c:	24120002 	li	s2,2
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n20_bltz_ds_ex.S:40
9fc02630:	3c149fc0 	lui	s4,0x9fc0
9fc02634:	26942638 	addiu	s4,s4,9784
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n20_bltz_ds_ex.S:41
9fc02638:	06400098 	bltz	s2,9fc0289c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n20_bltz_ds_ex.S:42
9fc0263c:	0000000d 	break
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n20_bltz_ds_ex.S:43
9fc02640:	16570096 	bne	s2,s7,9fc0289c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n20_bltz_ds_ex.S:44
9fc02644:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n20_bltz_ds_ex.S:46
9fc02648:	24120003 	li	s2,3
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n20_bltz_ds_ex.S:47
9fc0264c:	3c170003 	lui	s7,0x3
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n20_bltz_ds_ex.S:48
9fc02650:	ad120000 	sw	s2,0(t0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n20_bltz_ds_ex.S:49
9fc02654:	3c149fc0 	lui	s4,0x9fc0
9fc02658:	2694266c 	addiu	s4,s4,9836
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n20_bltz_ds_ex.S:50
9fc0265c:	3c04ba03 	lui	a0,0xba03
9fc02660:	34844f60 	ori	a0,a0,0x4f60
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n20_bltz_ds_ex.S:51
9fc02664:	3c05b615 	lui	a1,0xb615
9fc02668:	34a5fd67 	ori	a1,a1,0xfd67
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n20_bltz_ds_ex.S:52
9fc0266c:	0500008b 	bltz	t0,9fc0289c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n20_bltz_ds_ex.S:53
9fc02670:	0085b820 	add	s7,a0,a1
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n20_bltz_ds_ex.S:54
9fc02674:	16570089 	bne	s2,s7,9fc0289c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n20_bltz_ds_ex.S:55
9fc02678:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n20_bltz_ds_ex.S:56
9fc0267c:	24120003 	li	s2,3
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n20_bltz_ds_ex.S:57
9fc02680:	3c149fc0 	lui	s4,0x9fc0
9fc02684:	26942688 	addiu	s4,s4,9864
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n20_bltz_ds_ex.S:58
9fc02688:	06400084 	bltz	s2,9fc0289c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n20_bltz_ds_ex.S:59
9fc0268c:	0085b820 	add	s7,a0,a1
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n20_bltz_ds_ex.S:60
9fc02690:	ad170000 	sw	s7,0(t0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n20_bltz_ds_ex.S:61
9fc02694:	16570081 	bne	s2,s7,9fc0289c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n20_bltz_ds_ex.S:62
9fc02698:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n20_bltz_ds_ex.S:63
9fc0269c:	24120003 	li	s2,3
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n20_bltz_ds_ex.S:64
9fc026a0:	ad120000 	sw	s2,0(t0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n20_bltz_ds_ex.S:65
9fc026a4:	3c149fc0 	lui	s4,0x9fc0
9fc026a8:	269426b4 	addiu	s4,s4,9908
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n20_bltz_ds_ex.S:66
9fc026ac:	3c047fff 	lui	a0,0x7fff
9fc026b0:	3484c19e 	ori	a0,a0,0xc19e
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n20_bltz_ds_ex.S:67
9fc026b4:	05000079 	bltz	t0,9fc0289c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n20_bltz_ds_ex.S:68
9fc026b8:	20976512 	addi	s7,a0,25874
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n20_bltz_ds_ex.S:69
9fc026bc:	16570077 	bne	s2,s7,9fc0289c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n20_bltz_ds_ex.S:70
9fc026c0:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n20_bltz_ds_ex.S:71
9fc026c4:	24120003 	li	s2,3
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n20_bltz_ds_ex.S:72
9fc026c8:	3c149fc0 	lui	s4,0x9fc0
9fc026cc:	269426d0 	addiu	s4,s4,9936
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n20_bltz_ds_ex.S:73
9fc026d0:	06400072 	bltz	s2,9fc0289c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n20_bltz_ds_ex.S:74
9fc026d4:	20976512 	addi	s7,a0,25874
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n20_bltz_ds_ex.S:75
9fc026d8:	16570070 	bne	s2,s7,9fc0289c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n20_bltz_ds_ex.S:76
9fc026dc:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n20_bltz_ds_ex.S:77
9fc026e0:	24120003 	li	s2,3
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n20_bltz_ds_ex.S:78
9fc026e4:	3c149fc0 	lui	s4,0x9fc0
9fc026e8:	269426fc 	addiu	s4,s4,9980
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n20_bltz_ds_ex.S:79
9fc026ec:	3c04a85e 	lui	a0,0xa85e
9fc026f0:	34847d00 	ori	a0,a0,0x7d00
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n20_bltz_ds_ex.S:80
9fc026f4:	3c056b7e 	lui	a1,0x6b7e
9fc026f8:	34a58e36 	ori	a1,a1,0x8e36
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n20_bltz_ds_ex.S:81
9fc026fc:	05000067 	bltz	t0,9fc0289c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n20_bltz_ds_ex.S:82
9fc02700:	0085b822 	sub	s7,a0,a1
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n20_bltz_ds_ex.S:83
9fc02704:	16570065 	bne	s2,s7,9fc0289c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n20_bltz_ds_ex.S:84
9fc02708:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n20_bltz_ds_ex.S:85
9fc0270c:	24120003 	li	s2,3
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n20_bltz_ds_ex.S:86
9fc02710:	3c149fc0 	lui	s4,0x9fc0
9fc02714:	26942718 	addiu	s4,s4,10008
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n20_bltz_ds_ex.S:87
9fc02718:	06400060 	bltz	s2,9fc0289c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n20_bltz_ds_ex.S:88
9fc0271c:	0085b822 	sub	s7,a0,a1
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n20_bltz_ds_ex.S:89
9fc02720:	1657005e 	bne	s2,s7,9fc0289c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n20_bltz_ds_ex.S:90
9fc02724:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n20_bltz_ds_ex.S:92
9fc02728:	24120004 	li	s2,4
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n20_bltz_ds_ex.S:93
9fc0272c:	3c170004 	lui	s7,0x4
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n20_bltz_ds_ex.S:94
9fc02730:	ad120000 	sw	s2,0(t0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n20_bltz_ds_ex.S:95
9fc02734:	3c149fc0 	lui	s4,0x9fc0
9fc02738:	2694273c 	addiu	s4,s4,10044
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n20_bltz_ds_ex.S:96
9fc0273c:	05000057 	bltz	t0,9fc0289c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n20_bltz_ds_ex.S:97
9fc02740:	8d170002 	lw	s7,2(t0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n20_bltz_ds_ex.S:98
9fc02744:	16570055 	bne	s2,s7,9fc0289c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n20_bltz_ds_ex.S:99
9fc02748:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n20_bltz_ds_ex.S:100
9fc0274c:	24120004 	li	s2,4
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n20_bltz_ds_ex.S:101
9fc02750:	3c149fc0 	lui	s4,0x9fc0
9fc02754:	26942758 	addiu	s4,s4,10072
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n20_bltz_ds_ex.S:102
9fc02758:	06400050 	bltz	s2,9fc0289c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n20_bltz_ds_ex.S:103
9fc0275c:	8d170002 	lw	s7,2(t0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n20_bltz_ds_ex.S:104
9fc02760:	1657004e 	bne	s2,s7,9fc0289c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n20_bltz_ds_ex.S:105
9fc02764:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n20_bltz_ds_ex.S:106
9fc02768:	24120004 	li	s2,4
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n20_bltz_ds_ex.S:107
9fc0276c:	3c149fc0 	lui	s4,0x9fc0
9fc02770:	26942774 	addiu	s4,s4,10100
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n20_bltz_ds_ex.S:108
9fc02774:	05000049 	bltz	t0,9fc0289c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n20_bltz_ds_ex.S:109
9fc02778:	85170001 	lh	s7,1(t0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n20_bltz_ds_ex.S:110
9fc0277c:	02f2001b 	divu	zero,s7,s2
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n20_bltz_ds_ex.S:111
9fc02780:	16570046 	bne	s2,s7,9fc0289c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n20_bltz_ds_ex.S:112
9fc02784:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n20_bltz_ds_ex.S:113
9fc02788:	24120004 	li	s2,4
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n20_bltz_ds_ex.S:114
9fc0278c:	3c149fc0 	lui	s4,0x9fc0
9fc02790:	26942794 	addiu	s4,s4,10132
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n20_bltz_ds_ex.S:115
9fc02794:	06400041 	bltz	s2,9fc0289c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n20_bltz_ds_ex.S:116
9fc02798:	85170001 	lh	s7,1(t0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n20_bltz_ds_ex.S:117
9fc0279c:	1657003f 	bne	s2,s7,9fc0289c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n20_bltz_ds_ex.S:118
9fc027a0:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n20_bltz_ds_ex.S:119
9fc027a4:	3c149fc0 	lui	s4,0x9fc0
9fc027a8:	269427ac 	addiu	s4,s4,10156
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n20_bltz_ds_ex.S:120
9fc027ac:	0500003b 	bltz	t0,9fc0289c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n20_bltz_ds_ex.S:121
9fc027b0:	95170003 	lhu	s7,3(t0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n20_bltz_ds_ex.S:122
9fc027b4:	16570039 	bne	s2,s7,9fc0289c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n20_bltz_ds_ex.S:123
9fc027b8:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n20_bltz_ds_ex.S:124
9fc027bc:	24120004 	li	s2,4
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n20_bltz_ds_ex.S:125
9fc027c0:	3c149fc0 	lui	s4,0x9fc0
9fc027c4:	269427c8 	addiu	s4,s4,10184
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n20_bltz_ds_ex.S:126
9fc027c8:	06400034 	bltz	s2,9fc0289c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n20_bltz_ds_ex.S:127
9fc027cc:	95170003 	lhu	s7,3(t0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n20_bltz_ds_ex.S:128
9fc027d0:	16570032 	bne	s2,s7,9fc0289c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n20_bltz_ds_ex.S:129
9fc027d4:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n20_bltz_ds_ex.S:131
9fc027d8:	24120005 	li	s2,5
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n20_bltz_ds_ex.S:132
9fc027dc:	3c170005 	lui	s7,0x5
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n20_bltz_ds_ex.S:133
9fc027e0:	ad120000 	sw	s2,0(t0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n20_bltz_ds_ex.S:134
9fc027e4:	3c149fc0 	lui	s4,0x9fc0
9fc027e8:	269427ec 	addiu	s4,s4,10220
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n20_bltz_ds_ex.S:135
9fc027ec:	0500002b 	bltz	t0,9fc0289c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n20_bltz_ds_ex.S:136
9fc027f0:	ad170002 	sw	s7,2(t0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n20_bltz_ds_ex.S:137
9fc027f4:	16570029 	bne	s2,s7,9fc0289c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n20_bltz_ds_ex.S:138
9fc027f8:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n20_bltz_ds_ex.S:139
9fc027fc:	24120005 	li	s2,5
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n20_bltz_ds_ex.S:140
9fc02800:	3c149fc0 	lui	s4,0x9fc0
9fc02804:	26942808 	addiu	s4,s4,10248
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n20_bltz_ds_ex.S:141
9fc02808:	06400024 	bltz	s2,9fc0289c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n20_bltz_ds_ex.S:142
9fc0280c:	ad170002 	sw	s7,2(t0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n20_bltz_ds_ex.S:143
9fc02810:	16570022 	bne	s2,s7,9fc0289c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n20_bltz_ds_ex.S:144
9fc02814:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n20_bltz_ds_ex.S:145
9fc02818:	24120005 	li	s2,5
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n20_bltz_ds_ex.S:146
9fc0281c:	3c149fc0 	lui	s4,0x9fc0
9fc02820:	26942824 	addiu	s4,s4,10276
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n20_bltz_ds_ex.S:147
9fc02824:	0500001d 	bltz	t0,9fc0289c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n20_bltz_ds_ex.S:148
9fc02828:	a5170001 	sh	s7,1(t0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n20_bltz_ds_ex.S:149
9fc0282c:	1657001b 	bne	s2,s7,9fc0289c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n20_bltz_ds_ex.S:150
9fc02830:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n20_bltz_ds_ex.S:151
9fc02834:	24120005 	li	s2,5
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n20_bltz_ds_ex.S:152
9fc02838:	3c149fc0 	lui	s4,0x9fc0
9fc0283c:	26942840 	addiu	s4,s4,10304
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n20_bltz_ds_ex.S:153
9fc02840:	06400016 	bltz	s2,9fc0289c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n20_bltz_ds_ex.S:154
9fc02844:	a5170001 	sh	s7,1(t0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n20_bltz_ds_ex.S:155
9fc02848:	16570014 	bne	s2,s7,9fc0289c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n20_bltz_ds_ex.S:156
9fc0284c:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n20_bltz_ds_ex.S:159
9fc02850:	24120007 	li	s2,7
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n20_bltz_ds_ex.S:160
9fc02854:	3c170007 	lui	s7,0x7
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n20_bltz_ds_ex.S:161
9fc02858:	ad120000 	sw	s2,0(t0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n20_bltz_ds_ex.S:162
9fc0285c:	3c149fc0 	lui	s4,0x9fc0
9fc02860:	26942864 	addiu	s4,s4,10340
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n20_bltz_ds_ex.S:163
9fc02864:	0500000d 	bltz	t0,9fc0289c <inst_error>
9fc02868:	9e3c56aa 	0x9e3c56aa
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n20_bltz_ds_ex.S:165
9fc0286c:	02f20018 	mult	s7,s2
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n20_bltz_ds_ex.S:166
9fc02870:	1657000a 	bne	s2,s7,9fc0289c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n20_bltz_ds_ex.S:167
9fc02874:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n20_bltz_ds_ex.S:168
9fc02878:	24120007 	li	s2,7
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n20_bltz_ds_ex.S:169
9fc0287c:	3c149fc0 	lui	s4,0x9fc0
9fc02880:	26942888 	addiu	s4,s4,10376
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n20_bltz_ds_ex.S:170
9fc02884:	02f20018 	mult	s7,s2
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n20_bltz_ds_ex.S:171
9fc02888:	06400004 	bltz	s2,9fc0289c <inst_error>
9fc0288c:	ec1ba960 	swc3	$27,-22176(zero)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n20_bltz_ds_ex.S:173
9fc02890:	16570002 	bne	s2,s7,9fc0289c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n20_bltz_ds_ex.S:174
9fc02894:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n20_bltz_ds_ex.S:176
9fc02898:	26730001 	addiu	s3,s3,1

9fc0289c <inst_error>:
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n20_bltz_ds_ex.S:179
9fc0289c:	00104e00 	sll	t1,s0,0x18
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n20_bltz_ds_ex.S:180
9fc028a0:	01334025 	or	t0,t1,s3
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n20_bltz_ds_ex.S:181
9fc028a4:	ae280000 	sw	t0,0(s1)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n20_bltz_ds_ex.S:182
9fc028a8:	03e00008 	jr	ra
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n20_bltz_ds_ex.S:183
9fc028ac:	00000000 	nop

9fc028b0 <n21_bltzal_ds_ex_test>:
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n21_bltzal_ds_ex.S:7
9fc028b0:	03e0b021 	move	s6,ra
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n21_bltzal_ds_ex.S:8
9fc028b4:	26100001 	addiu	s0,s0,1
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n21_bltzal_ds_ex.S:9
9fc028b8:	3c08800d 	lui	t0,0x800d
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n21_bltzal_ds_ex.S:11
9fc028bc:	40805800 	mtc0	zero,c0_compare
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n21_bltzal_ds_ex.S:12
9fc028c0:	3c170040 	lui	s7,0x40
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n21_bltzal_ds_ex.S:13
9fc028c4:	40976000 	mtc0	s7,c0_status
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n21_bltzal_ds_ex.S:14
9fc028c8:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n21_bltzal_ds_ex.S:17
9fc028cc:	24120001 	li	s2,1
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n21_bltzal_ds_ex.S:18
9fc028d0:	3c170001 	lui	s7,0x1
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n21_bltzal_ds_ex.S:19
9fc028d4:	ad120000 	sw	s2,0(t0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n21_bltzal_ds_ex.S:20
9fc028d8:	3c149fc0 	lui	s4,0x9fc0
9fc028dc:	269428e0 	addiu	s4,s4,10464
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n21_bltzal_ds_ex.S:21
9fc028e0:	051000af 	bltzal	t0,9fc02ba0 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n21_bltzal_ds_ex.S:22
9fc028e4:	0000000c 	syscall
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n21_bltzal_ds_ex.S:23
9fc028e8:	165700ad 	bne	s2,s7,9fc02ba0 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n21_bltzal_ds_ex.S:24
9fc028ec:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n21_bltzal_ds_ex.S:25
9fc028f0:	24120001 	li	s2,1
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n21_bltzal_ds_ex.S:26
9fc028f4:	3c149fc0 	lui	s4,0x9fc0
9fc028f8:	269428fc 	addiu	s4,s4,10492
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n21_bltzal_ds_ex.S:27
9fc028fc:	065000a8 	bltzal	s2,9fc02ba0 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n21_bltzal_ds_ex.S:28
9fc02900:	0000000c 	syscall
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n21_bltzal_ds_ex.S:29
9fc02904:	165700a6 	bne	s2,s7,9fc02ba0 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n21_bltzal_ds_ex.S:30
9fc02908:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n21_bltzal_ds_ex.S:32
9fc0290c:	24120002 	li	s2,2
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n21_bltzal_ds_ex.S:33
9fc02910:	3c170002 	lui	s7,0x2
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n21_bltzal_ds_ex.S:34
9fc02914:	ad120000 	sw	s2,0(t0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n21_bltzal_ds_ex.S:35
9fc02918:	3c149fc0 	lui	s4,0x9fc0
9fc0291c:	26942920 	addiu	s4,s4,10528
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n21_bltzal_ds_ex.S:36
9fc02920:	0510009f 	bltzal	t0,9fc02ba0 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n21_bltzal_ds_ex.S:37
9fc02924:	0000000d 	break
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n21_bltzal_ds_ex.S:38
9fc02928:	1657009d 	bne	s2,s7,9fc02ba0 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n21_bltzal_ds_ex.S:39
9fc0292c:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n21_bltzal_ds_ex.S:40
9fc02930:	24120002 	li	s2,2
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n21_bltzal_ds_ex.S:41
9fc02934:	3c149fc0 	lui	s4,0x9fc0
9fc02938:	2694293c 	addiu	s4,s4,10556
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n21_bltzal_ds_ex.S:42
9fc0293c:	06500098 	bltzal	s2,9fc02ba0 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n21_bltzal_ds_ex.S:43
9fc02940:	0000000d 	break
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n21_bltzal_ds_ex.S:44
9fc02944:	16570096 	bne	s2,s7,9fc02ba0 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n21_bltzal_ds_ex.S:45
9fc02948:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n21_bltzal_ds_ex.S:47
9fc0294c:	24120003 	li	s2,3
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n21_bltzal_ds_ex.S:48
9fc02950:	3c170003 	lui	s7,0x3
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n21_bltzal_ds_ex.S:49
9fc02954:	ad120000 	sw	s2,0(t0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n21_bltzal_ds_ex.S:50
9fc02958:	3c149fc0 	lui	s4,0x9fc0
9fc0295c:	26942970 	addiu	s4,s4,10608
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n21_bltzal_ds_ex.S:51
9fc02960:	3c04ba03 	lui	a0,0xba03
9fc02964:	34844f60 	ori	a0,a0,0x4f60
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n21_bltzal_ds_ex.S:52
9fc02968:	3c05b615 	lui	a1,0xb615
9fc0296c:	34a5fd67 	ori	a1,a1,0xfd67
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n21_bltzal_ds_ex.S:53
9fc02970:	0510008b 	bltzal	t0,9fc02ba0 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n21_bltzal_ds_ex.S:54
9fc02974:	0085b820 	add	s7,a0,a1
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n21_bltzal_ds_ex.S:55
9fc02978:	16570089 	bne	s2,s7,9fc02ba0 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n21_bltzal_ds_ex.S:56
9fc0297c:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n21_bltzal_ds_ex.S:57
9fc02980:	24120003 	li	s2,3
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n21_bltzal_ds_ex.S:58
9fc02984:	3c149fc0 	lui	s4,0x9fc0
9fc02988:	2694298c 	addiu	s4,s4,10636
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n21_bltzal_ds_ex.S:59
9fc0298c:	06500084 	bltzal	s2,9fc02ba0 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n21_bltzal_ds_ex.S:60
9fc02990:	0085b820 	add	s7,a0,a1
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n21_bltzal_ds_ex.S:61
9fc02994:	ad170000 	sw	s7,0(t0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n21_bltzal_ds_ex.S:62
9fc02998:	16570081 	bne	s2,s7,9fc02ba0 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n21_bltzal_ds_ex.S:63
9fc0299c:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n21_bltzal_ds_ex.S:64
9fc029a0:	24120003 	li	s2,3
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n21_bltzal_ds_ex.S:65
9fc029a4:	ad120000 	sw	s2,0(t0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n21_bltzal_ds_ex.S:66
9fc029a8:	3c149fc0 	lui	s4,0x9fc0
9fc029ac:	269429b8 	addiu	s4,s4,10680
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n21_bltzal_ds_ex.S:67
9fc029b0:	3c047fff 	lui	a0,0x7fff
9fc029b4:	3484c19e 	ori	a0,a0,0xc19e
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n21_bltzal_ds_ex.S:68
9fc029b8:	05100079 	bltzal	t0,9fc02ba0 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n21_bltzal_ds_ex.S:69
9fc029bc:	20976512 	addi	s7,a0,25874
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n21_bltzal_ds_ex.S:70
9fc029c0:	16570077 	bne	s2,s7,9fc02ba0 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n21_bltzal_ds_ex.S:71
9fc029c4:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n21_bltzal_ds_ex.S:72
9fc029c8:	24120003 	li	s2,3
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n21_bltzal_ds_ex.S:73
9fc029cc:	3c149fc0 	lui	s4,0x9fc0
9fc029d0:	269429d4 	addiu	s4,s4,10708
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n21_bltzal_ds_ex.S:74
9fc029d4:	06500072 	bltzal	s2,9fc02ba0 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n21_bltzal_ds_ex.S:75
9fc029d8:	20976512 	addi	s7,a0,25874
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n21_bltzal_ds_ex.S:76
9fc029dc:	16570070 	bne	s2,s7,9fc02ba0 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n21_bltzal_ds_ex.S:77
9fc029e0:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n21_bltzal_ds_ex.S:78
9fc029e4:	24120003 	li	s2,3
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n21_bltzal_ds_ex.S:79
9fc029e8:	3c149fc0 	lui	s4,0x9fc0
9fc029ec:	26942a00 	addiu	s4,s4,10752
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n21_bltzal_ds_ex.S:80
9fc029f0:	3c04a85e 	lui	a0,0xa85e
9fc029f4:	34847d00 	ori	a0,a0,0x7d00
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n21_bltzal_ds_ex.S:81
9fc029f8:	3c056b7e 	lui	a1,0x6b7e
9fc029fc:	34a58e36 	ori	a1,a1,0x8e36
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n21_bltzal_ds_ex.S:82
9fc02a00:	05100067 	bltzal	t0,9fc02ba0 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n21_bltzal_ds_ex.S:83
9fc02a04:	0085b822 	sub	s7,a0,a1
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n21_bltzal_ds_ex.S:84
9fc02a08:	16570065 	bne	s2,s7,9fc02ba0 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n21_bltzal_ds_ex.S:85
9fc02a0c:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n21_bltzal_ds_ex.S:86
9fc02a10:	24120003 	li	s2,3
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n21_bltzal_ds_ex.S:87
9fc02a14:	3c149fc0 	lui	s4,0x9fc0
9fc02a18:	26942a1c 	addiu	s4,s4,10780
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n21_bltzal_ds_ex.S:88
9fc02a1c:	06500060 	bltzal	s2,9fc02ba0 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n21_bltzal_ds_ex.S:89
9fc02a20:	0085b822 	sub	s7,a0,a1
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n21_bltzal_ds_ex.S:90
9fc02a24:	1657005e 	bne	s2,s7,9fc02ba0 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n21_bltzal_ds_ex.S:91
9fc02a28:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n21_bltzal_ds_ex.S:93
9fc02a2c:	24120004 	li	s2,4
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n21_bltzal_ds_ex.S:94
9fc02a30:	3c170004 	lui	s7,0x4
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n21_bltzal_ds_ex.S:95
9fc02a34:	ad120000 	sw	s2,0(t0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n21_bltzal_ds_ex.S:96
9fc02a38:	3c149fc0 	lui	s4,0x9fc0
9fc02a3c:	26942a40 	addiu	s4,s4,10816
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n21_bltzal_ds_ex.S:97
9fc02a40:	05100057 	bltzal	t0,9fc02ba0 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n21_bltzal_ds_ex.S:98
9fc02a44:	8d170002 	lw	s7,2(t0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n21_bltzal_ds_ex.S:99
9fc02a48:	16570055 	bne	s2,s7,9fc02ba0 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n21_bltzal_ds_ex.S:100
9fc02a4c:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n21_bltzal_ds_ex.S:101
9fc02a50:	24120004 	li	s2,4
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n21_bltzal_ds_ex.S:102
9fc02a54:	3c149fc0 	lui	s4,0x9fc0
9fc02a58:	26942a5c 	addiu	s4,s4,10844
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n21_bltzal_ds_ex.S:103
9fc02a5c:	06500050 	bltzal	s2,9fc02ba0 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n21_bltzal_ds_ex.S:104
9fc02a60:	8d170002 	lw	s7,2(t0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n21_bltzal_ds_ex.S:105
9fc02a64:	1657004e 	bne	s2,s7,9fc02ba0 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n21_bltzal_ds_ex.S:106
9fc02a68:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n21_bltzal_ds_ex.S:107
9fc02a6c:	24120004 	li	s2,4
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n21_bltzal_ds_ex.S:108
9fc02a70:	3c149fc0 	lui	s4,0x9fc0
9fc02a74:	26942a78 	addiu	s4,s4,10872
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n21_bltzal_ds_ex.S:109
9fc02a78:	05100049 	bltzal	t0,9fc02ba0 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n21_bltzal_ds_ex.S:110
9fc02a7c:	85170001 	lh	s7,1(t0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n21_bltzal_ds_ex.S:111
9fc02a80:	02f2001b 	divu	zero,s7,s2
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n21_bltzal_ds_ex.S:112
9fc02a84:	16570046 	bne	s2,s7,9fc02ba0 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n21_bltzal_ds_ex.S:113
9fc02a88:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n21_bltzal_ds_ex.S:114
9fc02a8c:	24120004 	li	s2,4
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n21_bltzal_ds_ex.S:115
9fc02a90:	3c149fc0 	lui	s4,0x9fc0
9fc02a94:	26942a98 	addiu	s4,s4,10904
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n21_bltzal_ds_ex.S:116
9fc02a98:	06500041 	bltzal	s2,9fc02ba0 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n21_bltzal_ds_ex.S:117
9fc02a9c:	85170001 	lh	s7,1(t0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n21_bltzal_ds_ex.S:118
9fc02aa0:	1657003f 	bne	s2,s7,9fc02ba0 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n21_bltzal_ds_ex.S:119
9fc02aa4:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n21_bltzal_ds_ex.S:120
9fc02aa8:	3c149fc0 	lui	s4,0x9fc0
9fc02aac:	26942ab0 	addiu	s4,s4,10928
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n21_bltzal_ds_ex.S:121
9fc02ab0:	0510003b 	bltzal	t0,9fc02ba0 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n21_bltzal_ds_ex.S:122
9fc02ab4:	95170003 	lhu	s7,3(t0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n21_bltzal_ds_ex.S:123
9fc02ab8:	16570039 	bne	s2,s7,9fc02ba0 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n21_bltzal_ds_ex.S:124
9fc02abc:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n21_bltzal_ds_ex.S:125
9fc02ac0:	24120004 	li	s2,4
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n21_bltzal_ds_ex.S:126
9fc02ac4:	3c149fc0 	lui	s4,0x9fc0
9fc02ac8:	26942acc 	addiu	s4,s4,10956
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n21_bltzal_ds_ex.S:127
9fc02acc:	06500034 	bltzal	s2,9fc02ba0 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n21_bltzal_ds_ex.S:128
9fc02ad0:	95170003 	lhu	s7,3(t0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n21_bltzal_ds_ex.S:129
9fc02ad4:	16570032 	bne	s2,s7,9fc02ba0 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n21_bltzal_ds_ex.S:130
9fc02ad8:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n21_bltzal_ds_ex.S:132
9fc02adc:	24120005 	li	s2,5
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n21_bltzal_ds_ex.S:133
9fc02ae0:	3c170005 	lui	s7,0x5
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n21_bltzal_ds_ex.S:134
9fc02ae4:	ad120000 	sw	s2,0(t0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n21_bltzal_ds_ex.S:135
9fc02ae8:	3c149fc0 	lui	s4,0x9fc0
9fc02aec:	26942af0 	addiu	s4,s4,10992
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n21_bltzal_ds_ex.S:136
9fc02af0:	0510002b 	bltzal	t0,9fc02ba0 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n21_bltzal_ds_ex.S:137
9fc02af4:	ad170002 	sw	s7,2(t0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n21_bltzal_ds_ex.S:138
9fc02af8:	16570029 	bne	s2,s7,9fc02ba0 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n21_bltzal_ds_ex.S:139
9fc02afc:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n21_bltzal_ds_ex.S:140
9fc02b00:	24120005 	li	s2,5
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n21_bltzal_ds_ex.S:141
9fc02b04:	3c149fc0 	lui	s4,0x9fc0
9fc02b08:	26942b0c 	addiu	s4,s4,11020
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n21_bltzal_ds_ex.S:142
9fc02b0c:	06500024 	bltzal	s2,9fc02ba0 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n21_bltzal_ds_ex.S:143
9fc02b10:	ad170002 	sw	s7,2(t0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n21_bltzal_ds_ex.S:144
9fc02b14:	16570022 	bne	s2,s7,9fc02ba0 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n21_bltzal_ds_ex.S:145
9fc02b18:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n21_bltzal_ds_ex.S:146
9fc02b1c:	24120005 	li	s2,5
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n21_bltzal_ds_ex.S:147
9fc02b20:	3c149fc0 	lui	s4,0x9fc0
9fc02b24:	26942b28 	addiu	s4,s4,11048
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n21_bltzal_ds_ex.S:148
9fc02b28:	0510001d 	bltzal	t0,9fc02ba0 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n21_bltzal_ds_ex.S:149
9fc02b2c:	a5170001 	sh	s7,1(t0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n21_bltzal_ds_ex.S:150
9fc02b30:	1657001b 	bne	s2,s7,9fc02ba0 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n21_bltzal_ds_ex.S:151
9fc02b34:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n21_bltzal_ds_ex.S:152
9fc02b38:	24120005 	li	s2,5
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n21_bltzal_ds_ex.S:153
9fc02b3c:	3c149fc0 	lui	s4,0x9fc0
9fc02b40:	26942b44 	addiu	s4,s4,11076
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n21_bltzal_ds_ex.S:154
9fc02b44:	06500016 	bltzal	s2,9fc02ba0 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n21_bltzal_ds_ex.S:155
9fc02b48:	a5170001 	sh	s7,1(t0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n21_bltzal_ds_ex.S:156
9fc02b4c:	16570014 	bne	s2,s7,9fc02ba0 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n21_bltzal_ds_ex.S:157
9fc02b50:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n21_bltzal_ds_ex.S:160
9fc02b54:	24120007 	li	s2,7
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n21_bltzal_ds_ex.S:161
9fc02b58:	3c170007 	lui	s7,0x7
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n21_bltzal_ds_ex.S:162
9fc02b5c:	ad120000 	sw	s2,0(t0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n21_bltzal_ds_ex.S:163
9fc02b60:	3c149fc0 	lui	s4,0x9fc0
9fc02b64:	26942b68 	addiu	s4,s4,11112
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n21_bltzal_ds_ex.S:164
9fc02b68:	0510000d 	bltzal	t0,9fc02ba0 <inst_error>
9fc02b6c:	9e3c56aa 	0x9e3c56aa
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n21_bltzal_ds_ex.S:166
9fc02b70:	02f20018 	mult	s7,s2
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n21_bltzal_ds_ex.S:167
9fc02b74:	1657000a 	bne	s2,s7,9fc02ba0 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n21_bltzal_ds_ex.S:168
9fc02b78:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n21_bltzal_ds_ex.S:169
9fc02b7c:	24120007 	li	s2,7
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n21_bltzal_ds_ex.S:170
9fc02b80:	3c149fc0 	lui	s4,0x9fc0
9fc02b84:	26942b8c 	addiu	s4,s4,11148
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n21_bltzal_ds_ex.S:171
9fc02b88:	02f20018 	mult	s7,s2
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n21_bltzal_ds_ex.S:172
9fc02b8c:	06500004 	bltzal	s2,9fc02ba0 <inst_error>
9fc02b90:	ec1ba960 	swc3	$27,-22176(zero)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n21_bltzal_ds_ex.S:174
9fc02b94:	16570002 	bne	s2,s7,9fc02ba0 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n21_bltzal_ds_ex.S:175
9fc02b98:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n21_bltzal_ds_ex.S:177
9fc02b9c:	26730001 	addiu	s3,s3,1

9fc02ba0 <inst_error>:
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n21_bltzal_ds_ex.S:180
9fc02ba0:	00104e00 	sll	t1,s0,0x18
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n21_bltzal_ds_ex.S:181
9fc02ba4:	01334025 	or	t0,t1,s3
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n21_bltzal_ds_ex.S:182
9fc02ba8:	ae280000 	sw	t0,0(s1)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n21_bltzal_ds_ex.S:183
9fc02bac:	02c0f821 	move	ra,s6
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n21_bltzal_ds_ex.S:184
9fc02bb0:	03e00008 	jr	ra
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n21_bltzal_ds_ex.S:185
9fc02bb4:	00000000 	nop
	...

9fc02bc0 <n22_bgezal_ds_ex_test>:
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n22_bgezal_ds_ex.S:7
9fc02bc0:	03e0b021 	move	s6,ra
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n22_bgezal_ds_ex.S:8
9fc02bc4:	26100001 	addiu	s0,s0,1
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n22_bgezal_ds_ex.S:9
9fc02bc8:	3c08800d 	lui	t0,0x800d
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n22_bgezal_ds_ex.S:11
9fc02bcc:	40805800 	mtc0	zero,c0_compare
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n22_bgezal_ds_ex.S:12
9fc02bd0:	3c170040 	lui	s7,0x40
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n22_bgezal_ds_ex.S:13
9fc02bd4:	40976000 	mtc0	s7,c0_status
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n22_bgezal_ds_ex.S:14
9fc02bd8:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n22_bgezal_ds_ex.S:17
9fc02bdc:	24120001 	li	s2,1
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n22_bgezal_ds_ex.S:18
9fc02be0:	3c170001 	lui	s7,0x1
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n22_bgezal_ds_ex.S:19
9fc02be4:	ad120000 	sw	s2,0(t0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n22_bgezal_ds_ex.S:20
9fc02be8:	3c149fc0 	lui	s4,0x9fc0
9fc02bec:	26942bf0 	addiu	s4,s4,11248
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n22_bgezal_ds_ex.S:21
9fc02bf0:	041100af 	bal	9fc02eb0 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n22_bgezal_ds_ex.S:22
9fc02bf4:	0000000c 	syscall
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n22_bgezal_ds_ex.S:23
9fc02bf8:	165700ad 	bne	s2,s7,9fc02eb0 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n22_bgezal_ds_ex.S:24
9fc02bfc:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n22_bgezal_ds_ex.S:25
9fc02c00:	24120001 	li	s2,1
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n22_bgezal_ds_ex.S:26
9fc02c04:	3c149fc0 	lui	s4,0x9fc0
9fc02c08:	26942c0c 	addiu	s4,s4,11276
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n22_bgezal_ds_ex.S:27
9fc02c0c:	051100a8 	bgezal	t0,9fc02eb0 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n22_bgezal_ds_ex.S:28
9fc02c10:	0000000c 	syscall
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n22_bgezal_ds_ex.S:29
9fc02c14:	165700a6 	bne	s2,s7,9fc02eb0 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n22_bgezal_ds_ex.S:30
9fc02c18:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n22_bgezal_ds_ex.S:32
9fc02c1c:	24120002 	li	s2,2
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n22_bgezal_ds_ex.S:33
9fc02c20:	3c170002 	lui	s7,0x2
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n22_bgezal_ds_ex.S:34
9fc02c24:	ad120000 	sw	s2,0(t0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n22_bgezal_ds_ex.S:35
9fc02c28:	3c149fc0 	lui	s4,0x9fc0
9fc02c2c:	26942c30 	addiu	s4,s4,11312
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n22_bgezal_ds_ex.S:36
9fc02c30:	0411009f 	bal	9fc02eb0 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n22_bgezal_ds_ex.S:37
9fc02c34:	0000000d 	break
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n22_bgezal_ds_ex.S:38
9fc02c38:	1657009d 	bne	s2,s7,9fc02eb0 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n22_bgezal_ds_ex.S:39
9fc02c3c:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n22_bgezal_ds_ex.S:40
9fc02c40:	24120002 	li	s2,2
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n22_bgezal_ds_ex.S:41
9fc02c44:	3c149fc0 	lui	s4,0x9fc0
9fc02c48:	26942c4c 	addiu	s4,s4,11340
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n22_bgezal_ds_ex.S:42
9fc02c4c:	05110098 	bgezal	t0,9fc02eb0 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n22_bgezal_ds_ex.S:43
9fc02c50:	0000000d 	break
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n22_bgezal_ds_ex.S:44
9fc02c54:	16570096 	bne	s2,s7,9fc02eb0 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n22_bgezal_ds_ex.S:45
9fc02c58:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n22_bgezal_ds_ex.S:47
9fc02c5c:	24120003 	li	s2,3
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n22_bgezal_ds_ex.S:48
9fc02c60:	3c170003 	lui	s7,0x3
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n22_bgezal_ds_ex.S:49
9fc02c64:	ad120000 	sw	s2,0(t0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n22_bgezal_ds_ex.S:50
9fc02c68:	3c149fc0 	lui	s4,0x9fc0
9fc02c6c:	26942c80 	addiu	s4,s4,11392
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n22_bgezal_ds_ex.S:51
9fc02c70:	3c04ba03 	lui	a0,0xba03
9fc02c74:	34844f60 	ori	a0,a0,0x4f60
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n22_bgezal_ds_ex.S:52
9fc02c78:	3c05b615 	lui	a1,0xb615
9fc02c7c:	34a5fd67 	ori	a1,a1,0xfd67
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n22_bgezal_ds_ex.S:53
9fc02c80:	0411008b 	bal	9fc02eb0 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n22_bgezal_ds_ex.S:54
9fc02c84:	0085b820 	add	s7,a0,a1
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n22_bgezal_ds_ex.S:55
9fc02c88:	16570089 	bne	s2,s7,9fc02eb0 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n22_bgezal_ds_ex.S:56
9fc02c8c:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n22_bgezal_ds_ex.S:57
9fc02c90:	24120003 	li	s2,3
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n22_bgezal_ds_ex.S:58
9fc02c94:	3c149fc0 	lui	s4,0x9fc0
9fc02c98:	26942c9c 	addiu	s4,s4,11420
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n22_bgezal_ds_ex.S:59
9fc02c9c:	05110084 	bgezal	t0,9fc02eb0 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n22_bgezal_ds_ex.S:60
9fc02ca0:	0085b820 	add	s7,a0,a1
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n22_bgezal_ds_ex.S:61
9fc02ca4:	ad170000 	sw	s7,0(t0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n22_bgezal_ds_ex.S:62
9fc02ca8:	16570081 	bne	s2,s7,9fc02eb0 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n22_bgezal_ds_ex.S:63
9fc02cac:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n22_bgezal_ds_ex.S:64
9fc02cb0:	24120003 	li	s2,3
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n22_bgezal_ds_ex.S:65
9fc02cb4:	ad120000 	sw	s2,0(t0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n22_bgezal_ds_ex.S:66
9fc02cb8:	3c149fc0 	lui	s4,0x9fc0
9fc02cbc:	26942cc8 	addiu	s4,s4,11464
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n22_bgezal_ds_ex.S:67
9fc02cc0:	3c047fff 	lui	a0,0x7fff
9fc02cc4:	3484c19e 	ori	a0,a0,0xc19e
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n22_bgezal_ds_ex.S:68
9fc02cc8:	04110079 	bal	9fc02eb0 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n22_bgezal_ds_ex.S:69
9fc02ccc:	20976512 	addi	s7,a0,25874
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n22_bgezal_ds_ex.S:70
9fc02cd0:	16570077 	bne	s2,s7,9fc02eb0 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n22_bgezal_ds_ex.S:71
9fc02cd4:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n22_bgezal_ds_ex.S:72
9fc02cd8:	24120003 	li	s2,3
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n22_bgezal_ds_ex.S:73
9fc02cdc:	3c149fc0 	lui	s4,0x9fc0
9fc02ce0:	26942ce4 	addiu	s4,s4,11492
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n22_bgezal_ds_ex.S:74
9fc02ce4:	05110072 	bgezal	t0,9fc02eb0 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n22_bgezal_ds_ex.S:75
9fc02ce8:	20976512 	addi	s7,a0,25874
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n22_bgezal_ds_ex.S:76
9fc02cec:	16570070 	bne	s2,s7,9fc02eb0 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n22_bgezal_ds_ex.S:77
9fc02cf0:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n22_bgezal_ds_ex.S:78
9fc02cf4:	24120003 	li	s2,3
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n22_bgezal_ds_ex.S:79
9fc02cf8:	3c149fc0 	lui	s4,0x9fc0
9fc02cfc:	26942d10 	addiu	s4,s4,11536
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n22_bgezal_ds_ex.S:80
9fc02d00:	3c04a85e 	lui	a0,0xa85e
9fc02d04:	34847d00 	ori	a0,a0,0x7d00
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n22_bgezal_ds_ex.S:81
9fc02d08:	3c056b7e 	lui	a1,0x6b7e
9fc02d0c:	34a58e36 	ori	a1,a1,0x8e36
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n22_bgezal_ds_ex.S:82
9fc02d10:	04110067 	bal	9fc02eb0 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n22_bgezal_ds_ex.S:83
9fc02d14:	0085b822 	sub	s7,a0,a1
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n22_bgezal_ds_ex.S:84
9fc02d18:	16570065 	bne	s2,s7,9fc02eb0 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n22_bgezal_ds_ex.S:85
9fc02d1c:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n22_bgezal_ds_ex.S:86
9fc02d20:	24120003 	li	s2,3
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n22_bgezal_ds_ex.S:87
9fc02d24:	3c149fc0 	lui	s4,0x9fc0
9fc02d28:	26942d2c 	addiu	s4,s4,11564
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n22_bgezal_ds_ex.S:88
9fc02d2c:	05110060 	bgezal	t0,9fc02eb0 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n22_bgezal_ds_ex.S:89
9fc02d30:	0085b822 	sub	s7,a0,a1
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n22_bgezal_ds_ex.S:90
9fc02d34:	1657005e 	bne	s2,s7,9fc02eb0 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n22_bgezal_ds_ex.S:91
9fc02d38:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n22_bgezal_ds_ex.S:93
9fc02d3c:	24120004 	li	s2,4
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n22_bgezal_ds_ex.S:94
9fc02d40:	3c170004 	lui	s7,0x4
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n22_bgezal_ds_ex.S:95
9fc02d44:	ad120000 	sw	s2,0(t0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n22_bgezal_ds_ex.S:96
9fc02d48:	3c149fc0 	lui	s4,0x9fc0
9fc02d4c:	26942d50 	addiu	s4,s4,11600
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n22_bgezal_ds_ex.S:97
9fc02d50:	04110057 	bal	9fc02eb0 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n22_bgezal_ds_ex.S:98
9fc02d54:	8d170002 	lw	s7,2(t0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n22_bgezal_ds_ex.S:99
9fc02d58:	16570055 	bne	s2,s7,9fc02eb0 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n22_bgezal_ds_ex.S:100
9fc02d5c:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n22_bgezal_ds_ex.S:101
9fc02d60:	24120004 	li	s2,4
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n22_bgezal_ds_ex.S:102
9fc02d64:	3c149fc0 	lui	s4,0x9fc0
9fc02d68:	26942d6c 	addiu	s4,s4,11628
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n22_bgezal_ds_ex.S:103
9fc02d6c:	05110050 	bgezal	t0,9fc02eb0 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n22_bgezal_ds_ex.S:104
9fc02d70:	8d170002 	lw	s7,2(t0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n22_bgezal_ds_ex.S:105
9fc02d74:	1657004e 	bne	s2,s7,9fc02eb0 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n22_bgezal_ds_ex.S:106
9fc02d78:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n22_bgezal_ds_ex.S:107
9fc02d7c:	24120004 	li	s2,4
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n22_bgezal_ds_ex.S:108
9fc02d80:	3c149fc0 	lui	s4,0x9fc0
9fc02d84:	26942d88 	addiu	s4,s4,11656
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n22_bgezal_ds_ex.S:109
9fc02d88:	04110049 	bal	9fc02eb0 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n22_bgezal_ds_ex.S:110
9fc02d8c:	85170001 	lh	s7,1(t0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n22_bgezal_ds_ex.S:111
9fc02d90:	02f2001b 	divu	zero,s7,s2
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n22_bgezal_ds_ex.S:112
9fc02d94:	16570046 	bne	s2,s7,9fc02eb0 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n22_bgezal_ds_ex.S:113
9fc02d98:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n22_bgezal_ds_ex.S:114
9fc02d9c:	24120004 	li	s2,4
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n22_bgezal_ds_ex.S:115
9fc02da0:	3c149fc0 	lui	s4,0x9fc0
9fc02da4:	26942da8 	addiu	s4,s4,11688
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n22_bgezal_ds_ex.S:116
9fc02da8:	05110041 	bgezal	t0,9fc02eb0 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n22_bgezal_ds_ex.S:117
9fc02dac:	85170001 	lh	s7,1(t0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n22_bgezal_ds_ex.S:118
9fc02db0:	1657003f 	bne	s2,s7,9fc02eb0 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n22_bgezal_ds_ex.S:119
9fc02db4:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n22_bgezal_ds_ex.S:120
9fc02db8:	3c149fc0 	lui	s4,0x9fc0
9fc02dbc:	26942dc0 	addiu	s4,s4,11712
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n22_bgezal_ds_ex.S:121
9fc02dc0:	0411003b 	bal	9fc02eb0 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n22_bgezal_ds_ex.S:122
9fc02dc4:	95170003 	lhu	s7,3(t0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n22_bgezal_ds_ex.S:123
9fc02dc8:	16570039 	bne	s2,s7,9fc02eb0 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n22_bgezal_ds_ex.S:124
9fc02dcc:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n22_bgezal_ds_ex.S:125
9fc02dd0:	24120004 	li	s2,4
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n22_bgezal_ds_ex.S:126
9fc02dd4:	3c149fc0 	lui	s4,0x9fc0
9fc02dd8:	26942ddc 	addiu	s4,s4,11740
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n22_bgezal_ds_ex.S:127
9fc02ddc:	05110034 	bgezal	t0,9fc02eb0 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n22_bgezal_ds_ex.S:128
9fc02de0:	95170003 	lhu	s7,3(t0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n22_bgezal_ds_ex.S:129
9fc02de4:	16570032 	bne	s2,s7,9fc02eb0 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n22_bgezal_ds_ex.S:130
9fc02de8:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n22_bgezal_ds_ex.S:132
9fc02dec:	24120005 	li	s2,5
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n22_bgezal_ds_ex.S:133
9fc02df0:	3c170005 	lui	s7,0x5
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n22_bgezal_ds_ex.S:134
9fc02df4:	ad120000 	sw	s2,0(t0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n22_bgezal_ds_ex.S:135
9fc02df8:	3c149fc0 	lui	s4,0x9fc0
9fc02dfc:	26942e00 	addiu	s4,s4,11776
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n22_bgezal_ds_ex.S:136
9fc02e00:	0411002b 	bal	9fc02eb0 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n22_bgezal_ds_ex.S:137
9fc02e04:	ad170002 	sw	s7,2(t0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n22_bgezal_ds_ex.S:138
9fc02e08:	16570029 	bne	s2,s7,9fc02eb0 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n22_bgezal_ds_ex.S:139
9fc02e0c:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n22_bgezal_ds_ex.S:140
9fc02e10:	24120005 	li	s2,5
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n22_bgezal_ds_ex.S:141
9fc02e14:	3c149fc0 	lui	s4,0x9fc0
9fc02e18:	26942e1c 	addiu	s4,s4,11804
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n22_bgezal_ds_ex.S:142
9fc02e1c:	05110024 	bgezal	t0,9fc02eb0 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n22_bgezal_ds_ex.S:143
9fc02e20:	ad170002 	sw	s7,2(t0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n22_bgezal_ds_ex.S:144
9fc02e24:	16570022 	bne	s2,s7,9fc02eb0 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n22_bgezal_ds_ex.S:145
9fc02e28:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n22_bgezal_ds_ex.S:146
9fc02e2c:	24120005 	li	s2,5
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n22_bgezal_ds_ex.S:147
9fc02e30:	3c149fc0 	lui	s4,0x9fc0
9fc02e34:	26942e38 	addiu	s4,s4,11832
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n22_bgezal_ds_ex.S:148
9fc02e38:	0411001d 	bal	9fc02eb0 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n22_bgezal_ds_ex.S:149
9fc02e3c:	a5170001 	sh	s7,1(t0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n22_bgezal_ds_ex.S:150
9fc02e40:	1657001b 	bne	s2,s7,9fc02eb0 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n22_bgezal_ds_ex.S:151
9fc02e44:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n22_bgezal_ds_ex.S:152
9fc02e48:	24120005 	li	s2,5
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n22_bgezal_ds_ex.S:153
9fc02e4c:	3c149fc0 	lui	s4,0x9fc0
9fc02e50:	26942e54 	addiu	s4,s4,11860
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n22_bgezal_ds_ex.S:154
9fc02e54:	05110016 	bgezal	t0,9fc02eb0 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n22_bgezal_ds_ex.S:155
9fc02e58:	a5170001 	sh	s7,1(t0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n22_bgezal_ds_ex.S:156
9fc02e5c:	16570014 	bne	s2,s7,9fc02eb0 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n22_bgezal_ds_ex.S:157
9fc02e60:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n22_bgezal_ds_ex.S:160
9fc02e64:	24120007 	li	s2,7
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n22_bgezal_ds_ex.S:161
9fc02e68:	3c170007 	lui	s7,0x7
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n22_bgezal_ds_ex.S:162
9fc02e6c:	ad120000 	sw	s2,0(t0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n22_bgezal_ds_ex.S:163
9fc02e70:	3c149fc0 	lui	s4,0x9fc0
9fc02e74:	26942e78 	addiu	s4,s4,11896
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n22_bgezal_ds_ex.S:164
9fc02e78:	0411000d 	bal	9fc02eb0 <inst_error>
9fc02e7c:	9e3c56aa 	0x9e3c56aa
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n22_bgezal_ds_ex.S:166
9fc02e80:	02f20018 	mult	s7,s2
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n22_bgezal_ds_ex.S:167
9fc02e84:	1657000a 	bne	s2,s7,9fc02eb0 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n22_bgezal_ds_ex.S:168
9fc02e88:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n22_bgezal_ds_ex.S:169
9fc02e8c:	24120007 	li	s2,7
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n22_bgezal_ds_ex.S:170
9fc02e90:	3c149fc0 	lui	s4,0x9fc0
9fc02e94:	26942e9c 	addiu	s4,s4,11932
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n22_bgezal_ds_ex.S:171
9fc02e98:	02f20018 	mult	s7,s2
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n22_bgezal_ds_ex.S:172
9fc02e9c:	05110004 	bgezal	t0,9fc02eb0 <inst_error>
9fc02ea0:	ec1ba960 	swc3	$27,-22176(zero)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n22_bgezal_ds_ex.S:174
9fc02ea4:	16570002 	bne	s2,s7,9fc02eb0 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n22_bgezal_ds_ex.S:175
9fc02ea8:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n22_bgezal_ds_ex.S:177
9fc02eac:	26730001 	addiu	s3,s3,1

9fc02eb0 <inst_error>:
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n22_bgezal_ds_ex.S:180
9fc02eb0:	00104e00 	sll	t1,s0,0x18
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n22_bgezal_ds_ex.S:181
9fc02eb4:	01334025 	or	t0,t1,s3
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n22_bgezal_ds_ex.S:182
9fc02eb8:	ae280000 	sw	t0,0(s1)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n22_bgezal_ds_ex.S:183
9fc02ebc:	02c0f821 	move	ra,s6
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n22_bgezal_ds_ex.S:184
9fc02ec0:	03e00008 	jr	ra
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n22_bgezal_ds_ex.S:185
9fc02ec4:	00000000 	nop
	...

9fc02ed0 <n23_j_ds_ex_test>:
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n23_j_ds_ex.S:7
9fc02ed0:	26100001 	addiu	s0,s0,1
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n23_j_ds_ex.S:8
9fc02ed4:	3c08800d 	lui	t0,0x800d
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n23_j_ds_ex.S:10
9fc02ed8:	40805800 	mtc0	zero,c0_compare
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n23_j_ds_ex.S:11
9fc02edc:	3c170040 	lui	s7,0x40
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n23_j_ds_ex.S:12
9fc02ee0:	40976000 	mtc0	s7,c0_status
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n23_j_ds_ex.S:13
9fc02ee4:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n23_j_ds_ex.S:16
9fc02ee8:	24120001 	li	s2,1
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n23_j_ds_ex.S:17
9fc02eec:	3c170001 	lui	s7,0x1
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n23_j_ds_ex.S:18
9fc02ef0:	ad120000 	sw	s2,0(t0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n23_j_ds_ex.S:19
9fc02ef4:	3c149fc0 	lui	s4,0x9fc0
9fc02ef8:	26942efc 	addiu	s4,s4,12028
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n23_j_ds_ex.S:20
9fc02efc:	0bf00c6f 	j	9fc031bc <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n23_j_ds_ex.S:21
9fc02f00:	0000000c 	syscall
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n23_j_ds_ex.S:22
9fc02f04:	165700ad 	bne	s2,s7,9fc031bc <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n23_j_ds_ex.S:23
9fc02f08:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n23_j_ds_ex.S:24
9fc02f0c:	24120001 	li	s2,1
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n23_j_ds_ex.S:25
9fc02f10:	3c149fc0 	lui	s4,0x9fc0
9fc02f14:	26942f18 	addiu	s4,s4,12056
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n23_j_ds_ex.S:26
9fc02f18:	0bf00c6f 	j	9fc031bc <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n23_j_ds_ex.S:27
9fc02f1c:	0000000c 	syscall
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n23_j_ds_ex.S:28
9fc02f20:	165700a6 	bne	s2,s7,9fc031bc <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n23_j_ds_ex.S:29
9fc02f24:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n23_j_ds_ex.S:31
9fc02f28:	24120002 	li	s2,2
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n23_j_ds_ex.S:32
9fc02f2c:	3c170002 	lui	s7,0x2
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n23_j_ds_ex.S:33
9fc02f30:	ad120000 	sw	s2,0(t0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n23_j_ds_ex.S:34
9fc02f34:	3c149fc0 	lui	s4,0x9fc0
9fc02f38:	26942f3c 	addiu	s4,s4,12092
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n23_j_ds_ex.S:35
9fc02f3c:	0bf00c6f 	j	9fc031bc <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n23_j_ds_ex.S:36
9fc02f40:	0000000d 	break
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n23_j_ds_ex.S:37
9fc02f44:	1657009d 	bne	s2,s7,9fc031bc <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n23_j_ds_ex.S:38
9fc02f48:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n23_j_ds_ex.S:39
9fc02f4c:	24120002 	li	s2,2
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n23_j_ds_ex.S:40
9fc02f50:	3c149fc0 	lui	s4,0x9fc0
9fc02f54:	26942f58 	addiu	s4,s4,12120
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n23_j_ds_ex.S:41
9fc02f58:	0bf00c6f 	j	9fc031bc <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n23_j_ds_ex.S:42
9fc02f5c:	0000000d 	break
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n23_j_ds_ex.S:43
9fc02f60:	16570096 	bne	s2,s7,9fc031bc <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n23_j_ds_ex.S:44
9fc02f64:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n23_j_ds_ex.S:46
9fc02f68:	24120003 	li	s2,3
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n23_j_ds_ex.S:47
9fc02f6c:	3c170003 	lui	s7,0x3
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n23_j_ds_ex.S:48
9fc02f70:	ad120000 	sw	s2,0(t0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n23_j_ds_ex.S:49
9fc02f74:	3c149fc0 	lui	s4,0x9fc0
9fc02f78:	26942f8c 	addiu	s4,s4,12172
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n23_j_ds_ex.S:50
9fc02f7c:	3c04ba03 	lui	a0,0xba03
9fc02f80:	34844f60 	ori	a0,a0,0x4f60
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n23_j_ds_ex.S:51
9fc02f84:	3c05b615 	lui	a1,0xb615
9fc02f88:	34a5fd67 	ori	a1,a1,0xfd67
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n23_j_ds_ex.S:52
9fc02f8c:	0bf00c6f 	j	9fc031bc <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n23_j_ds_ex.S:53
9fc02f90:	0085b820 	add	s7,a0,a1
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n23_j_ds_ex.S:54
9fc02f94:	16570089 	bne	s2,s7,9fc031bc <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n23_j_ds_ex.S:55
9fc02f98:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n23_j_ds_ex.S:56
9fc02f9c:	24120003 	li	s2,3
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n23_j_ds_ex.S:57
9fc02fa0:	3c149fc0 	lui	s4,0x9fc0
9fc02fa4:	26942fa8 	addiu	s4,s4,12200
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n23_j_ds_ex.S:58
9fc02fa8:	0bf00c6f 	j	9fc031bc <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n23_j_ds_ex.S:59
9fc02fac:	0085b820 	add	s7,a0,a1
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n23_j_ds_ex.S:60
9fc02fb0:	ad170000 	sw	s7,0(t0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n23_j_ds_ex.S:61
9fc02fb4:	16570081 	bne	s2,s7,9fc031bc <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n23_j_ds_ex.S:62
9fc02fb8:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n23_j_ds_ex.S:63
9fc02fbc:	24120003 	li	s2,3
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n23_j_ds_ex.S:64
9fc02fc0:	ad120000 	sw	s2,0(t0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n23_j_ds_ex.S:65
9fc02fc4:	3c149fc0 	lui	s4,0x9fc0
9fc02fc8:	26942fd4 	addiu	s4,s4,12244
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n23_j_ds_ex.S:66
9fc02fcc:	3c047fff 	lui	a0,0x7fff
9fc02fd0:	3484c19e 	ori	a0,a0,0xc19e
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n23_j_ds_ex.S:67
9fc02fd4:	0bf00c6f 	j	9fc031bc <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n23_j_ds_ex.S:68
9fc02fd8:	20976512 	addi	s7,a0,25874
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n23_j_ds_ex.S:69
9fc02fdc:	16570077 	bne	s2,s7,9fc031bc <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n23_j_ds_ex.S:70
9fc02fe0:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n23_j_ds_ex.S:71
9fc02fe4:	24120003 	li	s2,3
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n23_j_ds_ex.S:72
9fc02fe8:	3c149fc0 	lui	s4,0x9fc0
9fc02fec:	26942ff0 	addiu	s4,s4,12272
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n23_j_ds_ex.S:73
9fc02ff0:	0bf00c6f 	j	9fc031bc <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n23_j_ds_ex.S:74
9fc02ff4:	20976512 	addi	s7,a0,25874
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n23_j_ds_ex.S:75
9fc02ff8:	16570070 	bne	s2,s7,9fc031bc <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n23_j_ds_ex.S:76
9fc02ffc:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n23_j_ds_ex.S:77
9fc03000:	24120003 	li	s2,3
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n23_j_ds_ex.S:78
9fc03004:	3c149fc0 	lui	s4,0x9fc0
9fc03008:	2694301c 	addiu	s4,s4,12316
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n23_j_ds_ex.S:79
9fc0300c:	3c04a85e 	lui	a0,0xa85e
9fc03010:	34847d00 	ori	a0,a0,0x7d00
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n23_j_ds_ex.S:80
9fc03014:	3c056b7e 	lui	a1,0x6b7e
9fc03018:	34a58e36 	ori	a1,a1,0x8e36
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n23_j_ds_ex.S:81
9fc0301c:	0bf00c6f 	j	9fc031bc <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n23_j_ds_ex.S:82
9fc03020:	0085b822 	sub	s7,a0,a1
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n23_j_ds_ex.S:83
9fc03024:	16570065 	bne	s2,s7,9fc031bc <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n23_j_ds_ex.S:84
9fc03028:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n23_j_ds_ex.S:85
9fc0302c:	24120003 	li	s2,3
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n23_j_ds_ex.S:86
9fc03030:	3c149fc0 	lui	s4,0x9fc0
9fc03034:	26943038 	addiu	s4,s4,12344
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n23_j_ds_ex.S:87
9fc03038:	0bf00c6f 	j	9fc031bc <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n23_j_ds_ex.S:88
9fc0303c:	0085b822 	sub	s7,a0,a1
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n23_j_ds_ex.S:89
9fc03040:	1657005e 	bne	s2,s7,9fc031bc <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n23_j_ds_ex.S:90
9fc03044:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n23_j_ds_ex.S:92
9fc03048:	24120004 	li	s2,4
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n23_j_ds_ex.S:93
9fc0304c:	3c170004 	lui	s7,0x4
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n23_j_ds_ex.S:94
9fc03050:	ad120000 	sw	s2,0(t0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n23_j_ds_ex.S:95
9fc03054:	3c149fc0 	lui	s4,0x9fc0
9fc03058:	2694305c 	addiu	s4,s4,12380
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n23_j_ds_ex.S:96
9fc0305c:	0bf00c6f 	j	9fc031bc <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n23_j_ds_ex.S:97
9fc03060:	8d170002 	lw	s7,2(t0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n23_j_ds_ex.S:98
9fc03064:	16570055 	bne	s2,s7,9fc031bc <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n23_j_ds_ex.S:99
9fc03068:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n23_j_ds_ex.S:100
9fc0306c:	24120004 	li	s2,4
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n23_j_ds_ex.S:101
9fc03070:	3c149fc0 	lui	s4,0x9fc0
9fc03074:	26943078 	addiu	s4,s4,12408
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n23_j_ds_ex.S:102
9fc03078:	0bf00c6f 	j	9fc031bc <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n23_j_ds_ex.S:103
9fc0307c:	8d170002 	lw	s7,2(t0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n23_j_ds_ex.S:104
9fc03080:	1657004e 	bne	s2,s7,9fc031bc <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n23_j_ds_ex.S:105
9fc03084:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n23_j_ds_ex.S:106
9fc03088:	24120004 	li	s2,4
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n23_j_ds_ex.S:107
9fc0308c:	3c149fc0 	lui	s4,0x9fc0
9fc03090:	26943094 	addiu	s4,s4,12436
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n23_j_ds_ex.S:108
9fc03094:	0bf00c6f 	j	9fc031bc <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n23_j_ds_ex.S:109
9fc03098:	85170001 	lh	s7,1(t0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n23_j_ds_ex.S:110
9fc0309c:	02f2001b 	divu	zero,s7,s2
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n23_j_ds_ex.S:111
9fc030a0:	16570046 	bne	s2,s7,9fc031bc <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n23_j_ds_ex.S:112
9fc030a4:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n23_j_ds_ex.S:113
9fc030a8:	24120004 	li	s2,4
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n23_j_ds_ex.S:114
9fc030ac:	3c149fc0 	lui	s4,0x9fc0
9fc030b0:	269430b4 	addiu	s4,s4,12468
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n23_j_ds_ex.S:115
9fc030b4:	0bf00c6f 	j	9fc031bc <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n23_j_ds_ex.S:116
9fc030b8:	85170001 	lh	s7,1(t0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n23_j_ds_ex.S:117
9fc030bc:	1657003f 	bne	s2,s7,9fc031bc <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n23_j_ds_ex.S:118
9fc030c0:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n23_j_ds_ex.S:119
9fc030c4:	3c149fc0 	lui	s4,0x9fc0
9fc030c8:	269430cc 	addiu	s4,s4,12492
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n23_j_ds_ex.S:120
9fc030cc:	0bf00c6f 	j	9fc031bc <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n23_j_ds_ex.S:121
9fc030d0:	95170003 	lhu	s7,3(t0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n23_j_ds_ex.S:122
9fc030d4:	16570039 	bne	s2,s7,9fc031bc <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n23_j_ds_ex.S:123
9fc030d8:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n23_j_ds_ex.S:124
9fc030dc:	24120004 	li	s2,4
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n23_j_ds_ex.S:125
9fc030e0:	3c149fc0 	lui	s4,0x9fc0
9fc030e4:	269430e8 	addiu	s4,s4,12520
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n23_j_ds_ex.S:126
9fc030e8:	0bf00c6f 	j	9fc031bc <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n23_j_ds_ex.S:127
9fc030ec:	95170003 	lhu	s7,3(t0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n23_j_ds_ex.S:128
9fc030f0:	16570032 	bne	s2,s7,9fc031bc <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n23_j_ds_ex.S:129
9fc030f4:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n23_j_ds_ex.S:131
9fc030f8:	24120005 	li	s2,5
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n23_j_ds_ex.S:132
9fc030fc:	3c170005 	lui	s7,0x5
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n23_j_ds_ex.S:133
9fc03100:	ad120000 	sw	s2,0(t0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n23_j_ds_ex.S:134
9fc03104:	3c149fc0 	lui	s4,0x9fc0
9fc03108:	2694310c 	addiu	s4,s4,12556
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n23_j_ds_ex.S:135
9fc0310c:	0bf00c6f 	j	9fc031bc <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n23_j_ds_ex.S:136
9fc03110:	ad170002 	sw	s7,2(t0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n23_j_ds_ex.S:137
9fc03114:	16570029 	bne	s2,s7,9fc031bc <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n23_j_ds_ex.S:138
9fc03118:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n23_j_ds_ex.S:139
9fc0311c:	24120005 	li	s2,5
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n23_j_ds_ex.S:140
9fc03120:	3c149fc0 	lui	s4,0x9fc0
9fc03124:	26943128 	addiu	s4,s4,12584
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n23_j_ds_ex.S:141
9fc03128:	0bf00c6f 	j	9fc031bc <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n23_j_ds_ex.S:142
9fc0312c:	ad170002 	sw	s7,2(t0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n23_j_ds_ex.S:143
9fc03130:	16570022 	bne	s2,s7,9fc031bc <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n23_j_ds_ex.S:144
9fc03134:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n23_j_ds_ex.S:145
9fc03138:	24120005 	li	s2,5
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n23_j_ds_ex.S:146
9fc0313c:	3c149fc0 	lui	s4,0x9fc0
9fc03140:	26943144 	addiu	s4,s4,12612
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n23_j_ds_ex.S:147
9fc03144:	0bf00c6f 	j	9fc031bc <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n23_j_ds_ex.S:148
9fc03148:	a5170001 	sh	s7,1(t0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n23_j_ds_ex.S:149
9fc0314c:	1657001b 	bne	s2,s7,9fc031bc <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n23_j_ds_ex.S:150
9fc03150:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n23_j_ds_ex.S:151
9fc03154:	24120005 	li	s2,5
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n23_j_ds_ex.S:152
9fc03158:	3c149fc0 	lui	s4,0x9fc0
9fc0315c:	26943160 	addiu	s4,s4,12640
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n23_j_ds_ex.S:153
9fc03160:	0bf00c6f 	j	9fc031bc <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n23_j_ds_ex.S:154
9fc03164:	a5170001 	sh	s7,1(t0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n23_j_ds_ex.S:155
9fc03168:	16570014 	bne	s2,s7,9fc031bc <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n23_j_ds_ex.S:156
9fc0316c:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n23_j_ds_ex.S:159
9fc03170:	24120007 	li	s2,7
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n23_j_ds_ex.S:160
9fc03174:	3c170007 	lui	s7,0x7
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n23_j_ds_ex.S:161
9fc03178:	ad120000 	sw	s2,0(t0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n23_j_ds_ex.S:162
9fc0317c:	3c149fc0 	lui	s4,0x9fc0
9fc03180:	26943184 	addiu	s4,s4,12676
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n23_j_ds_ex.S:163
9fc03184:	0bf00c6f 	j	9fc031bc <inst_error>
9fc03188:	9e3c56aa 	0x9e3c56aa
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n23_j_ds_ex.S:165
9fc0318c:	02f20018 	mult	s7,s2
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n23_j_ds_ex.S:166
9fc03190:	1657000a 	bne	s2,s7,9fc031bc <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n23_j_ds_ex.S:167
9fc03194:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n23_j_ds_ex.S:168
9fc03198:	24120007 	li	s2,7
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n23_j_ds_ex.S:169
9fc0319c:	3c149fc0 	lui	s4,0x9fc0
9fc031a0:	269431a8 	addiu	s4,s4,12712
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n23_j_ds_ex.S:170
9fc031a4:	02f20018 	mult	s7,s2
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n23_j_ds_ex.S:171
9fc031a8:	0bf00c6f 	j	9fc031bc <inst_error>
9fc031ac:	ec1ba960 	swc3	$27,-22176(zero)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n23_j_ds_ex.S:173
9fc031b0:	16570002 	bne	s2,s7,9fc031bc <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n23_j_ds_ex.S:174
9fc031b4:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n23_j_ds_ex.S:176
9fc031b8:	26730001 	addiu	s3,s3,1

9fc031bc <inst_error>:
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n23_j_ds_ex.S:179
9fc031bc:	00104e00 	sll	t1,s0,0x18
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n23_j_ds_ex.S:180
9fc031c0:	01334025 	or	t0,t1,s3
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n23_j_ds_ex.S:181
9fc031c4:	ae280000 	sw	t0,0(s1)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n23_j_ds_ex.S:182
9fc031c8:	03e00008 	jr	ra
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n23_j_ds_ex.S:183
9fc031cc:	00000000 	nop

9fc031d0 <n24_jal_ds_ex_test>:
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n24_jal_ds_ex.S:7
9fc031d0:	03e0b021 	move	s6,ra
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n24_jal_ds_ex.S:8
9fc031d4:	26100001 	addiu	s0,s0,1
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n24_jal_ds_ex.S:9
9fc031d8:	3c08800d 	lui	t0,0x800d
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n24_jal_ds_ex.S:11
9fc031dc:	40805800 	mtc0	zero,c0_compare
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n24_jal_ds_ex.S:12
9fc031e0:	3c170040 	lui	s7,0x40
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n24_jal_ds_ex.S:13
9fc031e4:	40976000 	mtc0	s7,c0_status
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n24_jal_ds_ex.S:14
9fc031e8:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n24_jal_ds_ex.S:17
9fc031ec:	24120001 	li	s2,1
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n24_jal_ds_ex.S:18
9fc031f0:	3c170001 	lui	s7,0x1
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n24_jal_ds_ex.S:19
9fc031f4:	ad120000 	sw	s2,0(t0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n24_jal_ds_ex.S:20
9fc031f8:	3c149fc0 	lui	s4,0x9fc0
9fc031fc:	26943200 	addiu	s4,s4,12800
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n24_jal_ds_ex.S:21
9fc03200:	0ff00d30 	jal	9fc034c0 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n24_jal_ds_ex.S:22
9fc03204:	0000000c 	syscall
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n24_jal_ds_ex.S:23
9fc03208:	165700ad 	bne	s2,s7,9fc034c0 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n24_jal_ds_ex.S:24
9fc0320c:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n24_jal_ds_ex.S:25
9fc03210:	24120001 	li	s2,1
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n24_jal_ds_ex.S:26
9fc03214:	3c149fc0 	lui	s4,0x9fc0
9fc03218:	2694321c 	addiu	s4,s4,12828
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n24_jal_ds_ex.S:27
9fc0321c:	0ff00d30 	jal	9fc034c0 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n24_jal_ds_ex.S:28
9fc03220:	0000000c 	syscall
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n24_jal_ds_ex.S:29
9fc03224:	165700a6 	bne	s2,s7,9fc034c0 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n24_jal_ds_ex.S:30
9fc03228:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n24_jal_ds_ex.S:32
9fc0322c:	24120002 	li	s2,2
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n24_jal_ds_ex.S:33
9fc03230:	3c170002 	lui	s7,0x2
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n24_jal_ds_ex.S:34
9fc03234:	ad120000 	sw	s2,0(t0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n24_jal_ds_ex.S:35
9fc03238:	3c149fc0 	lui	s4,0x9fc0
9fc0323c:	26943240 	addiu	s4,s4,12864
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n24_jal_ds_ex.S:36
9fc03240:	0ff00d30 	jal	9fc034c0 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n24_jal_ds_ex.S:37
9fc03244:	0000000d 	break
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n24_jal_ds_ex.S:38
9fc03248:	1657009d 	bne	s2,s7,9fc034c0 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n24_jal_ds_ex.S:39
9fc0324c:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n24_jal_ds_ex.S:40
9fc03250:	24120002 	li	s2,2
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n24_jal_ds_ex.S:41
9fc03254:	3c149fc0 	lui	s4,0x9fc0
9fc03258:	2694325c 	addiu	s4,s4,12892
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n24_jal_ds_ex.S:42
9fc0325c:	0ff00d30 	jal	9fc034c0 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n24_jal_ds_ex.S:43
9fc03260:	0000000d 	break
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n24_jal_ds_ex.S:44
9fc03264:	16570096 	bne	s2,s7,9fc034c0 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n24_jal_ds_ex.S:45
9fc03268:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n24_jal_ds_ex.S:47
9fc0326c:	24120003 	li	s2,3
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n24_jal_ds_ex.S:48
9fc03270:	3c170003 	lui	s7,0x3
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n24_jal_ds_ex.S:49
9fc03274:	ad120000 	sw	s2,0(t0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n24_jal_ds_ex.S:50
9fc03278:	3c149fc0 	lui	s4,0x9fc0
9fc0327c:	26943290 	addiu	s4,s4,12944
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n24_jal_ds_ex.S:51
9fc03280:	3c04ba03 	lui	a0,0xba03
9fc03284:	34844f60 	ori	a0,a0,0x4f60
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n24_jal_ds_ex.S:52
9fc03288:	3c05b615 	lui	a1,0xb615
9fc0328c:	34a5fd67 	ori	a1,a1,0xfd67
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n24_jal_ds_ex.S:53
9fc03290:	0ff00d30 	jal	9fc034c0 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n24_jal_ds_ex.S:54
9fc03294:	0085b820 	add	s7,a0,a1
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n24_jal_ds_ex.S:55
9fc03298:	16570089 	bne	s2,s7,9fc034c0 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n24_jal_ds_ex.S:56
9fc0329c:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n24_jal_ds_ex.S:57
9fc032a0:	24120003 	li	s2,3
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n24_jal_ds_ex.S:58
9fc032a4:	3c149fc0 	lui	s4,0x9fc0
9fc032a8:	269432ac 	addiu	s4,s4,12972
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n24_jal_ds_ex.S:59
9fc032ac:	0ff00d30 	jal	9fc034c0 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n24_jal_ds_ex.S:60
9fc032b0:	0085b820 	add	s7,a0,a1
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n24_jal_ds_ex.S:61
9fc032b4:	ad170000 	sw	s7,0(t0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n24_jal_ds_ex.S:62
9fc032b8:	16570081 	bne	s2,s7,9fc034c0 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n24_jal_ds_ex.S:63
9fc032bc:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n24_jal_ds_ex.S:64
9fc032c0:	24120003 	li	s2,3
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n24_jal_ds_ex.S:65
9fc032c4:	ad120000 	sw	s2,0(t0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n24_jal_ds_ex.S:66
9fc032c8:	3c149fc0 	lui	s4,0x9fc0
9fc032cc:	269432d8 	addiu	s4,s4,13016
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n24_jal_ds_ex.S:67
9fc032d0:	3c047fff 	lui	a0,0x7fff
9fc032d4:	3484c19e 	ori	a0,a0,0xc19e
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n24_jal_ds_ex.S:68
9fc032d8:	0ff00d30 	jal	9fc034c0 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n24_jal_ds_ex.S:69
9fc032dc:	20976512 	addi	s7,a0,25874
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n24_jal_ds_ex.S:70
9fc032e0:	16570077 	bne	s2,s7,9fc034c0 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n24_jal_ds_ex.S:71
9fc032e4:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n24_jal_ds_ex.S:72
9fc032e8:	24120003 	li	s2,3
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n24_jal_ds_ex.S:73
9fc032ec:	3c149fc0 	lui	s4,0x9fc0
9fc032f0:	269432f4 	addiu	s4,s4,13044
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n24_jal_ds_ex.S:74
9fc032f4:	0ff00d30 	jal	9fc034c0 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n24_jal_ds_ex.S:75
9fc032f8:	20976512 	addi	s7,a0,25874
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n24_jal_ds_ex.S:76
9fc032fc:	16570070 	bne	s2,s7,9fc034c0 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n24_jal_ds_ex.S:77
9fc03300:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n24_jal_ds_ex.S:78
9fc03304:	24120003 	li	s2,3
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n24_jal_ds_ex.S:79
9fc03308:	3c149fc0 	lui	s4,0x9fc0
9fc0330c:	26943320 	addiu	s4,s4,13088
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n24_jal_ds_ex.S:80
9fc03310:	3c04a85e 	lui	a0,0xa85e
9fc03314:	34847d00 	ori	a0,a0,0x7d00
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n24_jal_ds_ex.S:81
9fc03318:	3c056b7e 	lui	a1,0x6b7e
9fc0331c:	34a58e36 	ori	a1,a1,0x8e36
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n24_jal_ds_ex.S:82
9fc03320:	0ff00d30 	jal	9fc034c0 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n24_jal_ds_ex.S:83
9fc03324:	0085b822 	sub	s7,a0,a1
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n24_jal_ds_ex.S:84
9fc03328:	16570065 	bne	s2,s7,9fc034c0 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n24_jal_ds_ex.S:85
9fc0332c:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n24_jal_ds_ex.S:86
9fc03330:	24120003 	li	s2,3
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n24_jal_ds_ex.S:87
9fc03334:	3c149fc0 	lui	s4,0x9fc0
9fc03338:	2694333c 	addiu	s4,s4,13116
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n24_jal_ds_ex.S:88
9fc0333c:	0ff00d30 	jal	9fc034c0 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n24_jal_ds_ex.S:89
9fc03340:	0085b822 	sub	s7,a0,a1
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n24_jal_ds_ex.S:90
9fc03344:	1657005e 	bne	s2,s7,9fc034c0 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n24_jal_ds_ex.S:91
9fc03348:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n24_jal_ds_ex.S:93
9fc0334c:	24120004 	li	s2,4
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n24_jal_ds_ex.S:94
9fc03350:	3c170004 	lui	s7,0x4
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n24_jal_ds_ex.S:95
9fc03354:	ad120000 	sw	s2,0(t0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n24_jal_ds_ex.S:96
9fc03358:	3c149fc0 	lui	s4,0x9fc0
9fc0335c:	26943360 	addiu	s4,s4,13152
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n24_jal_ds_ex.S:97
9fc03360:	0ff00d30 	jal	9fc034c0 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n24_jal_ds_ex.S:98
9fc03364:	8d170002 	lw	s7,2(t0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n24_jal_ds_ex.S:99
9fc03368:	16570055 	bne	s2,s7,9fc034c0 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n24_jal_ds_ex.S:100
9fc0336c:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n24_jal_ds_ex.S:101
9fc03370:	24120004 	li	s2,4
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n24_jal_ds_ex.S:102
9fc03374:	3c149fc0 	lui	s4,0x9fc0
9fc03378:	2694337c 	addiu	s4,s4,13180
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n24_jal_ds_ex.S:103
9fc0337c:	0ff00d30 	jal	9fc034c0 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n24_jal_ds_ex.S:104
9fc03380:	8d170002 	lw	s7,2(t0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n24_jal_ds_ex.S:105
9fc03384:	1657004e 	bne	s2,s7,9fc034c0 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n24_jal_ds_ex.S:106
9fc03388:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n24_jal_ds_ex.S:107
9fc0338c:	24120004 	li	s2,4
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n24_jal_ds_ex.S:108
9fc03390:	3c149fc0 	lui	s4,0x9fc0
9fc03394:	26943398 	addiu	s4,s4,13208
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n24_jal_ds_ex.S:109
9fc03398:	0ff00d30 	jal	9fc034c0 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n24_jal_ds_ex.S:110
9fc0339c:	85170001 	lh	s7,1(t0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n24_jal_ds_ex.S:111
9fc033a0:	02f2001b 	divu	zero,s7,s2
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n24_jal_ds_ex.S:112
9fc033a4:	16570046 	bne	s2,s7,9fc034c0 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n24_jal_ds_ex.S:113
9fc033a8:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n24_jal_ds_ex.S:114
9fc033ac:	24120004 	li	s2,4
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n24_jal_ds_ex.S:115
9fc033b0:	3c149fc0 	lui	s4,0x9fc0
9fc033b4:	269433b8 	addiu	s4,s4,13240
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n24_jal_ds_ex.S:116
9fc033b8:	0ff00d30 	jal	9fc034c0 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n24_jal_ds_ex.S:117
9fc033bc:	85170001 	lh	s7,1(t0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n24_jal_ds_ex.S:118
9fc033c0:	1657003f 	bne	s2,s7,9fc034c0 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n24_jal_ds_ex.S:119
9fc033c4:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n24_jal_ds_ex.S:120
9fc033c8:	3c149fc0 	lui	s4,0x9fc0
9fc033cc:	269433d0 	addiu	s4,s4,13264
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n24_jal_ds_ex.S:121
9fc033d0:	0ff00d30 	jal	9fc034c0 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n24_jal_ds_ex.S:122
9fc033d4:	95170003 	lhu	s7,3(t0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n24_jal_ds_ex.S:123
9fc033d8:	16570039 	bne	s2,s7,9fc034c0 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n24_jal_ds_ex.S:124
9fc033dc:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n24_jal_ds_ex.S:125
9fc033e0:	24120004 	li	s2,4
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n24_jal_ds_ex.S:126
9fc033e4:	3c149fc0 	lui	s4,0x9fc0
9fc033e8:	269433ec 	addiu	s4,s4,13292
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n24_jal_ds_ex.S:127
9fc033ec:	0ff00d30 	jal	9fc034c0 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n24_jal_ds_ex.S:128
9fc033f0:	95170003 	lhu	s7,3(t0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n24_jal_ds_ex.S:129
9fc033f4:	16570032 	bne	s2,s7,9fc034c0 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n24_jal_ds_ex.S:130
9fc033f8:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n24_jal_ds_ex.S:132
9fc033fc:	24120005 	li	s2,5
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n24_jal_ds_ex.S:133
9fc03400:	3c170005 	lui	s7,0x5
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n24_jal_ds_ex.S:134
9fc03404:	ad120000 	sw	s2,0(t0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n24_jal_ds_ex.S:135
9fc03408:	3c149fc0 	lui	s4,0x9fc0
9fc0340c:	26943410 	addiu	s4,s4,13328
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n24_jal_ds_ex.S:136
9fc03410:	0ff00d30 	jal	9fc034c0 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n24_jal_ds_ex.S:137
9fc03414:	ad170002 	sw	s7,2(t0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n24_jal_ds_ex.S:138
9fc03418:	16570029 	bne	s2,s7,9fc034c0 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n24_jal_ds_ex.S:139
9fc0341c:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n24_jal_ds_ex.S:140
9fc03420:	24120005 	li	s2,5
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n24_jal_ds_ex.S:141
9fc03424:	3c149fc0 	lui	s4,0x9fc0
9fc03428:	2694342c 	addiu	s4,s4,13356
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n24_jal_ds_ex.S:142
9fc0342c:	0ff00d30 	jal	9fc034c0 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n24_jal_ds_ex.S:143
9fc03430:	ad170002 	sw	s7,2(t0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n24_jal_ds_ex.S:144
9fc03434:	16570022 	bne	s2,s7,9fc034c0 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n24_jal_ds_ex.S:145
9fc03438:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n24_jal_ds_ex.S:146
9fc0343c:	24120005 	li	s2,5
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n24_jal_ds_ex.S:147
9fc03440:	3c149fc0 	lui	s4,0x9fc0
9fc03444:	26943448 	addiu	s4,s4,13384
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n24_jal_ds_ex.S:148
9fc03448:	0ff00d30 	jal	9fc034c0 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n24_jal_ds_ex.S:149
9fc0344c:	a5170001 	sh	s7,1(t0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n24_jal_ds_ex.S:150
9fc03450:	1657001b 	bne	s2,s7,9fc034c0 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n24_jal_ds_ex.S:151
9fc03454:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n24_jal_ds_ex.S:152
9fc03458:	24120005 	li	s2,5
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n24_jal_ds_ex.S:153
9fc0345c:	3c149fc0 	lui	s4,0x9fc0
9fc03460:	26943464 	addiu	s4,s4,13412
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n24_jal_ds_ex.S:154
9fc03464:	0ff00d30 	jal	9fc034c0 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n24_jal_ds_ex.S:155
9fc03468:	a5170001 	sh	s7,1(t0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n24_jal_ds_ex.S:156
9fc0346c:	16570014 	bne	s2,s7,9fc034c0 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n24_jal_ds_ex.S:157
9fc03470:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n24_jal_ds_ex.S:160
9fc03474:	24120007 	li	s2,7
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n24_jal_ds_ex.S:161
9fc03478:	3c170007 	lui	s7,0x7
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n24_jal_ds_ex.S:162
9fc0347c:	ad120000 	sw	s2,0(t0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n24_jal_ds_ex.S:163
9fc03480:	3c149fc0 	lui	s4,0x9fc0
9fc03484:	26943488 	addiu	s4,s4,13448
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n24_jal_ds_ex.S:164
9fc03488:	0ff00d30 	jal	9fc034c0 <inst_error>
9fc0348c:	9e3c56aa 	0x9e3c56aa
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n24_jal_ds_ex.S:166
9fc03490:	02f20018 	mult	s7,s2
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n24_jal_ds_ex.S:167
9fc03494:	1657000a 	bne	s2,s7,9fc034c0 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n24_jal_ds_ex.S:168
9fc03498:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n24_jal_ds_ex.S:169
9fc0349c:	24120007 	li	s2,7
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n24_jal_ds_ex.S:170
9fc034a0:	3c149fc0 	lui	s4,0x9fc0
9fc034a4:	269434ac 	addiu	s4,s4,13484
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n24_jal_ds_ex.S:171
9fc034a8:	02f20018 	mult	s7,s2
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n24_jal_ds_ex.S:172
9fc034ac:	0ff00d30 	jal	9fc034c0 <inst_error>
9fc034b0:	ec1ba960 	swc3	$27,-22176(zero)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n24_jal_ds_ex.S:174
9fc034b4:	16570002 	bne	s2,s7,9fc034c0 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n24_jal_ds_ex.S:175
9fc034b8:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n24_jal_ds_ex.S:177
9fc034bc:	26730001 	addiu	s3,s3,1

9fc034c0 <inst_error>:
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n24_jal_ds_ex.S:180
9fc034c0:	00104e00 	sll	t1,s0,0x18
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n24_jal_ds_ex.S:181
9fc034c4:	01334025 	or	t0,t1,s3
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n24_jal_ds_ex.S:182
9fc034c8:	ae280000 	sw	t0,0(s1)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n24_jal_ds_ex.S:183
9fc034cc:	02c0f821 	move	ra,s6
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n24_jal_ds_ex.S:184
9fc034d0:	03e00008 	jr	ra
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n24_jal_ds_ex.S:185
9fc034d4:	00000000 	nop
	...

9fc034e0 <n25_jr_ds_ex_test>:
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n25_jr_ds_ex.S:7
9fc034e0:	26100001 	addiu	s0,s0,1
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n25_jr_ds_ex.S:8
9fc034e4:	3c08800d 	lui	t0,0x800d
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n25_jr_ds_ex.S:10
9fc034e8:	40805800 	mtc0	zero,c0_compare
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n25_jr_ds_ex.S:11
9fc034ec:	3c170040 	lui	s7,0x40
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n25_jr_ds_ex.S:12
9fc034f0:	40976000 	mtc0	s7,c0_status
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n25_jr_ds_ex.S:13
9fc034f4:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n25_jr_ds_ex.S:16
9fc034f8:	3c12a000 	lui	s2,0xa000
9fc034fc:	36520001 	ori	s2,s2,0x1
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n25_jr_ds_ex.S:17
9fc03500:	3c170001 	lui	s7,0x1
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n25_jr_ds_ex.S:18
9fc03504:	ad120000 	sw	s2,0(t0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n25_jr_ds_ex.S:19
9fc03508:	3c149fc0 	lui	s4,0x9fc0
9fc0350c:	26943510 	addiu	s4,s4,13584
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n25_jr_ds_ex.S:20
9fc03510:	02400008 	jr	s2
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n25_jr_ds_ex.S:21
9fc03514:	0000000c 	syscall
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n25_jr_ds_ex.S:22
9fc03518:	165700c1 	bne	s2,s7,9fc03820 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n25_jr_ds_ex.S:23
9fc0351c:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n25_jr_ds_ex.S:24
9fc03520:	3c12a000 	lui	s2,0xa000
9fc03524:	36520001 	ori	s2,s2,0x1
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n25_jr_ds_ex.S:25
9fc03528:	3c149fc0 	lui	s4,0x9fc0
9fc0352c:	26943530 	addiu	s4,s4,13616
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n25_jr_ds_ex.S:26
9fc03530:	01000008 	jr	t0
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n25_jr_ds_ex.S:27
9fc03534:	0000000c 	syscall
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n25_jr_ds_ex.S:28
9fc03538:	165700b9 	bne	s2,s7,9fc03820 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n25_jr_ds_ex.S:29
9fc0353c:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n25_jr_ds_ex.S:31
9fc03540:	3c12a000 	lui	s2,0xa000
9fc03544:	36520002 	ori	s2,s2,0x2
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n25_jr_ds_ex.S:32
9fc03548:	3c170002 	lui	s7,0x2
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n25_jr_ds_ex.S:33
9fc0354c:	ad120000 	sw	s2,0(t0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n25_jr_ds_ex.S:34
9fc03550:	3c149fc0 	lui	s4,0x9fc0
9fc03554:	26943558 	addiu	s4,s4,13656
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n25_jr_ds_ex.S:35
9fc03558:	02400008 	jr	s2
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n25_jr_ds_ex.S:36
9fc0355c:	0000000d 	break
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n25_jr_ds_ex.S:37
9fc03560:	165700af 	bne	s2,s7,9fc03820 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n25_jr_ds_ex.S:38
9fc03564:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n25_jr_ds_ex.S:39
9fc03568:	3c12a000 	lui	s2,0xa000
9fc0356c:	36520002 	ori	s2,s2,0x2
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n25_jr_ds_ex.S:40
9fc03570:	3c149fc0 	lui	s4,0x9fc0
9fc03574:	26943578 	addiu	s4,s4,13688
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n25_jr_ds_ex.S:41
9fc03578:	01000008 	jr	t0
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n25_jr_ds_ex.S:42
9fc0357c:	0000000d 	break
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n25_jr_ds_ex.S:43
9fc03580:	165700a7 	bne	s2,s7,9fc03820 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n25_jr_ds_ex.S:44
9fc03584:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n25_jr_ds_ex.S:46
9fc03588:	3c12a000 	lui	s2,0xa000
9fc0358c:	36520003 	ori	s2,s2,0x3
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n25_jr_ds_ex.S:47
9fc03590:	3c170003 	lui	s7,0x3
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n25_jr_ds_ex.S:48
9fc03594:	ad120000 	sw	s2,0(t0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n25_jr_ds_ex.S:49
9fc03598:	3c149fc0 	lui	s4,0x9fc0
9fc0359c:	269435b0 	addiu	s4,s4,13744
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n25_jr_ds_ex.S:50
9fc035a0:	3c04ba03 	lui	a0,0xba03
9fc035a4:	34844f60 	ori	a0,a0,0x4f60
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n25_jr_ds_ex.S:51
9fc035a8:	3c05b615 	lui	a1,0xb615
9fc035ac:	34a5fd67 	ori	a1,a1,0xfd67
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n25_jr_ds_ex.S:52
9fc035b0:	02400008 	jr	s2
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n25_jr_ds_ex.S:53
9fc035b4:	0085b820 	add	s7,a0,a1
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n25_jr_ds_ex.S:54
9fc035b8:	16570099 	bne	s2,s7,9fc03820 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n25_jr_ds_ex.S:55
9fc035bc:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n25_jr_ds_ex.S:56
9fc035c0:	3c12a000 	lui	s2,0xa000
9fc035c4:	36520003 	ori	s2,s2,0x3
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n25_jr_ds_ex.S:57
9fc035c8:	3c149fc0 	lui	s4,0x9fc0
9fc035cc:	269435d0 	addiu	s4,s4,13776
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n25_jr_ds_ex.S:58
9fc035d0:	01000008 	jr	t0
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n25_jr_ds_ex.S:59
9fc035d4:	0085b820 	add	s7,a0,a1
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n25_jr_ds_ex.S:60
9fc035d8:	ad170000 	sw	s7,0(t0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n25_jr_ds_ex.S:61
9fc035dc:	16570090 	bne	s2,s7,9fc03820 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n25_jr_ds_ex.S:62
9fc035e0:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n25_jr_ds_ex.S:63
9fc035e4:	3c12a000 	lui	s2,0xa000
9fc035e8:	36520003 	ori	s2,s2,0x3
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n25_jr_ds_ex.S:64
9fc035ec:	ad120000 	sw	s2,0(t0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n25_jr_ds_ex.S:65
9fc035f0:	3c149fc0 	lui	s4,0x9fc0
9fc035f4:	26943600 	addiu	s4,s4,13824
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n25_jr_ds_ex.S:66
9fc035f8:	3c047fff 	lui	a0,0x7fff
9fc035fc:	3484c19e 	ori	a0,a0,0xc19e
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n25_jr_ds_ex.S:67
9fc03600:	02400008 	jr	s2
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n25_jr_ds_ex.S:68
9fc03604:	20976512 	addi	s7,a0,25874
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n25_jr_ds_ex.S:69
9fc03608:	16570085 	bne	s2,s7,9fc03820 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n25_jr_ds_ex.S:70
9fc0360c:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n25_jr_ds_ex.S:71
9fc03610:	3c12a000 	lui	s2,0xa000
9fc03614:	36520003 	ori	s2,s2,0x3
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n25_jr_ds_ex.S:72
9fc03618:	3c149fc0 	lui	s4,0x9fc0
9fc0361c:	26943620 	addiu	s4,s4,13856
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n25_jr_ds_ex.S:73
9fc03620:	01000008 	jr	t0
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n25_jr_ds_ex.S:74
9fc03624:	20976512 	addi	s7,a0,25874
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n25_jr_ds_ex.S:75
9fc03628:	1657007d 	bne	s2,s7,9fc03820 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n25_jr_ds_ex.S:76
9fc0362c:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n25_jr_ds_ex.S:77
9fc03630:	3c12a000 	lui	s2,0xa000
9fc03634:	36520003 	ori	s2,s2,0x3
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n25_jr_ds_ex.S:78
9fc03638:	3c149fc0 	lui	s4,0x9fc0
9fc0363c:	26943650 	addiu	s4,s4,13904
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n25_jr_ds_ex.S:79
9fc03640:	3c04a85e 	lui	a0,0xa85e
9fc03644:	34847d00 	ori	a0,a0,0x7d00
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n25_jr_ds_ex.S:80
9fc03648:	3c056b7e 	lui	a1,0x6b7e
9fc0364c:	34a58e36 	ori	a1,a1,0x8e36
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n25_jr_ds_ex.S:81
9fc03650:	02400008 	jr	s2
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n25_jr_ds_ex.S:82
9fc03654:	0085b822 	sub	s7,a0,a1
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n25_jr_ds_ex.S:83
9fc03658:	16570071 	bne	s2,s7,9fc03820 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n25_jr_ds_ex.S:84
9fc0365c:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n25_jr_ds_ex.S:85
9fc03660:	3c12a000 	lui	s2,0xa000
9fc03664:	36520003 	ori	s2,s2,0x3
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n25_jr_ds_ex.S:86
9fc03668:	3c149fc0 	lui	s4,0x9fc0
9fc0366c:	26943670 	addiu	s4,s4,13936
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n25_jr_ds_ex.S:87
9fc03670:	01000008 	jr	t0
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n25_jr_ds_ex.S:88
9fc03674:	0085b822 	sub	s7,a0,a1
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n25_jr_ds_ex.S:89
9fc03678:	16570069 	bne	s2,s7,9fc03820 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n25_jr_ds_ex.S:90
9fc0367c:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n25_jr_ds_ex.S:92
9fc03680:	3c12a000 	lui	s2,0xa000
9fc03684:	36520004 	ori	s2,s2,0x4
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n25_jr_ds_ex.S:93
9fc03688:	3c170004 	lui	s7,0x4
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n25_jr_ds_ex.S:94
9fc0368c:	ad120000 	sw	s2,0(t0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n25_jr_ds_ex.S:95
9fc03690:	3c149fc0 	lui	s4,0x9fc0
9fc03694:	26943698 	addiu	s4,s4,13976
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n25_jr_ds_ex.S:96
9fc03698:	02400008 	jr	s2
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n25_jr_ds_ex.S:97
9fc0369c:	8d170002 	lw	s7,2(t0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n25_jr_ds_ex.S:98
9fc036a0:	1657005f 	bne	s2,s7,9fc03820 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n25_jr_ds_ex.S:99
9fc036a4:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n25_jr_ds_ex.S:100
9fc036a8:	3c12a000 	lui	s2,0xa000
9fc036ac:	36520004 	ori	s2,s2,0x4
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n25_jr_ds_ex.S:101
9fc036b0:	3c149fc0 	lui	s4,0x9fc0
9fc036b4:	269436b8 	addiu	s4,s4,14008
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n25_jr_ds_ex.S:102
9fc036b8:	01000008 	jr	t0
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n25_jr_ds_ex.S:103
9fc036bc:	8d170002 	lw	s7,2(t0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n25_jr_ds_ex.S:104
9fc036c0:	16570057 	bne	s2,s7,9fc03820 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n25_jr_ds_ex.S:105
9fc036c4:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n25_jr_ds_ex.S:106
9fc036c8:	3c12a000 	lui	s2,0xa000
9fc036cc:	36520004 	ori	s2,s2,0x4
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n25_jr_ds_ex.S:107
9fc036d0:	3c149fc0 	lui	s4,0x9fc0
9fc036d4:	269436d8 	addiu	s4,s4,14040
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n25_jr_ds_ex.S:108
9fc036d8:	02400008 	jr	s2
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n25_jr_ds_ex.S:109
9fc036dc:	85170001 	lh	s7,1(t0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n25_jr_ds_ex.S:110
9fc036e0:	02f2001b 	divu	zero,s7,s2
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n25_jr_ds_ex.S:111
9fc036e4:	1657004e 	bne	s2,s7,9fc03820 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n25_jr_ds_ex.S:112
9fc036e8:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n25_jr_ds_ex.S:113
9fc036ec:	3c12a000 	lui	s2,0xa000
9fc036f0:	36520004 	ori	s2,s2,0x4
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n25_jr_ds_ex.S:114
9fc036f4:	3c149fc0 	lui	s4,0x9fc0
9fc036f8:	269436fc 	addiu	s4,s4,14076
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n25_jr_ds_ex.S:115
9fc036fc:	02400008 	jr	s2
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n25_jr_ds_ex.S:116
9fc03700:	85170001 	lh	s7,1(t0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n25_jr_ds_ex.S:117
9fc03704:	16570046 	bne	s2,s7,9fc03820 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n25_jr_ds_ex.S:118
9fc03708:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n25_jr_ds_ex.S:119
9fc0370c:	3c149fc0 	lui	s4,0x9fc0
9fc03710:	26943714 	addiu	s4,s4,14100
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n25_jr_ds_ex.S:120
9fc03714:	01000008 	jr	t0
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n25_jr_ds_ex.S:121
9fc03718:	95170003 	lhu	s7,3(t0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n25_jr_ds_ex.S:122
9fc0371c:	16570040 	bne	s2,s7,9fc03820 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n25_jr_ds_ex.S:123
9fc03720:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n25_jr_ds_ex.S:124
9fc03724:	3c12a000 	lui	s2,0xa000
9fc03728:	36520004 	ori	s2,s2,0x4
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n25_jr_ds_ex.S:125
9fc0372c:	3c149fc0 	lui	s4,0x9fc0
9fc03730:	26943734 	addiu	s4,s4,14132
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n25_jr_ds_ex.S:126
9fc03734:	01000008 	jr	t0
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n25_jr_ds_ex.S:127
9fc03738:	95170003 	lhu	s7,3(t0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n25_jr_ds_ex.S:128
9fc0373c:	16570038 	bne	s2,s7,9fc03820 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n25_jr_ds_ex.S:129
9fc03740:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n25_jr_ds_ex.S:131
9fc03744:	3c12a000 	lui	s2,0xa000
9fc03748:	36520005 	ori	s2,s2,0x5
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n25_jr_ds_ex.S:132
9fc0374c:	3c170005 	lui	s7,0x5
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n25_jr_ds_ex.S:133
9fc03750:	ad120000 	sw	s2,0(t0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n25_jr_ds_ex.S:134
9fc03754:	3c149fc0 	lui	s4,0x9fc0
9fc03758:	2694375c 	addiu	s4,s4,14172
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n25_jr_ds_ex.S:135
9fc0375c:	02400008 	jr	s2
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n25_jr_ds_ex.S:136
9fc03760:	ad170002 	sw	s7,2(t0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n25_jr_ds_ex.S:137
9fc03764:	1657002e 	bne	s2,s7,9fc03820 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n25_jr_ds_ex.S:138
9fc03768:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n25_jr_ds_ex.S:139
9fc0376c:	3c12a000 	lui	s2,0xa000
9fc03770:	36520005 	ori	s2,s2,0x5
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n25_jr_ds_ex.S:140
9fc03774:	3c149fc0 	lui	s4,0x9fc0
9fc03778:	2694377c 	addiu	s4,s4,14204
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n25_jr_ds_ex.S:141
9fc0377c:	02400008 	jr	s2
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n25_jr_ds_ex.S:142
9fc03780:	ad170002 	sw	s7,2(t0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n25_jr_ds_ex.S:143
9fc03784:	16570026 	bne	s2,s7,9fc03820 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n25_jr_ds_ex.S:144
9fc03788:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n25_jr_ds_ex.S:145
9fc0378c:	3c12a000 	lui	s2,0xa000
9fc03790:	36520005 	ori	s2,s2,0x5
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n25_jr_ds_ex.S:146
9fc03794:	3c149fc0 	lui	s4,0x9fc0
9fc03798:	2694379c 	addiu	s4,s4,14236
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n25_jr_ds_ex.S:147
9fc0379c:	01000008 	jr	t0
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n25_jr_ds_ex.S:148
9fc037a0:	a5170001 	sh	s7,1(t0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n25_jr_ds_ex.S:149
9fc037a4:	1657001e 	bne	s2,s7,9fc03820 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n25_jr_ds_ex.S:150
9fc037a8:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n25_jr_ds_ex.S:151
9fc037ac:	3c12a000 	lui	s2,0xa000
9fc037b0:	36520005 	ori	s2,s2,0x5
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n25_jr_ds_ex.S:152
9fc037b4:	3c149fc0 	lui	s4,0x9fc0
9fc037b8:	269437bc 	addiu	s4,s4,14268
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n25_jr_ds_ex.S:153
9fc037bc:	01000008 	jr	t0
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n25_jr_ds_ex.S:154
9fc037c0:	a5170001 	sh	s7,1(t0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n25_jr_ds_ex.S:155
9fc037c4:	16570016 	bne	s2,s7,9fc03820 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n25_jr_ds_ex.S:156
9fc037c8:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n25_jr_ds_ex.S:159
9fc037cc:	3c12a000 	lui	s2,0xa000
9fc037d0:	36520007 	ori	s2,s2,0x7
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n25_jr_ds_ex.S:160
9fc037d4:	3c170007 	lui	s7,0x7
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n25_jr_ds_ex.S:161
9fc037d8:	ad120000 	sw	s2,0(t0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n25_jr_ds_ex.S:162
9fc037dc:	3c149fc0 	lui	s4,0x9fc0
9fc037e0:	269437e4 	addiu	s4,s4,14308
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n25_jr_ds_ex.S:163
9fc037e4:	02400008 	jr	s2
9fc037e8:	9e3c56aa 	0x9e3c56aa
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n25_jr_ds_ex.S:165
9fc037ec:	02f20018 	mult	s7,s2
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n25_jr_ds_ex.S:166
9fc037f0:	1657000b 	bne	s2,s7,9fc03820 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n25_jr_ds_ex.S:167
9fc037f4:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n25_jr_ds_ex.S:168
9fc037f8:	3c12a000 	lui	s2,0xa000
9fc037fc:	36520007 	ori	s2,s2,0x7
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n25_jr_ds_ex.S:169
9fc03800:	3c149fc0 	lui	s4,0x9fc0
9fc03804:	2694380c 	addiu	s4,s4,14348
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n25_jr_ds_ex.S:170
9fc03808:	02f20018 	mult	s7,s2
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n25_jr_ds_ex.S:171
9fc0380c:	01000008 	jr	t0
9fc03810:	ec1ba960 	swc3	$27,-22176(zero)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n25_jr_ds_ex.S:173
9fc03814:	16570002 	bne	s2,s7,9fc03820 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n25_jr_ds_ex.S:174
9fc03818:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n25_jr_ds_ex.S:176
9fc0381c:	26730001 	addiu	s3,s3,1

9fc03820 <inst_error>:
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n25_jr_ds_ex.S:179
9fc03820:	00104e00 	sll	t1,s0,0x18
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n25_jr_ds_ex.S:180
9fc03824:	01334025 	or	t0,t1,s3
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n25_jr_ds_ex.S:181
9fc03828:	ae280000 	sw	t0,0(s1)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n25_jr_ds_ex.S:182
9fc0382c:	03e00008 	jr	ra
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n25_jr_ds_ex.S:183
9fc03830:	00000000 	nop
	...

9fc03840 <n26_jalr_ds_ex_test>:
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n26_jalr_ds_ex.S:7
9fc03840:	03e0b021 	move	s6,ra
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n26_jalr_ds_ex.S:8
9fc03844:	26100001 	addiu	s0,s0,1
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n26_jalr_ds_ex.S:9
9fc03848:	3c08800d 	lui	t0,0x800d
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n26_jalr_ds_ex.S:11
9fc0384c:	40805800 	mtc0	zero,c0_compare
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n26_jalr_ds_ex.S:12
9fc03850:	3c170040 	lui	s7,0x40
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n26_jalr_ds_ex.S:13
9fc03854:	40976000 	mtc0	s7,c0_status
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n26_jalr_ds_ex.S:14
9fc03858:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n26_jalr_ds_ex.S:17
9fc0385c:	3c12a000 	lui	s2,0xa000
9fc03860:	36520001 	ori	s2,s2,0x1
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n26_jalr_ds_ex.S:18
9fc03864:	3c170001 	lui	s7,0x1
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n26_jalr_ds_ex.S:19
9fc03868:	ad120000 	sw	s2,0(t0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n26_jalr_ds_ex.S:20
9fc0386c:	3c149fc0 	lui	s4,0x9fc0
9fc03870:	26943874 	addiu	s4,s4,14452
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n26_jalr_ds_ex.S:21
9fc03874:	0240f809 	jalr	s2
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n26_jalr_ds_ex.S:22
9fc03878:	0000000c 	syscall
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n26_jalr_ds_ex.S:23
9fc0387c:	165700c1 	bne	s2,s7,9fc03b84 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n26_jalr_ds_ex.S:24
9fc03880:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n26_jalr_ds_ex.S:25
9fc03884:	3c12a000 	lui	s2,0xa000
9fc03888:	36520001 	ori	s2,s2,0x1
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n26_jalr_ds_ex.S:26
9fc0388c:	3c149fc0 	lui	s4,0x9fc0
9fc03890:	26943894 	addiu	s4,s4,14484
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n26_jalr_ds_ex.S:27
9fc03894:	0100f809 	jalr	t0
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n26_jalr_ds_ex.S:28
9fc03898:	0000000c 	syscall
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n26_jalr_ds_ex.S:29
9fc0389c:	165700b9 	bne	s2,s7,9fc03b84 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n26_jalr_ds_ex.S:30
9fc038a0:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n26_jalr_ds_ex.S:32
9fc038a4:	3c12a000 	lui	s2,0xa000
9fc038a8:	36520002 	ori	s2,s2,0x2
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n26_jalr_ds_ex.S:33
9fc038ac:	3c170002 	lui	s7,0x2
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n26_jalr_ds_ex.S:34
9fc038b0:	ad120000 	sw	s2,0(t0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n26_jalr_ds_ex.S:35
9fc038b4:	3c149fc0 	lui	s4,0x9fc0
9fc038b8:	269438bc 	addiu	s4,s4,14524
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n26_jalr_ds_ex.S:36
9fc038bc:	0240f809 	jalr	s2
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n26_jalr_ds_ex.S:37
9fc038c0:	0000000d 	break
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n26_jalr_ds_ex.S:38
9fc038c4:	165700af 	bne	s2,s7,9fc03b84 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n26_jalr_ds_ex.S:39
9fc038c8:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n26_jalr_ds_ex.S:40
9fc038cc:	3c12a000 	lui	s2,0xa000
9fc038d0:	36520002 	ori	s2,s2,0x2
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n26_jalr_ds_ex.S:41
9fc038d4:	3c149fc0 	lui	s4,0x9fc0
9fc038d8:	269438dc 	addiu	s4,s4,14556
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n26_jalr_ds_ex.S:42
9fc038dc:	0100f809 	jalr	t0
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n26_jalr_ds_ex.S:43
9fc038e0:	0000000d 	break
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n26_jalr_ds_ex.S:44
9fc038e4:	165700a7 	bne	s2,s7,9fc03b84 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n26_jalr_ds_ex.S:45
9fc038e8:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n26_jalr_ds_ex.S:47
9fc038ec:	3c12a000 	lui	s2,0xa000
9fc038f0:	36520003 	ori	s2,s2,0x3
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n26_jalr_ds_ex.S:48
9fc038f4:	3c170003 	lui	s7,0x3
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n26_jalr_ds_ex.S:49
9fc038f8:	ad120000 	sw	s2,0(t0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n26_jalr_ds_ex.S:50
9fc038fc:	3c149fc0 	lui	s4,0x9fc0
9fc03900:	26943914 	addiu	s4,s4,14612
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n26_jalr_ds_ex.S:51
9fc03904:	3c04ba03 	lui	a0,0xba03
9fc03908:	34844f60 	ori	a0,a0,0x4f60
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n26_jalr_ds_ex.S:52
9fc0390c:	3c05b615 	lui	a1,0xb615
9fc03910:	34a5fd67 	ori	a1,a1,0xfd67
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n26_jalr_ds_ex.S:53
9fc03914:	0240f809 	jalr	s2
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n26_jalr_ds_ex.S:54
9fc03918:	0085b820 	add	s7,a0,a1
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n26_jalr_ds_ex.S:55
9fc0391c:	16570099 	bne	s2,s7,9fc03b84 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n26_jalr_ds_ex.S:56
9fc03920:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n26_jalr_ds_ex.S:57
9fc03924:	3c12a000 	lui	s2,0xa000
9fc03928:	36520003 	ori	s2,s2,0x3
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n26_jalr_ds_ex.S:58
9fc0392c:	3c149fc0 	lui	s4,0x9fc0
9fc03930:	26943934 	addiu	s4,s4,14644
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n26_jalr_ds_ex.S:59
9fc03934:	0100f809 	jalr	t0
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n26_jalr_ds_ex.S:60
9fc03938:	0085b820 	add	s7,a0,a1
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n26_jalr_ds_ex.S:61
9fc0393c:	ad170000 	sw	s7,0(t0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n26_jalr_ds_ex.S:62
9fc03940:	16570090 	bne	s2,s7,9fc03b84 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n26_jalr_ds_ex.S:63
9fc03944:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n26_jalr_ds_ex.S:64
9fc03948:	3c12a000 	lui	s2,0xa000
9fc0394c:	36520003 	ori	s2,s2,0x3
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n26_jalr_ds_ex.S:65
9fc03950:	ad120000 	sw	s2,0(t0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n26_jalr_ds_ex.S:66
9fc03954:	3c149fc0 	lui	s4,0x9fc0
9fc03958:	26943964 	addiu	s4,s4,14692
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n26_jalr_ds_ex.S:67
9fc0395c:	3c047fff 	lui	a0,0x7fff
9fc03960:	3484c19e 	ori	a0,a0,0xc19e
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n26_jalr_ds_ex.S:68
9fc03964:	0240f809 	jalr	s2
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n26_jalr_ds_ex.S:69
9fc03968:	20976512 	addi	s7,a0,25874
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n26_jalr_ds_ex.S:70
9fc0396c:	16570085 	bne	s2,s7,9fc03b84 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n26_jalr_ds_ex.S:71
9fc03970:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n26_jalr_ds_ex.S:72
9fc03974:	3c12a000 	lui	s2,0xa000
9fc03978:	36520003 	ori	s2,s2,0x3
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n26_jalr_ds_ex.S:73
9fc0397c:	3c149fc0 	lui	s4,0x9fc0
9fc03980:	26943984 	addiu	s4,s4,14724
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n26_jalr_ds_ex.S:74
9fc03984:	0100f809 	jalr	t0
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n26_jalr_ds_ex.S:75
9fc03988:	20976512 	addi	s7,a0,25874
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n26_jalr_ds_ex.S:76
9fc0398c:	1657007d 	bne	s2,s7,9fc03b84 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n26_jalr_ds_ex.S:77
9fc03990:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n26_jalr_ds_ex.S:78
9fc03994:	3c12a000 	lui	s2,0xa000
9fc03998:	36520003 	ori	s2,s2,0x3
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n26_jalr_ds_ex.S:79
9fc0399c:	3c149fc0 	lui	s4,0x9fc0
9fc039a0:	269439b4 	addiu	s4,s4,14772
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n26_jalr_ds_ex.S:80
9fc039a4:	3c04a85e 	lui	a0,0xa85e
9fc039a8:	34847d00 	ori	a0,a0,0x7d00
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n26_jalr_ds_ex.S:81
9fc039ac:	3c056b7e 	lui	a1,0x6b7e
9fc039b0:	34a58e36 	ori	a1,a1,0x8e36
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n26_jalr_ds_ex.S:82
9fc039b4:	0240f809 	jalr	s2
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n26_jalr_ds_ex.S:83
9fc039b8:	0085b822 	sub	s7,a0,a1
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n26_jalr_ds_ex.S:84
9fc039bc:	16570071 	bne	s2,s7,9fc03b84 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n26_jalr_ds_ex.S:85
9fc039c0:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n26_jalr_ds_ex.S:86
9fc039c4:	3c12a000 	lui	s2,0xa000
9fc039c8:	36520003 	ori	s2,s2,0x3
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n26_jalr_ds_ex.S:87
9fc039cc:	3c149fc0 	lui	s4,0x9fc0
9fc039d0:	269439d4 	addiu	s4,s4,14804
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n26_jalr_ds_ex.S:88
9fc039d4:	0100f809 	jalr	t0
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n26_jalr_ds_ex.S:89
9fc039d8:	0085b822 	sub	s7,a0,a1
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n26_jalr_ds_ex.S:90
9fc039dc:	16570069 	bne	s2,s7,9fc03b84 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n26_jalr_ds_ex.S:91
9fc039e0:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n26_jalr_ds_ex.S:93
9fc039e4:	3c12a000 	lui	s2,0xa000
9fc039e8:	36520004 	ori	s2,s2,0x4
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n26_jalr_ds_ex.S:94
9fc039ec:	3c170004 	lui	s7,0x4
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n26_jalr_ds_ex.S:95
9fc039f0:	ad120000 	sw	s2,0(t0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n26_jalr_ds_ex.S:96
9fc039f4:	3c149fc0 	lui	s4,0x9fc0
9fc039f8:	269439fc 	addiu	s4,s4,14844
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n26_jalr_ds_ex.S:97
9fc039fc:	0240f809 	jalr	s2
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n26_jalr_ds_ex.S:98
9fc03a00:	8d170002 	lw	s7,2(t0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n26_jalr_ds_ex.S:99
9fc03a04:	1657005f 	bne	s2,s7,9fc03b84 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n26_jalr_ds_ex.S:100
9fc03a08:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n26_jalr_ds_ex.S:101
9fc03a0c:	3c12a000 	lui	s2,0xa000
9fc03a10:	36520004 	ori	s2,s2,0x4
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n26_jalr_ds_ex.S:102
9fc03a14:	3c149fc0 	lui	s4,0x9fc0
9fc03a18:	26943a1c 	addiu	s4,s4,14876
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n26_jalr_ds_ex.S:103
9fc03a1c:	0100f809 	jalr	t0
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n26_jalr_ds_ex.S:104
9fc03a20:	8d170002 	lw	s7,2(t0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n26_jalr_ds_ex.S:105
9fc03a24:	16570057 	bne	s2,s7,9fc03b84 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n26_jalr_ds_ex.S:106
9fc03a28:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n26_jalr_ds_ex.S:107
9fc03a2c:	3c12a000 	lui	s2,0xa000
9fc03a30:	36520004 	ori	s2,s2,0x4
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n26_jalr_ds_ex.S:108
9fc03a34:	3c149fc0 	lui	s4,0x9fc0
9fc03a38:	26943a3c 	addiu	s4,s4,14908
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n26_jalr_ds_ex.S:109
9fc03a3c:	0240f809 	jalr	s2
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n26_jalr_ds_ex.S:110
9fc03a40:	85170001 	lh	s7,1(t0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n26_jalr_ds_ex.S:111
9fc03a44:	02f2001b 	divu	zero,s7,s2
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n26_jalr_ds_ex.S:112
9fc03a48:	1657004e 	bne	s2,s7,9fc03b84 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n26_jalr_ds_ex.S:113
9fc03a4c:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n26_jalr_ds_ex.S:114
9fc03a50:	3c12a000 	lui	s2,0xa000
9fc03a54:	36520004 	ori	s2,s2,0x4
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n26_jalr_ds_ex.S:115
9fc03a58:	3c149fc0 	lui	s4,0x9fc0
9fc03a5c:	26943a60 	addiu	s4,s4,14944
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n26_jalr_ds_ex.S:116
9fc03a60:	0240f809 	jalr	s2
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n26_jalr_ds_ex.S:117
9fc03a64:	85170001 	lh	s7,1(t0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n26_jalr_ds_ex.S:118
9fc03a68:	16570046 	bne	s2,s7,9fc03b84 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n26_jalr_ds_ex.S:119
9fc03a6c:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n26_jalr_ds_ex.S:120
9fc03a70:	3c149fc0 	lui	s4,0x9fc0
9fc03a74:	26943a78 	addiu	s4,s4,14968
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n26_jalr_ds_ex.S:121
9fc03a78:	0100f809 	jalr	t0
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n26_jalr_ds_ex.S:122
9fc03a7c:	95170003 	lhu	s7,3(t0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n26_jalr_ds_ex.S:123
9fc03a80:	16570040 	bne	s2,s7,9fc03b84 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n26_jalr_ds_ex.S:124
9fc03a84:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n26_jalr_ds_ex.S:125
9fc03a88:	3c12a000 	lui	s2,0xa000
9fc03a8c:	36520004 	ori	s2,s2,0x4
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n26_jalr_ds_ex.S:126
9fc03a90:	3c149fc0 	lui	s4,0x9fc0
9fc03a94:	26943a98 	addiu	s4,s4,15000
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n26_jalr_ds_ex.S:127
9fc03a98:	0100f809 	jalr	t0
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n26_jalr_ds_ex.S:128
9fc03a9c:	95170003 	lhu	s7,3(t0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n26_jalr_ds_ex.S:129
9fc03aa0:	16570038 	bne	s2,s7,9fc03b84 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n26_jalr_ds_ex.S:130
9fc03aa4:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n26_jalr_ds_ex.S:132
9fc03aa8:	3c12a000 	lui	s2,0xa000
9fc03aac:	36520005 	ori	s2,s2,0x5
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n26_jalr_ds_ex.S:133
9fc03ab0:	3c170005 	lui	s7,0x5
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n26_jalr_ds_ex.S:134
9fc03ab4:	ad120000 	sw	s2,0(t0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n26_jalr_ds_ex.S:135
9fc03ab8:	3c149fc0 	lui	s4,0x9fc0
9fc03abc:	26943ac0 	addiu	s4,s4,15040
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n26_jalr_ds_ex.S:136
9fc03ac0:	0240f809 	jalr	s2
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n26_jalr_ds_ex.S:137
9fc03ac4:	ad170002 	sw	s7,2(t0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n26_jalr_ds_ex.S:138
9fc03ac8:	1657002e 	bne	s2,s7,9fc03b84 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n26_jalr_ds_ex.S:139
9fc03acc:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n26_jalr_ds_ex.S:140
9fc03ad0:	3c12a000 	lui	s2,0xa000
9fc03ad4:	36520005 	ori	s2,s2,0x5
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n26_jalr_ds_ex.S:141
9fc03ad8:	3c149fc0 	lui	s4,0x9fc0
9fc03adc:	26943ae0 	addiu	s4,s4,15072
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n26_jalr_ds_ex.S:142
9fc03ae0:	0240f809 	jalr	s2
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n26_jalr_ds_ex.S:143
9fc03ae4:	ad170002 	sw	s7,2(t0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n26_jalr_ds_ex.S:144
9fc03ae8:	16570026 	bne	s2,s7,9fc03b84 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n26_jalr_ds_ex.S:145
9fc03aec:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n26_jalr_ds_ex.S:146
9fc03af0:	3c12a000 	lui	s2,0xa000
9fc03af4:	36520005 	ori	s2,s2,0x5
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n26_jalr_ds_ex.S:147
9fc03af8:	3c149fc0 	lui	s4,0x9fc0
9fc03afc:	26943b00 	addiu	s4,s4,15104
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n26_jalr_ds_ex.S:148
9fc03b00:	0100f809 	jalr	t0
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n26_jalr_ds_ex.S:149
9fc03b04:	a5170001 	sh	s7,1(t0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n26_jalr_ds_ex.S:150
9fc03b08:	1657001e 	bne	s2,s7,9fc03b84 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n26_jalr_ds_ex.S:151
9fc03b0c:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n26_jalr_ds_ex.S:152
9fc03b10:	3c12a000 	lui	s2,0xa000
9fc03b14:	36520005 	ori	s2,s2,0x5
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n26_jalr_ds_ex.S:153
9fc03b18:	3c149fc0 	lui	s4,0x9fc0
9fc03b1c:	26943b20 	addiu	s4,s4,15136
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n26_jalr_ds_ex.S:154
9fc03b20:	0100f809 	jalr	t0
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n26_jalr_ds_ex.S:155
9fc03b24:	a5170001 	sh	s7,1(t0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n26_jalr_ds_ex.S:156
9fc03b28:	16570016 	bne	s2,s7,9fc03b84 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n26_jalr_ds_ex.S:157
9fc03b2c:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n26_jalr_ds_ex.S:160
9fc03b30:	3c12a000 	lui	s2,0xa000
9fc03b34:	36520007 	ori	s2,s2,0x7
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n26_jalr_ds_ex.S:161
9fc03b38:	3c170007 	lui	s7,0x7
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n26_jalr_ds_ex.S:162
9fc03b3c:	ad120000 	sw	s2,0(t0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n26_jalr_ds_ex.S:163
9fc03b40:	3c149fc0 	lui	s4,0x9fc0
9fc03b44:	26943b48 	addiu	s4,s4,15176
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n26_jalr_ds_ex.S:164
9fc03b48:	0240f809 	jalr	s2
9fc03b4c:	9e3c56aa 	0x9e3c56aa
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n26_jalr_ds_ex.S:166
9fc03b50:	02f20018 	mult	s7,s2
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n26_jalr_ds_ex.S:167
9fc03b54:	1657000b 	bne	s2,s7,9fc03b84 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n26_jalr_ds_ex.S:168
9fc03b58:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n26_jalr_ds_ex.S:169
9fc03b5c:	3c12a000 	lui	s2,0xa000
9fc03b60:	36520007 	ori	s2,s2,0x7
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n26_jalr_ds_ex.S:170
9fc03b64:	3c149fc0 	lui	s4,0x9fc0
9fc03b68:	26943b70 	addiu	s4,s4,15216
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n26_jalr_ds_ex.S:171
9fc03b6c:	02f20018 	mult	s7,s2
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n26_jalr_ds_ex.S:172
9fc03b70:	0100f809 	jalr	t0
9fc03b74:	ec1ba960 	swc3	$27,-22176(zero)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n26_jalr_ds_ex.S:174
9fc03b78:	16570002 	bne	s2,s7,9fc03b84 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n26_jalr_ds_ex.S:175
9fc03b7c:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n26_jalr_ds_ex.S:177
9fc03b80:	26730001 	addiu	s3,s3,1

9fc03b84 <inst_error>:
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n26_jalr_ds_ex.S:180
9fc03b84:	00104e00 	sll	t1,s0,0x18
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n26_jalr_ds_ex.S:181
9fc03b88:	01334025 	or	t0,t1,s3
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n26_jalr_ds_ex.S:182
9fc03b8c:	ae280000 	sw	t0,0(s1)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n26_jalr_ds_ex.S:183
9fc03b90:	02c0f821 	move	ra,s6
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n26_jalr_ds_ex.S:184
9fc03b94:	03e00008 	jr	ra
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n26_jalr_ds_ex.S:185
9fc03b98:	00000000 	nop
9fc03b9c:	00000000 	nop

9fc03ba0 <n27_trap_ex_test>:
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n27_trap_ex.S:7
9fc03ba0:	26100001 	addiu	s0,s0,1
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n27_trap_ex.S:8
9fc03ba4:	3c08800d 	lui	t0,0x800d
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n27_trap_ex.S:9
9fc03ba8:	24120009 	li	s2,9
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n27_trap_ex.S:10
9fc03bac:	ad120000 	sw	s2,0(t0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n27_trap_ex.S:12
9fc03bb0:	40805800 	mtc0	zero,c0_compare
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n27_trap_ex.S:13
9fc03bb4:	3c170040 	lui	s7,0x40
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n27_trap_ex.S:14
9fc03bb8:	40976000 	mtc0	s7,c0_status
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n27_trap_ex.S:15
9fc03bbc:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n27_trap_ex.S:16
9fc03bc0:	3c170009 	lui	s7,0x9
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n27_trap_ex.S:18
9fc03bc4:	24120000 	li	s2,0
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n27_trap_ex.S:19
9fc03bc8:	34041000 	li	a0,0x1000
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n27_trap_ex.S:20
9fc03bcc:	34051000 	li	a1,0x1000
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n27_trap_ex.S:21
9fc03bd0:	3c149fc0 	lui	s4,0x9fc0
9fc03bd4:	26943bd8 	addiu	s4,s4,15320
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n27_trap_ex.S:22
9fc03bd8:	00850034 	teq	a0,a1
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n27_trap_ex.S:23
9fc03bdc:	16570122 	bne	s2,s7,9fc04068 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n27_trap_ex.S:24
9fc03be0:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n27_trap_ex.S:26
9fc03be4:	24120009 	li	s2,9
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n27_trap_ex.S:27
9fc03be8:	34041000 	li	a0,0x1000
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n27_trap_ex.S:28
9fc03bec:	34051110 	li	a1,0x1110
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n27_trap_ex.S:29
9fc03bf0:	3c149fc0 	lui	s4,0x9fc0
9fc03bf4:	26943bf8 	addiu	s4,s4,15352
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n27_trap_ex.S:30
9fc03bf8:	00850034 	teq	a0,a1
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n27_trap_ex.S:31
9fc03bfc:	1657011a 	bne	s2,s7,9fc04068 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n27_trap_ex.S:32
9fc03c00:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n27_trap_ex.S:34
9fc03c04:	24120009 	li	s2,9
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n27_trap_ex.S:35
9fc03c08:	34041000 	li	a0,0x1000
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n27_trap_ex.S:36
9fc03c0c:	34051000 	li	a1,0x1000
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n27_trap_ex.S:37
9fc03c10:	3c149fc0 	lui	s4,0x9fc0
9fc03c14:	26943c18 	addiu	s4,s4,15384
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n27_trap_ex.S:38
9fc03c18:	00850036 	tne	a0,a1
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n27_trap_ex.S:39
9fc03c1c:	16570112 	bne	s2,s7,9fc04068 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n27_trap_ex.S:40
9fc03c20:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n27_trap_ex.S:42
9fc03c24:	24120000 	li	s2,0
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n27_trap_ex.S:43
9fc03c28:	34041000 	li	a0,0x1000
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n27_trap_ex.S:44
9fc03c2c:	34051110 	li	a1,0x1110
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n27_trap_ex.S:45
9fc03c30:	3c149fc0 	lui	s4,0x9fc0
9fc03c34:	26943c38 	addiu	s4,s4,15416
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n27_trap_ex.S:46
9fc03c38:	00850036 	tne	a0,a1
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n27_trap_ex.S:47
9fc03c3c:	1657010a 	bne	s2,s7,9fc04068 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n27_trap_ex.S:48
9fc03c40:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n27_trap_ex.S:50
9fc03c44:	24120000 	li	s2,0
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n27_trap_ex.S:51
9fc03c48:	34041000 	li	a0,0x1000
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n27_trap_ex.S:52
9fc03c4c:	3c149fc0 	lui	s4,0x9fc0
9fc03c50:	26943c54 	addiu	s4,s4,15444
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n27_trap_ex.S:53
9fc03c54:	048e1110 	tnei	a0,4368
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n27_trap_ex.S:54
9fc03c58:	16570103 	bne	s2,s7,9fc04068 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n27_trap_ex.S:55
9fc03c5c:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n27_trap_ex.S:57
9fc03c60:	24120009 	li	s2,9
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n27_trap_ex.S:58
9fc03c64:	34041110 	li	a0,0x1110
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n27_trap_ex.S:59
9fc03c68:	3c149fc0 	lui	s4,0x9fc0
9fc03c6c:	26943c70 	addiu	s4,s4,15472
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n27_trap_ex.S:60
9fc03c70:	048e1110 	tnei	a0,4368
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n27_trap_ex.S:61
9fc03c74:	165700fc 	bne	s2,s7,9fc04068 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n27_trap_ex.S:62
9fc03c78:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n27_trap_ex.S:64
9fc03c7c:	24120000 	li	s2,0
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n27_trap_ex.S:65
9fc03c80:	3c040000 	lui	a0,0x0
9fc03c84:	24848000 	addiu	a0,a0,-32768
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n27_trap_ex.S:66
9fc03c88:	3c149fc0 	lui	s4,0x9fc0
9fc03c8c:	26943c90 	addiu	s4,s4,15504
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n27_trap_ex.S:67
9fc03c90:	048c8000 	teqi	a0,-32768
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n27_trap_ex.S:68
9fc03c94:	165700f4 	bne	s2,s7,9fc04068 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n27_trap_ex.S:69
9fc03c98:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n27_trap_ex.S:71
9fc03c9c:	24120009 	li	s2,9
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n27_trap_ex.S:72
9fc03ca0:	3c04ffff 	lui	a0,0xffff
9fc03ca4:	24847fff 	addiu	a0,a0,32767
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n27_trap_ex.S:73
9fc03ca8:	048c7fff 	teqi	a0,32767
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n27_trap_ex.S:74
9fc03cac:	165700ee 	bne	s2,s7,9fc04068 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n27_trap_ex.S:75
9fc03cb0:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n27_trap_ex.S:77
9fc03cb4:	24120000 	li	s2,0
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n27_trap_ex.S:78
9fc03cb8:	3c040000 	lui	a0,0x0
9fc03cbc:	24847fff 	addiu	a0,a0,32767
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n27_trap_ex.S:79
9fc03cc0:	3c149fc0 	lui	s4,0x9fc0
9fc03cc4:	26943cc8 	addiu	s4,s4,15560
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n27_trap_ex.S:80
9fc03cc8:	048c7fff 	teqi	a0,32767
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n27_trap_ex.S:81
9fc03ccc:	165700e6 	bne	s2,s7,9fc04068 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n27_trap_ex.S:82
9fc03cd0:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n27_trap_ex.S:84
9fc03cd4:	24120000 	li	s2,0
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n27_trap_ex.S:85
9fc03cd8:	34044000 	li	a0,0x4000
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n27_trap_ex.S:86
9fc03cdc:	34051000 	li	a1,0x1000
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n27_trap_ex.S:87
9fc03ce0:	3c149fc0 	lui	s4,0x9fc0
9fc03ce4:	26943ce8 	addiu	s4,s4,15592
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n27_trap_ex.S:88
9fc03ce8:	00850030 	tge	a0,a1
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n27_trap_ex.S:89
9fc03cec:	165700de 	bne	s2,s7,9fc04068 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n27_trap_ex.S:90
9fc03cf0:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n27_trap_ex.S:92
9fc03cf4:	24120009 	li	s2,9
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n27_trap_ex.S:93
9fc03cf8:	3c04ffff 	lui	a0,0xffff
9fc03cfc:	24844000 	addiu	a0,a0,16384
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n27_trap_ex.S:94
9fc03d00:	34051000 	li	a1,0x1000
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n27_trap_ex.S:95
9fc03d04:	3c149fc0 	lui	s4,0x9fc0
9fc03d08:	26943d0c 	addiu	s4,s4,15628
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n27_trap_ex.S:96
9fc03d0c:	00850030 	tge	a0,a1
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n27_trap_ex.S:97
9fc03d10:	165700d5 	bne	s2,s7,9fc04068 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n27_trap_ex.S:98
9fc03d14:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n27_trap_ex.S:100
9fc03d18:	24120009 	li	s2,9
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n27_trap_ex.S:101
9fc03d1c:	34041000 	li	a0,0x1000
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n27_trap_ex.S:102
9fc03d20:	34054000 	li	a1,0x4000
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n27_trap_ex.S:103
9fc03d24:	3c149fc0 	lui	s4,0x9fc0
9fc03d28:	26943d2c 	addiu	s4,s4,15660
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n27_trap_ex.S:104
9fc03d2c:	00850030 	tge	a0,a1
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n27_trap_ex.S:105
9fc03d30:	165700cd 	bne	s2,s7,9fc04068 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n27_trap_ex.S:106
9fc03d34:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n27_trap_ex.S:108
9fc03d38:	24120000 	li	s2,0
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n27_trap_ex.S:109
9fc03d3c:	34041000 	li	a0,0x1000
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n27_trap_ex.S:110
9fc03d40:	34051000 	li	a1,0x1000
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n27_trap_ex.S:111
9fc03d44:	3c149fc0 	lui	s4,0x9fc0
9fc03d48:	26943d4c 	addiu	s4,s4,15692
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n27_trap_ex.S:112
9fc03d4c:	00850030 	tge	a0,a1
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n27_trap_ex.S:113
9fc03d50:	165700c5 	bne	s2,s7,9fc04068 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n27_trap_ex.S:114
9fc03d54:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n27_trap_ex.S:116
9fc03d58:	24120000 	li	s2,0
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n27_trap_ex.S:117
9fc03d5c:	34044000 	li	a0,0x4000
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n27_trap_ex.S:118
9fc03d60:	34051000 	li	a1,0x1000
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n27_trap_ex.S:119
9fc03d64:	3c149fc0 	lui	s4,0x9fc0
9fc03d68:	26943d6c 	addiu	s4,s4,15724
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n27_trap_ex.S:120
9fc03d6c:	00850031 	tgeu	a0,a1
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n27_trap_ex.S:121
9fc03d70:	165700bd 	bne	s2,s7,9fc04068 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n27_trap_ex.S:122
9fc03d74:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n27_trap_ex.S:124
9fc03d78:	24120000 	li	s2,0
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n27_trap_ex.S:125
9fc03d7c:	3c04ffff 	lui	a0,0xffff
9fc03d80:	24844000 	addiu	a0,a0,16384
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n27_trap_ex.S:126
9fc03d84:	34051000 	li	a1,0x1000
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n27_trap_ex.S:127
9fc03d88:	3c149fc0 	lui	s4,0x9fc0
9fc03d8c:	26943d90 	addiu	s4,s4,15760
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n27_trap_ex.S:128
9fc03d90:	00850031 	tgeu	a0,a1
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n27_trap_ex.S:129
9fc03d94:	165700b4 	bne	s2,s7,9fc04068 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n27_trap_ex.S:130
9fc03d98:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n27_trap_ex.S:132
9fc03d9c:	24120009 	li	s2,9
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n27_trap_ex.S:133
9fc03da0:	34041000 	li	a0,0x1000
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n27_trap_ex.S:134
9fc03da4:	34054000 	li	a1,0x4000
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n27_trap_ex.S:135
9fc03da8:	3c149fc0 	lui	s4,0x9fc0
9fc03dac:	26943db0 	addiu	s4,s4,15792
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n27_trap_ex.S:136
9fc03db0:	00850031 	tgeu	a0,a1
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n27_trap_ex.S:137
9fc03db4:	165700ac 	bne	s2,s7,9fc04068 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n27_trap_ex.S:138
9fc03db8:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n27_trap_ex.S:140
9fc03dbc:	24120000 	li	s2,0
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n27_trap_ex.S:141
9fc03dc0:	34041000 	li	a0,0x1000
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n27_trap_ex.S:142
9fc03dc4:	34051000 	li	a1,0x1000
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n27_trap_ex.S:143
9fc03dc8:	3c149fc0 	lui	s4,0x9fc0
9fc03dcc:	26943dd0 	addiu	s4,s4,15824
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n27_trap_ex.S:144
9fc03dd0:	00850031 	tgeu	a0,a1
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n27_trap_ex.S:145
9fc03dd4:	165700a4 	bne	s2,s7,9fc04068 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n27_trap_ex.S:146
9fc03dd8:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n27_trap_ex.S:148
9fc03ddc:	24120000 	li	s2,0
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n27_trap_ex.S:149
9fc03de0:	3c040000 	lui	a0,0x0
9fc03de4:	24848000 	addiu	a0,a0,-32768
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n27_trap_ex.S:150
9fc03de8:	3c149fc0 	lui	s4,0x9fc0
9fc03dec:	26943df0 	addiu	s4,s4,15856
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n27_trap_ex.S:151
9fc03df0:	04888000 	tgei	a0,-32768
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n27_trap_ex.S:152
9fc03df4:	1657009c 	bne	s2,s7,9fc04068 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n27_trap_ex.S:153
9fc03df8:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n27_trap_ex.S:155
9fc03dfc:	24120009 	li	s2,9
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n27_trap_ex.S:156
9fc03e00:	3c04ffff 	lui	a0,0xffff
9fc03e04:	24847f00 	addiu	a0,a0,32512
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n27_trap_ex.S:157
9fc03e08:	3c149fc0 	lui	s4,0x9fc0
9fc03e0c:	26943e10 	addiu	s4,s4,15888
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n27_trap_ex.S:158
9fc03e10:	04887f00 	tgei	a0,32512
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n27_trap_ex.S:159
9fc03e14:	16570094 	bne	s2,s7,9fc04068 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n27_trap_ex.S:160
9fc03e18:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n27_trap_ex.S:162
9fc03e1c:	24120000 	li	s2,0
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n27_trap_ex.S:163
9fc03e20:	3c040000 	lui	a0,0x0
9fc03e24:	24847f00 	addiu	a0,a0,32512
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n27_trap_ex.S:164
9fc03e28:	3c149fc0 	lui	s4,0x9fc0
9fc03e2c:	26943e30 	addiu	s4,s4,15920
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n27_trap_ex.S:165
9fc03e30:	04887f00 	tgei	a0,32512
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n27_trap_ex.S:166
9fc03e34:	1657008c 	bne	s2,s7,9fc04068 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n27_trap_ex.S:167
9fc03e38:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n27_trap_ex.S:169
9fc03e3c:	24120000 	li	s2,0
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n27_trap_ex.S:170
9fc03e40:	3c040000 	lui	a0,0x0
9fc03e44:	24848000 	addiu	a0,a0,-32768
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n27_trap_ex.S:171
9fc03e48:	3c149fc0 	lui	s4,0x9fc0
9fc03e4c:	26943e50 	addiu	s4,s4,15952
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n27_trap_ex.S:172
9fc03e50:	04898000 	tgeiu	a0,-32768
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n27_trap_ex.S:173
9fc03e54:	16570084 	bne	s2,s7,9fc04068 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n27_trap_ex.S:174
9fc03e58:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n27_trap_ex.S:176
9fc03e5c:	24120000 	li	s2,0
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n27_trap_ex.S:177
9fc03e60:	3c04ffff 	lui	a0,0xffff
9fc03e64:	24847f00 	addiu	a0,a0,32512
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n27_trap_ex.S:178
9fc03e68:	3c149fc0 	lui	s4,0x9fc0
9fc03e6c:	26943e70 	addiu	s4,s4,15984
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n27_trap_ex.S:179
9fc03e70:	04897f00 	tgeiu	a0,32512
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n27_trap_ex.S:180
9fc03e74:	1657007c 	bne	s2,s7,9fc04068 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n27_trap_ex.S:181
9fc03e78:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n27_trap_ex.S:183
9fc03e7c:	24120000 	li	s2,0
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n27_trap_ex.S:184
9fc03e80:	3c040000 	lui	a0,0x0
9fc03e84:	24847f00 	addiu	a0,a0,32512
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n27_trap_ex.S:185
9fc03e88:	3c149fc0 	lui	s4,0x9fc0
9fc03e8c:	26943e90 	addiu	s4,s4,16016
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n27_trap_ex.S:186
9fc03e90:	04897f00 	tgeiu	a0,32512
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n27_trap_ex.S:187
9fc03e94:	16570074 	bne	s2,s7,9fc04068 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n27_trap_ex.S:188
9fc03e98:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n27_trap_ex.S:190
9fc03e9c:	24120009 	li	s2,9
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n27_trap_ex.S:191
9fc03ea0:	34044000 	li	a0,0x4000
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n27_trap_ex.S:192
9fc03ea4:	34051000 	li	a1,0x1000
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n27_trap_ex.S:193
9fc03ea8:	3c149fc0 	lui	s4,0x9fc0
9fc03eac:	26943eb0 	addiu	s4,s4,16048
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n27_trap_ex.S:194
9fc03eb0:	00850032 	tlt	a0,a1
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n27_trap_ex.S:195
9fc03eb4:	1657006c 	bne	s2,s7,9fc04068 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n27_trap_ex.S:196
9fc03eb8:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n27_trap_ex.S:198
9fc03ebc:	24120000 	li	s2,0
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n27_trap_ex.S:199
9fc03ec0:	3c04ffff 	lui	a0,0xffff
9fc03ec4:	24844000 	addiu	a0,a0,16384
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n27_trap_ex.S:200
9fc03ec8:	34051000 	li	a1,0x1000
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n27_trap_ex.S:201
9fc03ecc:	3c149fc0 	lui	s4,0x9fc0
9fc03ed0:	26943ed4 	addiu	s4,s4,16084
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n27_trap_ex.S:202
9fc03ed4:	00850032 	tlt	a0,a1
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n27_trap_ex.S:203
9fc03ed8:	16570063 	bne	s2,s7,9fc04068 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n27_trap_ex.S:204
9fc03edc:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n27_trap_ex.S:206
9fc03ee0:	24120000 	li	s2,0
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n27_trap_ex.S:207
9fc03ee4:	34041000 	li	a0,0x1000
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n27_trap_ex.S:208
9fc03ee8:	34054000 	li	a1,0x4000
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n27_trap_ex.S:209
9fc03eec:	3c149fc0 	lui	s4,0x9fc0
9fc03ef0:	26943ef4 	addiu	s4,s4,16116
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n27_trap_ex.S:210
9fc03ef4:	00850032 	tlt	a0,a1
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n27_trap_ex.S:211
9fc03ef8:	1657005b 	bne	s2,s7,9fc04068 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n27_trap_ex.S:212
9fc03efc:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n27_trap_ex.S:214
9fc03f00:	24120009 	li	s2,9
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n27_trap_ex.S:215
9fc03f04:	34041000 	li	a0,0x1000
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n27_trap_ex.S:216
9fc03f08:	34051000 	li	a1,0x1000
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n27_trap_ex.S:217
9fc03f0c:	3c149fc0 	lui	s4,0x9fc0
9fc03f10:	26943f14 	addiu	s4,s4,16148
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n27_trap_ex.S:218
9fc03f14:	00850032 	tlt	a0,a1
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n27_trap_ex.S:219
9fc03f18:	16570053 	bne	s2,s7,9fc04068 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n27_trap_ex.S:220
9fc03f1c:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n27_trap_ex.S:222
9fc03f20:	24120009 	li	s2,9
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n27_trap_ex.S:223
9fc03f24:	34044000 	li	a0,0x4000
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n27_trap_ex.S:224
9fc03f28:	34051000 	li	a1,0x1000
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n27_trap_ex.S:225
9fc03f2c:	3c149fc0 	lui	s4,0x9fc0
9fc03f30:	26943f34 	addiu	s4,s4,16180
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n27_trap_ex.S:226
9fc03f34:	00850033 	tltu	a0,a1
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n27_trap_ex.S:227
9fc03f38:	1657004b 	bne	s2,s7,9fc04068 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n27_trap_ex.S:228
9fc03f3c:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n27_trap_ex.S:230
9fc03f40:	24120009 	li	s2,9
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n27_trap_ex.S:231
9fc03f44:	3c04ffff 	lui	a0,0xffff
9fc03f48:	24844000 	addiu	a0,a0,16384
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n27_trap_ex.S:232
9fc03f4c:	34051000 	li	a1,0x1000
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n27_trap_ex.S:233
9fc03f50:	3c149fc0 	lui	s4,0x9fc0
9fc03f54:	26943f58 	addiu	s4,s4,16216
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n27_trap_ex.S:234
9fc03f58:	00850033 	tltu	a0,a1
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n27_trap_ex.S:235
9fc03f5c:	16570042 	bne	s2,s7,9fc04068 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n27_trap_ex.S:236
9fc03f60:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n27_trap_ex.S:238
9fc03f64:	24120000 	li	s2,0
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n27_trap_ex.S:239
9fc03f68:	34041000 	li	a0,0x1000
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n27_trap_ex.S:240
9fc03f6c:	34054000 	li	a1,0x4000
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n27_trap_ex.S:241
9fc03f70:	3c149fc0 	lui	s4,0x9fc0
9fc03f74:	26943f78 	addiu	s4,s4,16248
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n27_trap_ex.S:242
9fc03f78:	00850033 	tltu	a0,a1
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n27_trap_ex.S:243
9fc03f7c:	1657003a 	bne	s2,s7,9fc04068 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n27_trap_ex.S:244
9fc03f80:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n27_trap_ex.S:246
9fc03f84:	24120009 	li	s2,9
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n27_trap_ex.S:247
9fc03f88:	34041000 	li	a0,0x1000
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n27_trap_ex.S:248
9fc03f8c:	34051000 	li	a1,0x1000
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n27_trap_ex.S:249
9fc03f90:	3c149fc0 	lui	s4,0x9fc0
9fc03f94:	26943f98 	addiu	s4,s4,16280
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n27_trap_ex.S:250
9fc03f98:	00850033 	tltu	a0,a1
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n27_trap_ex.S:251
9fc03f9c:	16570032 	bne	s2,s7,9fc04068 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n27_trap_ex.S:252
9fc03fa0:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n27_trap_ex.S:254
9fc03fa4:	24120009 	li	s2,9
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n27_trap_ex.S:255
9fc03fa8:	3c040000 	lui	a0,0x0
9fc03fac:	24848000 	addiu	a0,a0,-32768
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n27_trap_ex.S:256
9fc03fb0:	3c149fc0 	lui	s4,0x9fc0
9fc03fb4:	26943fb8 	addiu	s4,s4,16312
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n27_trap_ex.S:257
9fc03fb8:	048a8000 	tlti	a0,-32768
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n27_trap_ex.S:258
9fc03fbc:	1657002a 	bne	s2,s7,9fc04068 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n27_trap_ex.S:259
9fc03fc0:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n27_trap_ex.S:261
9fc03fc4:	24120000 	li	s2,0
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n27_trap_ex.S:262
9fc03fc8:	3c04ffff 	lui	a0,0xffff
9fc03fcc:	24847f00 	addiu	a0,a0,32512
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n27_trap_ex.S:263
9fc03fd0:	3c149fc0 	lui	s4,0x9fc0
9fc03fd4:	26943fd8 	addiu	s4,s4,16344
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n27_trap_ex.S:264
9fc03fd8:	048a7f00 	tlti	a0,32512
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n27_trap_ex.S:265
9fc03fdc:	16570022 	bne	s2,s7,9fc04068 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n27_trap_ex.S:266
9fc03fe0:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n27_trap_ex.S:268
9fc03fe4:	24120009 	li	s2,9
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n27_trap_ex.S:269
9fc03fe8:	3c040000 	lui	a0,0x0
9fc03fec:	24847f00 	addiu	a0,a0,32512
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n27_trap_ex.S:270
9fc03ff0:	3c149fc0 	lui	s4,0x9fc0
9fc03ff4:	26943ff8 	addiu	s4,s4,16376
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n27_trap_ex.S:271
9fc03ff8:	048a7f00 	tlti	a0,32512
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n27_trap_ex.S:272
9fc03ffc:	1657001a 	bne	s2,s7,9fc04068 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n27_trap_ex.S:273
9fc04000:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n27_trap_ex.S:275
9fc04004:	24120009 	li	s2,9
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n27_trap_ex.S:276
9fc04008:	3c040000 	lui	a0,0x0
9fc0400c:	24848000 	addiu	a0,a0,-32768
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n27_trap_ex.S:277
9fc04010:	3c149fc0 	lui	s4,0x9fc0
9fc04014:	26944018 	addiu	s4,s4,16408
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n27_trap_ex.S:278
9fc04018:	048b8000 	tltiu	a0,-32768
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n27_trap_ex.S:279
9fc0401c:	16570012 	bne	s2,s7,9fc04068 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n27_trap_ex.S:280
9fc04020:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n27_trap_ex.S:282
9fc04024:	24120009 	li	s2,9
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n27_trap_ex.S:283
9fc04028:	3c04ffff 	lui	a0,0xffff
9fc0402c:	24847f00 	addiu	a0,a0,32512
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n27_trap_ex.S:284
9fc04030:	3c149fc0 	lui	s4,0x9fc0
9fc04034:	26944038 	addiu	s4,s4,16440
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n27_trap_ex.S:285
9fc04038:	048b7f00 	tltiu	a0,32512
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n27_trap_ex.S:286
9fc0403c:	1657000a 	bne	s2,s7,9fc04068 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n27_trap_ex.S:287
9fc04040:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n27_trap_ex.S:289
9fc04044:	24120009 	li	s2,9
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n27_trap_ex.S:290
9fc04048:	3c040000 	lui	a0,0x0
9fc0404c:	24847f00 	addiu	a0,a0,32512
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n27_trap_ex.S:291
9fc04050:	3c149fc0 	lui	s4,0x9fc0
9fc04054:	26944058 	addiu	s4,s4,16472
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n27_trap_ex.S:292
9fc04058:	048b7f00 	tltiu	a0,32512
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n27_trap_ex.S:293
9fc0405c:	16570002 	bne	s2,s7,9fc04068 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n27_trap_ex.S:294
9fc04060:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n27_trap_ex.S:296
9fc04064:	26730001 	addiu	s3,s3,1

9fc04068 <inst_error>:
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n27_trap_ex.S:299
9fc04068:	00104e00 	sll	t1,s0,0x18
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n27_trap_ex.S:300
9fc0406c:	01334025 	or	t0,t1,s3
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n27_trap_ex.S:301
9fc04070:	ae280000 	sw	t0,0(s1)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n27_trap_ex.S:302
9fc04074:	03e00008 	jr	ra
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n27_trap_ex.S:303
9fc04078:	00000000 	nop
9fc0407c:	00000000 	nop

9fc04080 <n2_break_ex_test>:
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n2_break_ex.S:7
9fc04080:	26100001 	addiu	s0,s0,1
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n2_break_ex.S:8
9fc04084:	3c08800d 	lui	t0,0x800d
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n2_break_ex.S:9
9fc04088:	24120002 	li	s2,2
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n2_break_ex.S:10
9fc0408c:	ad120000 	sw	s2,0(t0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n2_break_ex.S:12
9fc04090:	40805800 	mtc0	zero,c0_compare
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n2_break_ex.S:13
9fc04094:	3c170040 	lui	s7,0x40
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n2_break_ex.S:14
9fc04098:	40976000 	mtc0	s7,c0_status
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n2_break_ex.S:15
9fc0409c:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n2_break_ex.S:16
9fc040a0:	3c170002 	lui	s7,0x2
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n2_break_ex.S:19
9fc040a4:	3c149fc0 	lui	s4,0x9fc0
9fc040a8:	269440ac 	addiu	s4,s4,16556

9fc040ac <break_pc1>:
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n2_break_ex.S:21
9fc040ac:	0000000d 	break
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n2_break_ex.S:22
9fc040b0:	1657003c 	bne	s2,s7,9fc041a4 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n2_break_ex.S:23
9fc040b4:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n2_break_ex.S:25
9fc040b8:	24120002 	li	s2,2
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n2_break_ex.S:26
9fc040bc:	3c149fc0 	lui	s4,0x9fc0
9fc040c0:	269440cc 	addiu	s4,s4,16588
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n2_break_ex.S:27
9fc040c4:	ad080004 	sw	t0,4(t0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n2_break_ex.S:28
9fc040c8:	ad140004 	sw	s4,4(t0)

9fc040cc <break_pc2>:
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n2_break_ex.S:30
9fc040cc:	0000000d 	break
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n2_break_ex.S:31
9fc040d0:	ad140000 	sw	s4,0(t0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n2_break_ex.S:32
9fc040d4:	8d090004 	lw	t1,4(t0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n2_break_ex.S:33
9fc040d8:	15340032 	bne	t1,s4,9fc041a4 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n2_break_ex.S:34
9fc040dc:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n2_break_ex.S:35
9fc040e0:	16570030 	bne	s2,s7,9fc041a4 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n2_break_ex.S:36
9fc040e4:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n2_break_ex.S:37
9fc040e8:	24120002 	li	s2,2
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n2_break_ex.S:38
9fc040ec:	ad120000 	sw	s2,0(t0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n2_break_ex.S:40
9fc040f0:	24120002 	li	s2,2
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n2_break_ex.S:41
9fc040f4:	3c149fc0 	lui	s4,0x9fc0
9fc040f8:	26944104 	addiu	s4,s4,16644
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n2_break_ex.S:42
9fc040fc:	01000011 	mthi	t0
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n2_break_ex.S:43
9fc04100:	0110001b 	divu	zero,t0,s0

9fc04104 <break_pc3>:
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n2_break_ex.S:45
9fc04104:	0000000d 	break
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n2_break_ex.S:46
9fc04108:	00004810 	mfhi	t1
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n2_break_ex.S:47
9fc0410c:	11280025 	beq	t1,t0,9fc041a4 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n2_break_ex.S:48
9fc04110:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n2_break_ex.S:49
9fc04114:	16570023 	bne	s2,s7,9fc041a4 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n2_break_ex.S:50
9fc04118:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n2_break_ex.S:52
9fc0411c:	24120002 	li	s2,2
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n2_break_ex.S:53
9fc04120:	3c149fc0 	lui	s4,0x9fc0
9fc04124:	26944128 	addiu	s4,s4,16680

9fc04128 <break_pc4>:
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n2_break_ex.S:55
9fc04128:	0000000d 	break
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n2_break_ex.S:56
9fc0412c:	0208001b 	divu	zero,s0,t0
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n2_break_ex.S:57
9fc04130:	1657001c 	bne	s2,s7,9fc041a4 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n2_break_ex.S:58
9fc04134:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n2_break_ex.S:60
9fc04138:	24120002 	li	s2,2
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n2_break_ex.S:61
9fc0413c:	3c149fc0 	lui	s4,0x9fc0
9fc04140:	2694414c 	addiu	s4,s4,16716
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n2_break_ex.S:62
9fc04144:	01000013 	mtlo	t0
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n2_break_ex.S:63
9fc04148:	01100019 	multu	t0,s0

9fc0414c <break_pc5>:
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n2_break_ex.S:65
9fc0414c:	0000000d 	break
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n2_break_ex.S:66
9fc04150:	00004810 	mfhi	t1
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n2_break_ex.S:67
9fc04154:	11280013 	beq	t1,t0,9fc041a4 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n2_break_ex.S:68
9fc04158:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n2_break_ex.S:69
9fc0415c:	16570011 	bne	s2,s7,9fc041a4 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n2_break_ex.S:70
9fc04160:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n2_break_ex.S:72
9fc04164:	24120002 	li	s2,2
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n2_break_ex.S:73
9fc04168:	3c149fc0 	lui	s4,0x9fc0
9fc0416c:	26944170 	addiu	s4,s4,16752

9fc04170 <break_pc6>:
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n2_break_ex.S:75
9fc04170:	0000000d 	break
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n2_break_ex.S:76
9fc04174:	01120019 	multu	t0,s2
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n2_break_ex.S:77
9fc04178:	1657000a 	bne	s2,s7,9fc041a4 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n2_break_ex.S:78
9fc0417c:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n2_break_ex.S:80
9fc04180:	24120002 	li	s2,2
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n2_break_ex.S:81
9fc04184:	3c149fc0 	lui	s4,0x9fc0
9fc04188:	26944190 	addiu	s4,s4,16784
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n2_break_ex.S:82
9fc0418c:	40927000 	mtc0	s2,c0_epc

9fc04190 <break_pc7>:
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n2_break_ex.S:84
9fc04190:	0000000d 	break
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n2_break_ex.S:85
9fc04194:	40887000 	mtc0	t0,c0_epc
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n2_break_ex.S:86
9fc04198:	16570002 	bne	s2,s7,9fc041a4 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n2_break_ex.S:87
9fc0419c:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n2_break_ex.S:89
9fc041a0:	26730001 	addiu	s3,s3,1

9fc041a4 <inst_error>:
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n2_break_ex.S:92
9fc041a4:	00104e00 	sll	t1,s0,0x18
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n2_break_ex.S:93
9fc041a8:	01334025 	or	t0,t1,s3
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n2_break_ex.S:94
9fc041ac:	ae280000 	sw	t0,0(s1)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n2_break_ex.S:95
9fc041b0:	03e00008 	jr	ra
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n2_break_ex.S:96
9fc041b4:	00000000 	nop
	...

9fc041c0 <n3_add_ov_ex_test>:
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n3_add_ov_ex.S:7
9fc041c0:	26100001 	addiu	s0,s0,1
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n3_add_ov_ex.S:8
9fc041c4:	3c08800d 	lui	t0,0x800d
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n3_add_ov_ex.S:9
9fc041c8:	24120003 	li	s2,3
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n3_add_ov_ex.S:10
9fc041cc:	ad120000 	sw	s2,0(t0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n3_add_ov_ex.S:12
9fc041d0:	40805800 	mtc0	zero,c0_compare
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n3_add_ov_ex.S:13
9fc041d4:	3c170040 	lui	s7,0x40
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n3_add_ov_ex.S:14
9fc041d8:	40976000 	mtc0	s7,c0_status
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n3_add_ov_ex.S:15
9fc041dc:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n3_add_ov_ex.S:16
9fc041e0:	3c170003 	lui	s7,0x3
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n3_add_ov_ex.S:19
9fc041e4:	3c0273b2 	lui	v0,0x73b2
9fc041e8:	3442cf92 	ori	v0,v0,0xcf92
9fc041ec:	3c0373b2 	lui	v1,0x73b2
9fc041f0:	3463cf92 	ori	v1,v1,0xcf92
9fc041f4:	3c0490a5 	lui	a0,0x90a5
9fc041f8:	3484f39c 	ori	a0,a0,0xf39c
9fc041fc:	3c05d421 	lui	a1,0xd421
9fc04200:	34a579e0 	ori	a1,a1,0x79e0
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n3_add_ov_ex.S:20
9fc04204:	3c149fc0 	lui	s4,0x9fc0
9fc04208:	2694420c 	addiu	s4,s4,16908
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n3_add_ov_ex.S:21
9fc0420c:	00851020 	add	v0,a0,a1
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n3_add_ov_ex.S:22
9fc04210:	1657007a 	bne	s2,s7,9fc043fc <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n3_add_ov_ex.S:23
9fc04214:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n3_add_ov_ex.S:24
9fc04218:	14430078 	bne	v0,v1,9fc043fc <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n3_add_ov_ex.S:25
9fc0421c:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n3_add_ov_ex.S:27
9fc04220:	24120003 	li	s2,3
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n3_add_ov_ex.S:28
9fc04224:	3c021a37 	lui	v0,0x1a37
9fc04228:	34426500 	ori	v0,v0,0x6500
9fc0422c:	3c031a37 	lui	v1,0x1a37
9fc04230:	34636500 	ori	v1,v1,0x6500
9fc04234:	3c042a3c 	lui	a0,0x2a3c
9fc04238:	3484a166 	ori	a0,a0,0xa166
9fc0423c:	3c05797f 	lui	a1,0x797f
9fc04240:	34a530b9 	ori	a1,a1,0x30b9
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n3_add_ov_ex.S:29
9fc04244:	3c149fc0 	lui	s4,0x9fc0
9fc04248:	26944254 	addiu	s4,s4,16980
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n3_add_ov_ex.S:30
9fc0424c:	ad080004 	sw	t0,4(t0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n3_add_ov_ex.S:31
9fc04250:	ad140004 	sw	s4,4(t0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n3_add_ov_ex.S:32
9fc04254:	00851020 	add	v0,a0,a1
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n3_add_ov_ex.S:33
9fc04258:	ad140000 	sw	s4,0(t0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n3_add_ov_ex.S:34
9fc0425c:	8d090004 	lw	t1,4(t0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n3_add_ov_ex.S:35
9fc04260:	15340066 	bne	t1,s4,9fc043fc <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n3_add_ov_ex.S:36
9fc04264:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n3_add_ov_ex.S:37
9fc04268:	16570064 	bne	s2,s7,9fc043fc <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n3_add_ov_ex.S:38
9fc0426c:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n3_add_ov_ex.S:39
9fc04270:	14430062 	bne	v0,v1,9fc043fc <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n3_add_ov_ex.S:40
9fc04274:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n3_add_ov_ex.S:41
9fc04278:	24120003 	li	s2,3
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n3_add_ov_ex.S:42
9fc0427c:	ad120000 	sw	s2,0(t0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n3_add_ov_ex.S:44
9fc04280:	24120003 	li	s2,3
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n3_add_ov_ex.S:45
9fc04284:	3c149fc0 	lui	s4,0x9fc0
9fc04288:	269442b4 	addiu	s4,s4,17076
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n3_add_ov_ex.S:46
9fc0428c:	01000011 	mthi	t0
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n3_add_ov_ex.S:47
9fc04290:	3c0257b9 	lui	v0,0x57b9
9fc04294:	3442e040 	ori	v0,v0,0xe040
9fc04298:	3c0357b9 	lui	v1,0x57b9
9fc0429c:	3463e040 	ori	v1,v1,0xe040
9fc042a0:	3c048054 	lui	a0,0x8054
9fc042a4:	348413c0 	ori	a0,a0,0x13c0
9fc042a8:	3c05dea0 	lui	a1,0xdea0
9fc042ac:	34a5e60a 	ori	a1,a1,0xe60a
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n3_add_ov_ex.S:48
9fc042b0:	0110001b 	divu	zero,t0,s0
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n3_add_ov_ex.S:49
9fc042b4:	00851020 	add	v0,a0,a1
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n3_add_ov_ex.S:50
9fc042b8:	00004810 	mfhi	t1
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n3_add_ov_ex.S:51
9fc042bc:	1128004f 	beq	t1,t0,9fc043fc <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n3_add_ov_ex.S:52
9fc042c0:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n3_add_ov_ex.S:53
9fc042c4:	1657004d 	bne	s2,s7,9fc043fc <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n3_add_ov_ex.S:54
9fc042c8:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n3_add_ov_ex.S:55
9fc042cc:	1443004b 	bne	v0,v1,9fc043fc <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n3_add_ov_ex.S:56
9fc042d0:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n3_add_ov_ex.S:58
9fc042d4:	24120003 	li	s2,3
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n3_add_ov_ex.S:59
9fc042d8:	3c0289a0 	lui	v0,0x89a0
9fc042dc:	3442a980 	ori	v0,v0,0xa980
9fc042e0:	3c0389a0 	lui	v1,0x89a0
9fc042e4:	3463a980 	ori	v1,v1,0xa980
9fc042e8:	3c04474d 	lui	a0,0x474d
9fc042ec:	3484b690 	ori	a0,a0,0xb690
9fc042f0:	3c054d4c 	lui	a1,0x4d4c
9fc042f4:	34a5bef8 	ori	a1,a1,0xbef8
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n3_add_ov_ex.S:60
9fc042f8:	3c149fc0 	lui	s4,0x9fc0
9fc042fc:	26944300 	addiu	s4,s4,17152
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n3_add_ov_ex.S:61
9fc04300:	00851020 	add	v0,a0,a1
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n3_add_ov_ex.S:62
9fc04304:	0208001b 	divu	zero,s0,t0
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n3_add_ov_ex.S:63
9fc04308:	1657003c 	bne	s2,s7,9fc043fc <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n3_add_ov_ex.S:64
9fc0430c:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n3_add_ov_ex.S:65
9fc04310:	1443003a 	bne	v0,v1,9fc043fc <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n3_add_ov_ex.S:66
9fc04314:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n3_add_ov_ex.S:68
9fc04318:	24120003 	li	s2,3
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n3_add_ov_ex.S:69
9fc0431c:	3c020f29 	lui	v0,0xf29
9fc04320:	3442c5e0 	ori	v0,v0,0xc5e0
9fc04324:	3c030f29 	lui	v1,0xf29
9fc04328:	3463c5e0 	ori	v1,v1,0xc5e0
9fc0432c:	3c046818 	lui	a0,0x6818
9fc04330:	3484e272 	ori	a0,a0,0xe272
9fc04334:	3c056f6d 	lui	a1,0x6f6d
9fc04338:	34a52620 	ori	a1,a1,0x2620
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n3_add_ov_ex.S:70
9fc0433c:	3c149fc0 	lui	s4,0x9fc0
9fc04340:	2694434c 	addiu	s4,s4,17228
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n3_add_ov_ex.S:71
9fc04344:	01000013 	mtlo	t0
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n3_add_ov_ex.S:72
9fc04348:	01100019 	multu	t0,s0
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n3_add_ov_ex.S:73
9fc0434c:	00851020 	add	v0,a0,a1
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n3_add_ov_ex.S:74
9fc04350:	00004810 	mfhi	t1
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n3_add_ov_ex.S:75
9fc04354:	11280029 	beq	t1,t0,9fc043fc <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n3_add_ov_ex.S:76
9fc04358:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n3_add_ov_ex.S:77
9fc0435c:	16570027 	bne	s2,s7,9fc043fc <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n3_add_ov_ex.S:78
9fc04360:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n3_add_ov_ex.S:79
9fc04364:	14430025 	bne	v0,v1,9fc043fc <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n3_add_ov_ex.S:80
9fc04368:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n3_add_ov_ex.S:82
9fc0436c:	24120003 	li	s2,3
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n3_add_ov_ex.S:83
9fc04370:	3c029f1c 	lui	v0,0x9f1c
9fc04374:	34425870 	ori	v0,v0,0x5870
9fc04378:	3c039f1c 	lui	v1,0x9f1c
9fc0437c:	34635870 	ori	v1,v1,0x5870
9fc04380:	3c04a7b7 	lui	a0,0xa7b7
9fc04384:	3484a764 	ori	a0,a0,0xa764
9fc04388:	3c05c2d6 	lui	a1,0xc2d6
9fc0438c:	34a51d9c 	ori	a1,a1,0x1d9c
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n3_add_ov_ex.S:84
9fc04390:	3c149fc0 	lui	s4,0x9fc0
9fc04394:	26944398 	addiu	s4,s4,17304
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n3_add_ov_ex.S:85
9fc04398:	00851020 	add	v0,a0,a1
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n3_add_ov_ex.S:86
9fc0439c:	01120019 	multu	t0,s2
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n3_add_ov_ex.S:87
9fc043a0:	16570016 	bne	s2,s7,9fc043fc <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n3_add_ov_ex.S:88
9fc043a4:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n3_add_ov_ex.S:89
9fc043a8:	14430014 	bne	v0,v1,9fc043fc <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n3_add_ov_ex.S:90
9fc043ac:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n3_add_ov_ex.S:92
9fc043b0:	24120003 	li	s2,3
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n3_add_ov_ex.S:93
9fc043b4:	3c0231e6 	lui	v0,0x31e6
9fc043b8:	3442699f 	ori	v0,v0,0x699f
9fc043bc:	3c0331e6 	lui	v1,0x31e6
9fc043c0:	3463699f 	ori	v1,v1,0x699f
9fc043c4:	3c048a78 	lui	a0,0x8a78
9fc043c8:	3484cc40 	ori	a0,a0,0xcc40
9fc043cc:	3c05ab72 	lui	a1,0xab72
9fc043d0:	34a584da 	ori	a1,a1,0x84da
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n3_add_ov_ex.S:94
9fc043d4:	3c149fc0 	lui	s4,0x9fc0
9fc043d8:	269443e0 	addiu	s4,s4,17376
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n3_add_ov_ex.S:95
9fc043dc:	40927000 	mtc0	s2,c0_epc
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n3_add_ov_ex.S:96
9fc043e0:	00851020 	add	v0,a0,a1
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n3_add_ov_ex.S:97
9fc043e4:	40887000 	mtc0	t0,c0_epc
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n3_add_ov_ex.S:98
9fc043e8:	16570004 	bne	s2,s7,9fc043fc <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n3_add_ov_ex.S:99
9fc043ec:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n3_add_ov_ex.S:100
9fc043f0:	14430002 	bne	v0,v1,9fc043fc <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n3_add_ov_ex.S:101
9fc043f4:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n3_add_ov_ex.S:103
9fc043f8:	26730001 	addiu	s3,s3,1

9fc043fc <inst_error>:
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n3_add_ov_ex.S:106
9fc043fc:	00104e00 	sll	t1,s0,0x18
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n3_add_ov_ex.S:107
9fc04400:	01334025 	or	t0,t1,s3
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n3_add_ov_ex.S:108
9fc04404:	ae280000 	sw	t0,0(s1)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n3_add_ov_ex.S:109
9fc04408:	03e00008 	jr	ra
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n3_add_ov_ex.S:110
9fc0440c:	00000000 	nop

9fc04410 <n4_addi_ov_ex_test>:
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n4_addi_ov_ex.S:7
9fc04410:	26100001 	addiu	s0,s0,1
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n4_addi_ov_ex.S:8
9fc04414:	3c08800d 	lui	t0,0x800d
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n4_addi_ov_ex.S:9
9fc04418:	24120003 	li	s2,3
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n4_addi_ov_ex.S:10
9fc0441c:	ad120000 	sw	s2,0(t0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n4_addi_ov_ex.S:12
9fc04420:	40805800 	mtc0	zero,c0_compare
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n4_addi_ov_ex.S:13
9fc04424:	3c170040 	lui	s7,0x40
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n4_addi_ov_ex.S:14
9fc04428:	40976000 	mtc0	s7,c0_status
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n4_addi_ov_ex.S:15
9fc0442c:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n4_addi_ov_ex.S:16
9fc04430:	3c170003 	lui	s7,0x3
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n4_addi_ov_ex.S:19
9fc04434:	3c02deb0 	lui	v0,0xdeb0
9fc04438:	34426fd0 	ori	v0,v0,0x6fd0
9fc0443c:	3c03deb0 	lui	v1,0xdeb0
9fc04440:	34636fd0 	ori	v1,v1,0x6fd0
9fc04444:	24042c26 	li	a0,11302
9fc04448:	3c047fff 	lui	a0,0x7fff
9fc0444c:	3484f84b 	ori	a0,a0,0xf84b
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n4_addi_ov_ex.S:20
9fc04450:	3c149fc0 	lui	s4,0x9fc0
9fc04454:	26944458 	addiu	s4,s4,17496
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n4_addi_ov_ex.S:21
9fc04458:	20822c26 	addi	v0,a0,11302
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n4_addi_ov_ex.S:22
9fc0445c:	16570072 	bne	s2,s7,9fc04628 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n4_addi_ov_ex.S:23
9fc04460:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n4_addi_ov_ex.S:25
9fc04464:	24120003 	li	s2,3
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n4_addi_ov_ex.S:26
9fc04468:	3c026c53 	lui	v0,0x6c53
9fc0446c:	344292aa 	ori	v0,v0,0x92aa
9fc04470:	3c036c53 	lui	v1,0x6c53
9fc04474:	346392aa 	ori	v1,v1,0x92aa
9fc04478:	240454b0 	li	a0,21680
9fc0447c:	3c047fff 	lui	a0,0x7fff
9fc04480:	3484f480 	ori	a0,a0,0xf480
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n4_addi_ov_ex.S:27
9fc04484:	3c149fc0 	lui	s4,0x9fc0
9fc04488:	26944494 	addiu	s4,s4,17556
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n4_addi_ov_ex.S:28
9fc0448c:	ad080004 	sw	t0,4(t0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n4_addi_ov_ex.S:29
9fc04490:	ad140004 	sw	s4,4(t0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n4_addi_ov_ex.S:30
9fc04494:	208254b0 	addi	v0,a0,21680
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n4_addi_ov_ex.S:31
9fc04498:	ad140000 	sw	s4,0(t0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n4_addi_ov_ex.S:32
9fc0449c:	8d090004 	lw	t1,4(t0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n4_addi_ov_ex.S:33
9fc044a0:	15340061 	bne	t1,s4,9fc04628 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n4_addi_ov_ex.S:34
9fc044a4:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n4_addi_ov_ex.S:35
9fc044a8:	1657005f 	bne	s2,s7,9fc04628 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n4_addi_ov_ex.S:36
9fc044ac:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n4_addi_ov_ex.S:37
9fc044b0:	1443005d 	bne	v0,v1,9fc04628 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n4_addi_ov_ex.S:38
9fc044b4:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n4_addi_ov_ex.S:39
9fc044b8:	24120003 	li	s2,3
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n4_addi_ov_ex.S:40
9fc044bc:	ad120000 	sw	s2,0(t0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n4_addi_ov_ex.S:42
9fc044c0:	24120003 	li	s2,3
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n4_addi_ov_ex.S:43
9fc044c4:	3c0260a7 	lui	v0,0x60a7
9fc044c8:	34421e30 	ori	v0,v0,0x1e30
9fc044cc:	3c0360a7 	lui	v1,0x60a7
9fc044d0:	34631e30 	ori	v1,v1,0x1e30
9fc044d4:	240471db 	li	a0,29147
9fc044d8:	3c047fff 	lui	a0,0x7fff
9fc044dc:	34849b21 	ori	a0,a0,0x9b21
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n4_addi_ov_ex.S:44
9fc044e0:	3c149fc0 	lui	s4,0x9fc0
9fc044e4:	269444f0 	addiu	s4,s4,17648
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n4_addi_ov_ex.S:45
9fc044e8:	01000011 	mthi	t0
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n4_addi_ov_ex.S:46
9fc044ec:	0110001b 	divu	zero,t0,s0
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n4_addi_ov_ex.S:47
9fc044f0:	208271db 	addi	v0,a0,29147
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n4_addi_ov_ex.S:48
9fc044f4:	00004810 	mfhi	t1
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n4_addi_ov_ex.S:49
9fc044f8:	1128004b 	beq	t1,t0,9fc04628 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n4_addi_ov_ex.S:50
9fc044fc:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n4_addi_ov_ex.S:51
9fc04500:	16570049 	bne	s2,s7,9fc04628 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n4_addi_ov_ex.S:52
9fc04504:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n4_addi_ov_ex.S:53
9fc04508:	14430047 	bne	v0,v1,9fc04628 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n4_addi_ov_ex.S:54
9fc0450c:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n4_addi_ov_ex.S:56
9fc04510:	24120003 	li	s2,3
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n4_addi_ov_ex.S:57
9fc04514:	3c02e607 	lui	v0,0xe607
9fc04518:	34425700 	ori	v0,v0,0x5700
9fc0451c:	3c03e607 	lui	v1,0xe607
9fc04520:	34635700 	ori	v1,v1,0x5700
9fc04524:	3404be07 	li	a0,0xbe07
9fc04528:	3c048000 	lui	a0,0x8000
9fc0452c:	34843a57 	ori	a0,a0,0x3a57
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n4_addi_ov_ex.S:58
9fc04530:	3c149fc0 	lui	s4,0x9fc0
9fc04534:	26944538 	addiu	s4,s4,17720
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n4_addi_ov_ex.S:59
9fc04538:	2082be07 	addi	v0,a0,-16889
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n4_addi_ov_ex.S:60
9fc0453c:	0208001b 	divu	zero,s0,t0
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n4_addi_ov_ex.S:61
9fc04540:	16570039 	bne	s2,s7,9fc04628 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n4_addi_ov_ex.S:62
9fc04544:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n4_addi_ov_ex.S:63
9fc04548:	14430037 	bne	v0,v1,9fc04628 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n4_addi_ov_ex.S:64
9fc0454c:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n4_addi_ov_ex.S:66
9fc04550:	24120003 	li	s2,3
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n4_addi_ov_ex.S:67
9fc04554:	3c028f7e 	lui	v0,0x8f7e
9fc04558:	3442e6c0 	ori	v0,v0,0xe6c0
9fc0455c:	3c038f7e 	lui	v1,0x8f7e
9fc04560:	3463e6c0 	ori	v1,v1,0xe6c0
9fc04564:	3404845d 	li	a0,0x845d
9fc04568:	3c048000 	lui	a0,0x8000
9fc0456c:	34842c93 	ori	a0,a0,0x2c93
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n4_addi_ov_ex.S:68
9fc04570:	3c149fc0 	lui	s4,0x9fc0
9fc04574:	26944580 	addiu	s4,s4,17792
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n4_addi_ov_ex.S:69
9fc04578:	01000013 	mtlo	t0
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n4_addi_ov_ex.S:70
9fc0457c:	01100019 	multu	t0,s0
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n4_addi_ov_ex.S:71
9fc04580:	2082845d 	addi	v0,a0,-31651
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n4_addi_ov_ex.S:72
9fc04584:	00004810 	mfhi	t1
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n4_addi_ov_ex.S:73
9fc04588:	11280027 	beq	t1,t0,9fc04628 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n4_addi_ov_ex.S:74
9fc0458c:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n4_addi_ov_ex.S:75
9fc04590:	16570025 	bne	s2,s7,9fc04628 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n4_addi_ov_ex.S:76
9fc04594:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n4_addi_ov_ex.S:77
9fc04598:	14430023 	bne	v0,v1,9fc04628 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n4_addi_ov_ex.S:78
9fc0459c:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n4_addi_ov_ex.S:80
9fc045a0:	24120003 	li	s2,3
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n4_addi_ov_ex.S:81
9fc045a4:	3c02bd3e 	lui	v0,0xbd3e
9fc045a8:	3442a700 	ori	v0,v0,0xa700
9fc045ac:	3c03bd3e 	lui	v1,0xbd3e
9fc045b0:	3463a700 	ori	v1,v1,0xa700
9fc045b4:	340481f4 	li	a0,0x81f4
9fc045b8:	3c048000 	lui	a0,0x8000
9fc045bc:	34844016 	ori	a0,a0,0x4016
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n4_addi_ov_ex.S:82
9fc045c0:	3c149fc0 	lui	s4,0x9fc0
9fc045c4:	269445c8 	addiu	s4,s4,17864
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n4_addi_ov_ex.S:83
9fc045c8:	208281f4 	addi	v0,a0,-32268
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n4_addi_ov_ex.S:84
9fc045cc:	01120019 	multu	t0,s2
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n4_addi_ov_ex.S:85
9fc045d0:	16570015 	bne	s2,s7,9fc04628 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n4_addi_ov_ex.S:86
9fc045d4:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n4_addi_ov_ex.S:87
9fc045d8:	14430013 	bne	v0,v1,9fc04628 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n4_addi_ov_ex.S:88
9fc045dc:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n4_addi_ov_ex.S:90
9fc045e0:	24120003 	li	s2,3
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n4_addi_ov_ex.S:91
9fc045e4:	3c020615 	lui	v0,0x615
9fc045e8:	34422570 	ori	v0,v0,0x2570
9fc045ec:	3c030615 	lui	v1,0x615
9fc045f0:	34632570 	ori	v1,v1,0x2570
9fc045f4:	3404baa6 	li	a0,0xbaa6
9fc045f8:	3c048000 	lui	a0,0x8000
9fc045fc:	34843510 	ori	a0,a0,0x3510
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n4_addi_ov_ex.S:92
9fc04600:	3c149fc0 	lui	s4,0x9fc0
9fc04604:	2694460c 	addiu	s4,s4,17932
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n4_addi_ov_ex.S:93
9fc04608:	40927000 	mtc0	s2,c0_epc
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n4_addi_ov_ex.S:94
9fc0460c:	2082baa6 	addi	v0,a0,-17754
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n4_addi_ov_ex.S:95
9fc04610:	40887000 	mtc0	t0,c0_epc
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n4_addi_ov_ex.S:96
9fc04614:	16570004 	bne	s2,s7,9fc04628 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n4_addi_ov_ex.S:97
9fc04618:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n4_addi_ov_ex.S:98
9fc0461c:	14430002 	bne	v0,v1,9fc04628 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n4_addi_ov_ex.S:99
9fc04620:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n4_addi_ov_ex.S:101
9fc04624:	26730001 	addiu	s3,s3,1

9fc04628 <inst_error>:
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n4_addi_ov_ex.S:104
9fc04628:	00104e00 	sll	t1,s0,0x18
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n4_addi_ov_ex.S:105
9fc0462c:	01334025 	or	t0,t1,s3
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n4_addi_ov_ex.S:106
9fc04630:	ae280000 	sw	t0,0(s1)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n4_addi_ov_ex.S:107
9fc04634:	03e00008 	jr	ra
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n4_addi_ov_ex.S:108
9fc04638:	00000000 	nop
9fc0463c:	00000000 	nop

9fc04640 <n5_sub_ov_ex_test>:
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n5_sub_ov_ex.S:7
9fc04640:	26100001 	addiu	s0,s0,1
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n5_sub_ov_ex.S:8
9fc04644:	3c08800d 	lui	t0,0x800d
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n5_sub_ov_ex.S:9
9fc04648:	24120003 	li	s2,3
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n5_sub_ov_ex.S:10
9fc0464c:	ad120000 	sw	s2,0(t0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n5_sub_ov_ex.S:12
9fc04650:	40805800 	mtc0	zero,c0_compare
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n5_sub_ov_ex.S:13
9fc04654:	3c170040 	lui	s7,0x40
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n5_sub_ov_ex.S:14
9fc04658:	40976000 	mtc0	s7,c0_status
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n5_sub_ov_ex.S:15
9fc0465c:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n5_sub_ov_ex.S:16
9fc04660:	3c170003 	lui	s7,0x3
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n5_sub_ov_ex.S:19
9fc04664:	3c023f06 	lui	v0,0x3f06
9fc04668:	344237b6 	ori	v0,v0,0x37b6
9fc0466c:	3c033f06 	lui	v1,0x3f06
9fc04670:	346337b6 	ori	v1,v1,0x37b6
9fc04674:	3c0463d3 	lui	a0,0x63d3
9fc04678:	3484fd1e 	ori	a0,a0,0xfd1e
9fc0467c:	3c05d037 	lui	a1,0xd037
9fc04680:	34a58bea 	ori	a1,a1,0x8bea
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n5_sub_ov_ex.S:20
9fc04684:	3c149fc0 	lui	s4,0x9fc0
9fc04688:	2694468c 	addiu	s4,s4,18060
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n5_sub_ov_ex.S:21
9fc0468c:	00851022 	sub	v0,a0,a1
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n5_sub_ov_ex.S:22
9fc04690:	1657007a 	bne	s2,s7,9fc0487c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n5_sub_ov_ex.S:23
9fc04694:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n5_sub_ov_ex.S:24
9fc04698:	14430078 	bne	v0,v1,9fc0487c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n5_sub_ov_ex.S:25
9fc0469c:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n5_sub_ov_ex.S:27
9fc046a0:	24120003 	li	s2,3
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n5_sub_ov_ex.S:28
9fc046a4:	3c028754 	lui	v0,0x8754
9fc046a8:	3442eb0d 	ori	v0,v0,0xeb0d
9fc046ac:	3c038754 	lui	v1,0x8754
9fc046b0:	3463eb0d 	ori	v1,v1,0xeb0d
9fc046b4:	3c046f8c 	lui	a0,0x6f8c
9fc046b8:	34841169 	ori	a0,a0,0x1169
9fc046bc:	3c059edd 	lui	a1,0x9edd
9fc046c0:	34a5bba4 	ori	a1,a1,0xbba4
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n5_sub_ov_ex.S:29
9fc046c4:	3c149fc0 	lui	s4,0x9fc0
9fc046c8:	269446d4 	addiu	s4,s4,18132
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n5_sub_ov_ex.S:30
9fc046cc:	ad080004 	sw	t0,4(t0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n5_sub_ov_ex.S:31
9fc046d0:	ad140004 	sw	s4,4(t0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n5_sub_ov_ex.S:32
9fc046d4:	00851022 	sub	v0,a0,a1
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n5_sub_ov_ex.S:33
9fc046d8:	ad140000 	sw	s4,0(t0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n5_sub_ov_ex.S:34
9fc046dc:	8d090004 	lw	t1,4(t0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n5_sub_ov_ex.S:35
9fc046e0:	15340066 	bne	t1,s4,9fc0487c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n5_sub_ov_ex.S:36
9fc046e4:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n5_sub_ov_ex.S:37
9fc046e8:	16570064 	bne	s2,s7,9fc0487c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n5_sub_ov_ex.S:38
9fc046ec:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n5_sub_ov_ex.S:39
9fc046f0:	14430062 	bne	v0,v1,9fc0487c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n5_sub_ov_ex.S:40
9fc046f4:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n5_sub_ov_ex.S:41
9fc046f8:	24120003 	li	s2,3
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n5_sub_ov_ex.S:42
9fc046fc:	ad120000 	sw	s2,0(t0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n5_sub_ov_ex.S:44
9fc04700:	24120003 	li	s2,3
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n5_sub_ov_ex.S:45
9fc04704:	3c02f4e0 	lui	v0,0xf4e0
9fc04708:	34421aa8 	ori	v0,v0,0x1aa8
9fc0470c:	3c03f4e0 	lui	v1,0xf4e0
9fc04710:	34631aa8 	ori	v1,v1,0x1aa8
9fc04714:	3c04734a 	lui	a0,0x734a
9fc04718:	3484367f 	ori	a0,a0,0x367f
9fc0471c:	3c05e173 	lui	a1,0xe173
9fc04720:	34a554f8 	ori	a1,a1,0x54f8
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n5_sub_ov_ex.S:46
9fc04724:	3c149fc0 	lui	s4,0x9fc0
9fc04728:	26944734 	addiu	s4,s4,18228
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n5_sub_ov_ex.S:47
9fc0472c:	01000011 	mthi	t0
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n5_sub_ov_ex.S:48
9fc04730:	0110001b 	divu	zero,t0,s0
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n5_sub_ov_ex.S:49
9fc04734:	00851022 	sub	v0,a0,a1
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n5_sub_ov_ex.S:50
9fc04738:	00004810 	mfhi	t1
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n5_sub_ov_ex.S:51
9fc0473c:	1128004f 	beq	t1,t0,9fc0487c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n5_sub_ov_ex.S:52
9fc04740:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n5_sub_ov_ex.S:53
9fc04744:	1657004d 	bne	s2,s7,9fc0487c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n5_sub_ov_ex.S:54
9fc04748:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n5_sub_ov_ex.S:55
9fc0474c:	1443004b 	bne	v0,v1,9fc0487c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n5_sub_ov_ex.S:56
9fc04750:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n5_sub_ov_ex.S:58
9fc04754:	24120003 	li	s2,3
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n5_sub_ov_ex.S:59
9fc04758:	3c02dc37 	lui	v0,0xdc37
9fc0475c:	34423c00 	ori	v0,v0,0x3c00
9fc04760:	3c03dc37 	lui	v1,0xdc37
9fc04764:	34633c00 	ori	v1,v1,0x3c00
9fc04768:	3c0421cc 	lui	a0,0x21cc
9fc0476c:	3484bee8 	ori	a0,a0,0xbee8
9fc04770:	3c059a01 	lui	a1,0x9a01
9fc04774:	34a5fac4 	ori	a1,a1,0xfac4
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n5_sub_ov_ex.S:60
9fc04778:	3c149fc0 	lui	s4,0x9fc0
9fc0477c:	26944780 	addiu	s4,s4,18304
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n5_sub_ov_ex.S:61
9fc04780:	00851022 	sub	v0,a0,a1
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n5_sub_ov_ex.S:62
9fc04784:	0208001b 	divu	zero,s0,t0
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n5_sub_ov_ex.S:63
9fc04788:	1657003c 	bne	s2,s7,9fc0487c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n5_sub_ov_ex.S:64
9fc0478c:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n5_sub_ov_ex.S:65
9fc04790:	1443003a 	bne	v0,v1,9fc0487c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n5_sub_ov_ex.S:66
9fc04794:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n5_sub_ov_ex.S:68
9fc04798:	24120003 	li	s2,3
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n5_sub_ov_ex.S:69
9fc0479c:	3c02b226 	lui	v0,0xb226
9fc047a0:	3442ec94 	ori	v0,v0,0xec94
9fc047a4:	3c03b226 	lui	v1,0xb226
9fc047a8:	3463ec94 	ori	v1,v1,0xec94
9fc047ac:	3c04b196 	lui	a0,0xb196
9fc047b0:	3484dd00 	ori	a0,a0,0xdd00
9fc047b4:	3c057dfd 	lui	a1,0x7dfd
9fc047b8:	34a59ab0 	ori	a1,a1,0x9ab0
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n5_sub_ov_ex.S:70
9fc047bc:	3c149fc0 	lui	s4,0x9fc0
9fc047c0:	269447cc 	addiu	s4,s4,18380
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n5_sub_ov_ex.S:71
9fc047c4:	01000013 	mtlo	t0
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n5_sub_ov_ex.S:72
9fc047c8:	01100019 	multu	t0,s0
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n5_sub_ov_ex.S:73
9fc047cc:	00851022 	sub	v0,a0,a1
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n5_sub_ov_ex.S:74
9fc047d0:	00004810 	mfhi	t1
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n5_sub_ov_ex.S:75
9fc047d4:	11280029 	beq	t1,t0,9fc0487c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n5_sub_ov_ex.S:76
9fc047d8:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n5_sub_ov_ex.S:77
9fc047dc:	16570027 	bne	s2,s7,9fc0487c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n5_sub_ov_ex.S:78
9fc047e0:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n5_sub_ov_ex.S:79
9fc047e4:	14430025 	bne	v0,v1,9fc0487c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n5_sub_ov_ex.S:80
9fc047e8:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n5_sub_ov_ex.S:82
9fc047ec:	24120003 	li	s2,3
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n5_sub_ov_ex.S:83
9fc047f0:	3c021625 	lui	v0,0x1625
9fc047f4:	3442bcc8 	ori	v0,v0,0xbcc8
9fc047f8:	3c031625 	lui	v1,0x1625
9fc047fc:	3463bcc8 	ori	v1,v1,0xbcc8
9fc04800:	3c04b53c 	lui	a0,0xb53c
9fc04804:	3484d464 	ori	a0,a0,0xd464
9fc04808:	3c05421d 	lui	a1,0x421d
9fc0480c:	34a5020a 	ori	a1,a1,0x20a
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n5_sub_ov_ex.S:84
9fc04810:	3c149fc0 	lui	s4,0x9fc0
9fc04814:	26944818 	addiu	s4,s4,18456
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n5_sub_ov_ex.S:85
9fc04818:	00851022 	sub	v0,a0,a1
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n5_sub_ov_ex.S:86
9fc0481c:	01120019 	multu	t0,s2
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n5_sub_ov_ex.S:87
9fc04820:	16570016 	bne	s2,s7,9fc0487c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n5_sub_ov_ex.S:88
9fc04824:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n5_sub_ov_ex.S:89
9fc04828:	14430014 	bne	v0,v1,9fc0487c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n5_sub_ov_ex.S:90
9fc0482c:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n5_sub_ov_ex.S:92
9fc04830:	24120003 	li	s2,3
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n5_sub_ov_ex.S:93
9fc04834:	3c029f76 	lui	v0,0x9f76
9fc04838:	34427750 	ori	v0,v0,0x7750
9fc0483c:	3c039f76 	lui	v1,0x9f76
9fc04840:	34637750 	ori	v1,v1,0x7750
9fc04844:	3c047041 	lui	a0,0x7041
9fc04848:	34840c7a 	ori	a0,a0,0xc7a
9fc0484c:	3c058ddc 	lui	a1,0x8ddc
9fc04850:	34a520c0 	ori	a1,a1,0x20c0
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n5_sub_ov_ex.S:94
9fc04854:	3c149fc0 	lui	s4,0x9fc0
9fc04858:	26944860 	addiu	s4,s4,18528
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n5_sub_ov_ex.S:95
9fc0485c:	40927000 	mtc0	s2,c0_epc
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n5_sub_ov_ex.S:96
9fc04860:	00851022 	sub	v0,a0,a1
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n5_sub_ov_ex.S:97
9fc04864:	40887000 	mtc0	t0,c0_epc
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n5_sub_ov_ex.S:98
9fc04868:	16570004 	bne	s2,s7,9fc0487c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n5_sub_ov_ex.S:99
9fc0486c:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n5_sub_ov_ex.S:100
9fc04870:	14430002 	bne	v0,v1,9fc0487c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n5_sub_ov_ex.S:101
9fc04874:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n5_sub_ov_ex.S:103
9fc04878:	26730001 	addiu	s3,s3,1

9fc0487c <inst_error>:
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n5_sub_ov_ex.S:106
9fc0487c:	00104e00 	sll	t1,s0,0x18
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n5_sub_ov_ex.S:107
9fc04880:	01334025 	or	t0,t1,s3
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n5_sub_ov_ex.S:108
9fc04884:	ae280000 	sw	t0,0(s1)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n5_sub_ov_ex.S:109
9fc04888:	03e00008 	jr	ra
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n5_sub_ov_ex.S:110
9fc0488c:	00000000 	nop

9fc04890 <n6_lw_adel_ex_test>:
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n6_lw_adel_ex.S:7
9fc04890:	26100001 	addiu	s0,s0,1
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n6_lw_adel_ex.S:8
9fc04894:	3c08800d 	lui	t0,0x800d
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n6_lw_adel_ex.S:9
9fc04898:	24120004 	li	s2,4
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n6_lw_adel_ex.S:10
9fc0489c:	ad120000 	sw	s2,0(t0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n6_lw_adel_ex.S:12
9fc048a0:	40805800 	mtc0	zero,c0_compare
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n6_lw_adel_ex.S:13
9fc048a4:	3c170040 	lui	s7,0x40
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n6_lw_adel_ex.S:14
9fc048a8:	40976000 	mtc0	s7,c0_status
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n6_lw_adel_ex.S:15
9fc048ac:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n6_lw_adel_ex.S:16
9fc048b0:	3c170004 	lui	s7,0x4
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n6_lw_adel_ex.S:19
9fc048b4:	3c023958 	lui	v0,0x3958
9fc048b8:	3442f252 	ori	v0,v0,0xf252
9fc048bc:	3c033958 	lui	v1,0x3958
9fc048c0:	3463f252 	ori	v1,v1,0xf252
9fc048c4:	3c04800d 	lui	a0,0x800d
9fc048c8:	3484759c 	ori	a0,a0,0x759c
9fc048cc:	3c05b27f 	lui	a1,0xb27f
9fc048d0:	34a59788 	ori	a1,a1,0x9788
9fc048d4:	24878845 	addiu	a3,a0,-30651
9fc048d8:	3c010001 	lui	at,0x1
9fc048dc:	00240821 	addu	at,at,a0
9fc048e0:	ac258844 	sw	a1,-30652(at)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n6_lw_adel_ex.S:20
9fc048e4:	3c149fc0 	lui	s4,0x9fc0
9fc048e8:	269448ec 	addiu	s4,s4,18668
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n6_lw_adel_ex.S:21
9fc048ec:	8c828845 	lw	v0,-30651(a0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n6_lw_adel_ex.S:22
9fc048f0:	1657009f 	bne	s2,s7,9fc04b70 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n6_lw_adel_ex.S:23
9fc048f4:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n6_lw_adel_ex.S:24
9fc048f8:	1443009d 	bne	v0,v1,9fc04b70 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n6_lw_adel_ex.S:25
9fc048fc:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n6_lw_adel_ex.S:26
9fc04900:	40164000 	mfc0	s6,c0_badvaddr
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n6_lw_adel_ex.S:27
9fc04904:	14f6009a 	bne	a3,s6,9fc04b70 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n6_lw_adel_ex.S:28
9fc04908:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n6_lw_adel_ex.S:30
9fc0490c:	24120004 	li	s2,4
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n6_lw_adel_ex.S:31
9fc04910:	3c02c044 	lui	v0,0xc044
9fc04914:	34422bd0 	ori	v0,v0,0x2bd0
9fc04918:	3c03c044 	lui	v1,0xc044
9fc0491c:	34632bd0 	ori	v1,v1,0x2bd0
9fc04920:	3c04800d 	lui	a0,0x800d
9fc04924:	34847748 	ori	a0,a0,0x7748
9fc04928:	3c053101 	lui	a1,0x3101
9fc0492c:	34a5bbec 	ori	a1,a1,0xbbec
9fc04930:	24870ea2 	addiu	a3,a0,3746
9fc04934:	ac850ea0 	sw	a1,3744(a0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n6_lw_adel_ex.S:32
9fc04938:	3c149fc0 	lui	s4,0x9fc0
9fc0493c:	26944948 	addiu	s4,s4,18760
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n6_lw_adel_ex.S:33
9fc04940:	ad080004 	sw	t0,4(t0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n6_lw_adel_ex.S:34
9fc04944:	ad140004 	sw	s4,4(t0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n6_lw_adel_ex.S:35
9fc04948:	8c820ea2 	lw	v0,3746(a0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n6_lw_adel_ex.S:36
9fc0494c:	ad140000 	sw	s4,0(t0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n6_lw_adel_ex.S:37
9fc04950:	8d090004 	lw	t1,4(t0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n6_lw_adel_ex.S:38
9fc04954:	15340086 	bne	t1,s4,9fc04b70 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n6_lw_adel_ex.S:39
9fc04958:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n6_lw_adel_ex.S:40
9fc0495c:	16570084 	bne	s2,s7,9fc04b70 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n6_lw_adel_ex.S:41
9fc04960:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n6_lw_adel_ex.S:42
9fc04964:	14430082 	bne	v0,v1,9fc04b70 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n6_lw_adel_ex.S:43
9fc04968:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n6_lw_adel_ex.S:44
9fc0496c:	40164000 	mfc0	s6,c0_badvaddr
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n6_lw_adel_ex.S:45
9fc04970:	14f6007f 	bne	a3,s6,9fc04b70 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n6_lw_adel_ex.S:46
9fc04974:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n6_lw_adel_ex.S:47
9fc04978:	24120004 	li	s2,4
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n6_lw_adel_ex.S:48
9fc0497c:	ad120000 	sw	s2,0(t0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n6_lw_adel_ex.S:50
9fc04980:	24120004 	li	s2,4
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n6_lw_adel_ex.S:51
9fc04984:	3c026892 	lui	v0,0x6892
9fc04988:	34429b5c 	ori	v0,v0,0x9b5c
9fc0498c:	3c036892 	lui	v1,0x6892
9fc04990:	34639b5c 	ori	v1,v1,0x9b5c
9fc04994:	3c04800d 	lui	a0,0x800d
9fc04998:	348459dc 	ori	a0,a0,0x59dc
9fc0499c:	3c0594a1 	lui	a1,0x94a1
9fc049a0:	34a5ade4 	ori	a1,a1,0xade4
9fc049a4:	24877cee 	addiu	a3,a0,31982
9fc049a8:	ac857cec 	sw	a1,31980(a0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n6_lw_adel_ex.S:52
9fc049ac:	3c149fc0 	lui	s4,0x9fc0
9fc049b0:	269449bc 	addiu	s4,s4,18876
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n6_lw_adel_ex.S:53
9fc049b4:	01000011 	mthi	t0
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n6_lw_adel_ex.S:54
9fc049b8:	0110001b 	divu	zero,t0,s0
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n6_lw_adel_ex.S:55
9fc049bc:	8c827cee 	lw	v0,31982(a0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n6_lw_adel_ex.S:56
9fc049c0:	00004810 	mfhi	t1
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n6_lw_adel_ex.S:57
9fc049c4:	1128006a 	beq	t1,t0,9fc04b70 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n6_lw_adel_ex.S:58
9fc049c8:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n6_lw_adel_ex.S:59
9fc049cc:	16570068 	bne	s2,s7,9fc04b70 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n6_lw_adel_ex.S:60
9fc049d0:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n6_lw_adel_ex.S:61
9fc049d4:	14430066 	bne	v0,v1,9fc04b70 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n6_lw_adel_ex.S:62
9fc049d8:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n6_lw_adel_ex.S:63
9fc049dc:	40164000 	mfc0	s6,c0_badvaddr
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n6_lw_adel_ex.S:64
9fc049e0:	14f60063 	bne	a3,s6,9fc04b70 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n6_lw_adel_ex.S:65
9fc049e4:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n6_lw_adel_ex.S:67
9fc049e8:	24120004 	li	s2,4
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n6_lw_adel_ex.S:68
9fc049ec:	3c027423 	lui	v0,0x7423
9fc049f0:	3442d85f 	ori	v0,v0,0xd85f
9fc049f4:	3c037423 	lui	v1,0x7423
9fc049f8:	3463d85f 	ori	v1,v1,0xd85f
9fc049fc:	3c04800d 	lui	a0,0x800d
9fc04a00:	34847748 	ori	a0,a0,0x7748
9fc04a04:	3c05e2b0 	lui	a1,0xe2b0
9fc04a08:	34a5a2c0 	ori	a1,a1,0xa2c0
9fc04a0c:	24874973 	addiu	a3,a0,18803
9fc04a10:	ac854970 	sw	a1,18800(a0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n6_lw_adel_ex.S:69
9fc04a14:	3c149fc0 	lui	s4,0x9fc0
9fc04a18:	26944a1c 	addiu	s4,s4,18972
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n6_lw_adel_ex.S:70
9fc04a1c:	8c824973 	lw	v0,18803(a0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n6_lw_adel_ex.S:71
9fc04a20:	0208001b 	divu	zero,s0,t0
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n6_lw_adel_ex.S:72
9fc04a24:	16570052 	bne	s2,s7,9fc04b70 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n6_lw_adel_ex.S:73
9fc04a28:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n6_lw_adel_ex.S:74
9fc04a2c:	14430050 	bne	v0,v1,9fc04b70 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n6_lw_adel_ex.S:75
9fc04a30:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n6_lw_adel_ex.S:76
9fc04a34:	40164000 	mfc0	s6,c0_badvaddr
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n6_lw_adel_ex.S:77
9fc04a38:	14f6004d 	bne	a3,s6,9fc04b70 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n6_lw_adel_ex.S:78
9fc04a3c:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n6_lw_adel_ex.S:80
9fc04a40:	24120004 	li	s2,4
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n6_lw_adel_ex.S:81
9fc04a44:	3c02dd06 	lui	v0,0xdd06
9fc04a48:	34424458 	ori	v0,v0,0x4458
9fc04a4c:	3c03dd06 	lui	v1,0xdd06
9fc04a50:	34634458 	ori	v1,v1,0x4458
9fc04a54:	3c04800d 	lui	a0,0x800d
9fc04a58:	34845bac 	ori	a0,a0,0x5bac
9fc04a5c:	3c050f9e 	lui	a1,0xf9e
9fc04a60:	34a5dafa 	ori	a1,a1,0xdafa
9fc04a64:	2487003e 	addiu	a3,a0,62
9fc04a68:	ac85003c 	sw	a1,60(a0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n6_lw_adel_ex.S:82
9fc04a6c:	3c149fc0 	lui	s4,0x9fc0
9fc04a70:	26944a7c 	addiu	s4,s4,19068
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n6_lw_adel_ex.S:83
9fc04a74:	01000013 	mtlo	t0
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n6_lw_adel_ex.S:84
9fc04a78:	01100019 	multu	t0,s0
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n6_lw_adel_ex.S:85
9fc04a7c:	8c82003e 	lw	v0,62(a0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n6_lw_adel_ex.S:86
9fc04a80:	00004810 	mfhi	t1
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n6_lw_adel_ex.S:87
9fc04a84:	1128003a 	beq	t1,t0,9fc04b70 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n6_lw_adel_ex.S:88
9fc04a88:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n6_lw_adel_ex.S:89
9fc04a8c:	16570038 	bne	s2,s7,9fc04b70 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n6_lw_adel_ex.S:90
9fc04a90:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n6_lw_adel_ex.S:91
9fc04a94:	14430036 	bne	v0,v1,9fc04b70 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n6_lw_adel_ex.S:92
9fc04a98:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n6_lw_adel_ex.S:93
9fc04a9c:	40164000 	mfc0	s6,c0_badvaddr
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n6_lw_adel_ex.S:94
9fc04aa0:	14f60033 	bne	a3,s6,9fc04b70 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n6_lw_adel_ex.S:95
9fc04aa4:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n6_lw_adel_ex.S:97
9fc04aa8:	24120004 	li	s2,4
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n6_lw_adel_ex.S:98
9fc04aac:	3c021514 	lui	v0,0x1514
9fc04ab0:	34428b6c 	ori	v0,v0,0x8b6c
9fc04ab4:	3c031514 	lui	v1,0x1514
9fc04ab8:	34638b6c 	ori	v1,v1,0x8b6c
9fc04abc:	3c04800d 	lui	a0,0x800d
9fc04ac0:	34840704 	ori	a0,a0,0x704
9fc04ac4:	3c055077 	lui	a1,0x5077
9fc04ac8:	34a5f320 	ori	a1,a1,0xf320
9fc04acc:	2487e53f 	addiu	a3,a0,-6849
9fc04ad0:	3c010001 	lui	at,0x1
9fc04ad4:	00240821 	addu	at,at,a0
9fc04ad8:	ac25e53c 	sw	a1,-6852(at)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n6_lw_adel_ex.S:99
9fc04adc:	3c149fc0 	lui	s4,0x9fc0
9fc04ae0:	26944ae4 	addiu	s4,s4,19172
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n6_lw_adel_ex.S:100
9fc04ae4:	8c82e53f 	lw	v0,-6849(a0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n6_lw_adel_ex.S:101
9fc04ae8:	01120019 	multu	t0,s2
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n6_lw_adel_ex.S:102
9fc04aec:	16570020 	bne	s2,s7,9fc04b70 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n6_lw_adel_ex.S:103
9fc04af0:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n6_lw_adel_ex.S:104
9fc04af4:	1443001e 	bne	v0,v1,9fc04b70 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n6_lw_adel_ex.S:105
9fc04af8:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n6_lw_adel_ex.S:106
9fc04afc:	40164000 	mfc0	s6,c0_badvaddr
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n6_lw_adel_ex.S:107
9fc04b00:	14f6001b 	bne	a3,s6,9fc04b70 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n6_lw_adel_ex.S:108
9fc04b04:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n6_lw_adel_ex.S:110
9fc04b08:	24120004 	li	s2,4
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n6_lw_adel_ex.S:111
9fc04b0c:	3c023958 	lui	v0,0x3958
9fc04b10:	3442f252 	ori	v0,v0,0xf252
9fc04b14:	3c033958 	lui	v1,0x3958
9fc04b18:	3463f252 	ori	v1,v1,0xf252
9fc04b1c:	3c04800d 	lui	a0,0x800d
9fc04b20:	3484759c 	ori	a0,a0,0x759c
9fc04b24:	3c05b27f 	lui	a1,0xb27f
9fc04b28:	34a59788 	ori	a1,a1,0x9788
9fc04b2c:	24878845 	addiu	a3,a0,-30651
9fc04b30:	3c010001 	lui	at,0x1
9fc04b34:	00240821 	addu	at,at,a0
9fc04b38:	ac258844 	sw	a1,-30652(at)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n6_lw_adel_ex.S:112
9fc04b3c:	3c149fc0 	lui	s4,0x9fc0
9fc04b40:	26944b48 	addiu	s4,s4,19272
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n6_lw_adel_ex.S:113
9fc04b44:	40927000 	mtc0	s2,c0_epc
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n6_lw_adel_ex.S:114
9fc04b48:	8c828845 	lw	v0,-30651(a0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n6_lw_adel_ex.S:115
9fc04b4c:	40887000 	mtc0	t0,c0_epc
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n6_lw_adel_ex.S:116
9fc04b50:	16570007 	bne	s2,s7,9fc04b70 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n6_lw_adel_ex.S:117
9fc04b54:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n6_lw_adel_ex.S:118
9fc04b58:	14430005 	bne	v0,v1,9fc04b70 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n6_lw_adel_ex.S:119
9fc04b5c:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n6_lw_adel_ex.S:120
9fc04b60:	40164000 	mfc0	s6,c0_badvaddr
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n6_lw_adel_ex.S:121
9fc04b64:	14f60002 	bne	a3,s6,9fc04b70 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n6_lw_adel_ex.S:122
9fc04b68:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n6_lw_adel_ex.S:124
9fc04b6c:	26730001 	addiu	s3,s3,1

9fc04b70 <inst_error>:
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n6_lw_adel_ex.S:127
9fc04b70:	00104e00 	sll	t1,s0,0x18
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n6_lw_adel_ex.S:128
9fc04b74:	01334025 	or	t0,t1,s3
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n6_lw_adel_ex.S:129
9fc04b78:	ae280000 	sw	t0,0(s1)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n6_lw_adel_ex.S:130
9fc04b7c:	03e00008 	jr	ra
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n6_lw_adel_ex.S:131
9fc04b80:	00000000 	nop
	...

9fc04b90 <n7_lh_adel_ex_test>:
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n7_lh_adel_ex.S:7
9fc04b90:	26100001 	addiu	s0,s0,1
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n7_lh_adel_ex.S:8
9fc04b94:	3c08800d 	lui	t0,0x800d
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n7_lh_adel_ex.S:9
9fc04b98:	24120004 	li	s2,4
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n7_lh_adel_ex.S:10
9fc04b9c:	ad120000 	sw	s2,0(t0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n7_lh_adel_ex.S:12
9fc04ba0:	40805800 	mtc0	zero,c0_compare
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n7_lh_adel_ex.S:13
9fc04ba4:	3c170040 	lui	s7,0x40
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n7_lh_adel_ex.S:14
9fc04ba8:	40976000 	mtc0	s7,c0_status
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n7_lh_adel_ex.S:15
9fc04bac:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n7_lh_adel_ex.S:16
9fc04bb0:	3c170004 	lui	s7,0x4
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n7_lh_adel_ex.S:19
9fc04bb4:	3c029325 	lui	v0,0x9325
9fc04bb8:	34422910 	ori	v0,v0,0x2910
9fc04bbc:	3c039325 	lui	v1,0x9325
9fc04bc0:	34632910 	ori	v1,v1,0x2910
9fc04bc4:	3c04800d 	lui	a0,0x800d
9fc04bc8:	34841348 	ori	a0,a0,0x1348
9fc04bcc:	3c050233 	lui	a1,0x233
9fc04bd0:	34a5e52c 	ori	a1,a1,0xe52c
9fc04bd4:	24879a19 	addiu	a3,a0,-26087
9fc04bd8:	3c010001 	lui	at,0x1
9fc04bdc:	00240821 	addu	at,at,a0
9fc04be0:	ac259a18 	sw	a1,-26088(at)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n7_lh_adel_ex.S:20
9fc04be4:	3c149fc0 	lui	s4,0x9fc0
9fc04be8:	26944bec 	addiu	s4,s4,19436
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n7_lh_adel_ex.S:21
9fc04bec:	84829a19 	lh	v0,-26087(a0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n7_lh_adel_ex.S:22
9fc04bf0:	165700a1 	bne	s2,s7,9fc04e78 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n7_lh_adel_ex.S:23
9fc04bf4:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n7_lh_adel_ex.S:24
9fc04bf8:	1443009f 	bne	v0,v1,9fc04e78 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n7_lh_adel_ex.S:25
9fc04bfc:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n7_lh_adel_ex.S:26
9fc04c00:	40164000 	mfc0	s6,c0_badvaddr
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n7_lh_adel_ex.S:27
9fc04c04:	14f6009c 	bne	a3,s6,9fc04e78 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n7_lh_adel_ex.S:28
9fc04c08:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n7_lh_adel_ex.S:30
9fc04c0c:	24120004 	li	s2,4
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n7_lh_adel_ex.S:31
9fc04c10:	3c02854a 	lui	v0,0x854a
9fc04c14:	3442a680 	ori	v0,v0,0xa680
9fc04c18:	3c03854a 	lui	v1,0x854a
9fc04c1c:	3463a680 	ori	v1,v1,0xa680
9fc04c20:	3c04800d 	lui	a0,0x800d
9fc04c24:	34842ca8 	ori	a0,a0,0x2ca8
9fc04c28:	3c052ba9 	lui	a1,0x2ba9
9fc04c2c:	34a50e90 	ori	a1,a1,0xe90
9fc04c30:	24872577 	addiu	a3,a0,9591
9fc04c34:	ac852574 	sw	a1,9588(a0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n7_lh_adel_ex.S:32
9fc04c38:	3c149fc0 	lui	s4,0x9fc0
9fc04c3c:	26944c48 	addiu	s4,s4,19528
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n7_lh_adel_ex.S:33
9fc04c40:	ad080004 	sw	t0,4(t0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n7_lh_adel_ex.S:34
9fc04c44:	ad140004 	sw	s4,4(t0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n7_lh_adel_ex.S:35
9fc04c48:	84822577 	lh	v0,9591(a0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n7_lh_adel_ex.S:36
9fc04c4c:	ad140000 	sw	s4,0(t0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n7_lh_adel_ex.S:37
9fc04c50:	8d090004 	lw	t1,4(t0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n7_lh_adel_ex.S:38
9fc04c54:	15340088 	bne	t1,s4,9fc04e78 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n7_lh_adel_ex.S:39
9fc04c58:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n7_lh_adel_ex.S:40
9fc04c5c:	16570086 	bne	s2,s7,9fc04e78 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n7_lh_adel_ex.S:41
9fc04c60:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n7_lh_adel_ex.S:42
9fc04c64:	14430084 	bne	v0,v1,9fc04e78 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n7_lh_adel_ex.S:43
9fc04c68:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n7_lh_adel_ex.S:44
9fc04c6c:	40164000 	mfc0	s6,c0_badvaddr
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n7_lh_adel_ex.S:45
9fc04c70:	14f60081 	bne	a3,s6,9fc04e78 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n7_lh_adel_ex.S:46
9fc04c74:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n7_lh_adel_ex.S:47
9fc04c78:	24120004 	li	s2,4
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n7_lh_adel_ex.S:48
9fc04c7c:	ad120000 	sw	s2,0(t0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n7_lh_adel_ex.S:50
9fc04c80:	24120004 	li	s2,4
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n7_lh_adel_ex.S:51
9fc04c84:	3c02541f 	lui	v0,0x541f
9fc04c88:	34426c5c 	ori	v0,v0,0x6c5c
9fc04c8c:	3c03541f 	lui	v1,0x541f
9fc04c90:	34636c5c 	ori	v1,v1,0x6c5c
9fc04c94:	3c04800d 	lui	a0,0x800d
9fc04c98:	34841570 	ori	a0,a0,0x1570
9fc04c9c:	3c059554 	lui	a1,0x9554
9fc04ca0:	34a5e8d4 	ori	a1,a1,0xe8d4
9fc04ca4:	248785e3 	addiu	a3,a0,-31261
9fc04ca8:	3c010001 	lui	at,0x1
9fc04cac:	00240821 	addu	at,at,a0
9fc04cb0:	ac2585e0 	sw	a1,-31264(at)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n7_lh_adel_ex.S:52
9fc04cb4:	3c149fc0 	lui	s4,0x9fc0
9fc04cb8:	26944cc4 	addiu	s4,s4,19652
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n7_lh_adel_ex.S:53
9fc04cbc:	01000011 	mthi	t0
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n7_lh_adel_ex.S:54
9fc04cc0:	0110001b 	divu	zero,t0,s0
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n7_lh_adel_ex.S:55
9fc04cc4:	848285e3 	lh	v0,-31261(a0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n7_lh_adel_ex.S:56
9fc04cc8:	00004810 	mfhi	t1
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n7_lh_adel_ex.S:57
9fc04ccc:	1128006a 	beq	t1,t0,9fc04e78 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n7_lh_adel_ex.S:58
9fc04cd0:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n7_lh_adel_ex.S:59
9fc04cd4:	16570068 	bne	s2,s7,9fc04e78 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n7_lh_adel_ex.S:60
9fc04cd8:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n7_lh_adel_ex.S:61
9fc04cdc:	14430066 	bne	v0,v1,9fc04e78 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n7_lh_adel_ex.S:62
9fc04ce0:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n7_lh_adel_ex.S:63
9fc04ce4:	40164000 	mfc0	s6,c0_badvaddr
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n7_lh_adel_ex.S:64
9fc04ce8:	14f60063 	bne	a3,s6,9fc04e78 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n7_lh_adel_ex.S:65
9fc04cec:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n7_lh_adel_ex.S:67
9fc04cf0:	24120004 	li	s2,4
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n7_lh_adel_ex.S:68
9fc04cf4:	3c02224c 	lui	v0,0x224c
9fc04cf8:	3442f16c 	ori	v0,v0,0xf16c
9fc04cfc:	3c03224c 	lui	v1,0x224c
9fc04d00:	3463f16c 	ori	v1,v1,0xf16c
9fc04d04:	3c04800d 	lui	a0,0x800d
9fc04d08:	348469cc 	ori	a0,a0,0x69cc
9fc04d0c:	3c058ef7 	lui	a1,0x8ef7
9fc04d10:	34a55a20 	ori	a1,a1,0x5a20
9fc04d14:	24878341 	addiu	a3,a0,-31935
9fc04d18:	3c010001 	lui	at,0x1
9fc04d1c:	00240821 	addu	at,at,a0
9fc04d20:	ac258340 	sw	a1,-31936(at)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n7_lh_adel_ex.S:69
9fc04d24:	3c149fc0 	lui	s4,0x9fc0
9fc04d28:	26944d2c 	addiu	s4,s4,19756
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n7_lh_adel_ex.S:70
9fc04d2c:	84828341 	lh	v0,-31935(a0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n7_lh_adel_ex.S:71
9fc04d30:	0208001b 	divu	zero,s0,t0
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n7_lh_adel_ex.S:72
9fc04d34:	16570050 	bne	s2,s7,9fc04e78 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n7_lh_adel_ex.S:73
9fc04d38:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n7_lh_adel_ex.S:74
9fc04d3c:	1443004e 	bne	v0,v1,9fc04e78 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n7_lh_adel_ex.S:75
9fc04d40:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n7_lh_adel_ex.S:76
9fc04d44:	40164000 	mfc0	s6,c0_badvaddr
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n7_lh_adel_ex.S:77
9fc04d48:	14f6004b 	bne	a3,s6,9fc04e78 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n7_lh_adel_ex.S:78
9fc04d4c:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n7_lh_adel_ex.S:80
9fc04d50:	24120004 	li	s2,4
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n7_lh_adel_ex.S:81
9fc04d54:	3c02516f 	lui	v0,0x516f
9fc04d58:	34425fa2 	ori	v0,v0,0x5fa2
9fc04d5c:	3c03516f 	lui	v1,0x516f
9fc04d60:	34635fa2 	ori	v1,v1,0x5fa2
9fc04d64:	3c04800d 	lui	a0,0x800d
9fc04d68:	34840438 	ori	a0,a0,0x438
9fc04d6c:	3c05cb7e 	lui	a1,0xcb7e
9fc04d70:	34a5f7d5 	ori	a1,a1,0xf7d5
9fc04d74:	2487db3b 	addiu	a3,a0,-9413
9fc04d78:	3c010001 	lui	at,0x1
9fc04d7c:	00240821 	addu	at,at,a0
9fc04d80:	ac25db38 	sw	a1,-9416(at)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n7_lh_adel_ex.S:82
9fc04d84:	3c149fc0 	lui	s4,0x9fc0
9fc04d88:	26944d94 	addiu	s4,s4,19860
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n7_lh_adel_ex.S:83
9fc04d8c:	01000013 	mtlo	t0
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n7_lh_adel_ex.S:84
9fc04d90:	01100019 	multu	t0,s0
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n7_lh_adel_ex.S:85
9fc04d94:	8482db3b 	lh	v0,-9413(a0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n7_lh_adel_ex.S:86
9fc04d98:	00004810 	mfhi	t1
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n7_lh_adel_ex.S:87
9fc04d9c:	11280036 	beq	t1,t0,9fc04e78 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n7_lh_adel_ex.S:88
9fc04da0:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n7_lh_adel_ex.S:89
9fc04da4:	16570034 	bne	s2,s7,9fc04e78 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n7_lh_adel_ex.S:90
9fc04da8:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n7_lh_adel_ex.S:91
9fc04dac:	14430032 	bne	v0,v1,9fc04e78 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n7_lh_adel_ex.S:92
9fc04db0:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n7_lh_adel_ex.S:93
9fc04db4:	40164000 	mfc0	s6,c0_badvaddr
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n7_lh_adel_ex.S:94
9fc04db8:	14f6002f 	bne	a3,s6,9fc04e78 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n7_lh_adel_ex.S:95
9fc04dbc:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n7_lh_adel_ex.S:97
9fc04dc0:	24120004 	li	s2,4
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n7_lh_adel_ex.S:98
9fc04dc4:	3c023537 	lui	v0,0x3537
9fc04dc8:	3442cc30 	ori	v0,v0,0xcc30
9fc04dcc:	3c033537 	lui	v1,0x3537
9fc04dd0:	3463cc30 	ori	v1,v1,0xcc30
9fc04dd4:	3c04800d 	lui	a0,0x800d
9fc04dd8:	34842c20 	ori	a0,a0,0x2c20
9fc04ddc:	3c055118 	lui	a1,0x5118
9fc04de0:	34a5e811 	ori	a1,a1,0xe811
9fc04de4:	24871915 	addiu	a3,a0,6421
9fc04de8:	ac851914 	sw	a1,6420(a0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n7_lh_adel_ex.S:99
9fc04dec:	3c149fc0 	lui	s4,0x9fc0
9fc04df0:	26944df4 	addiu	s4,s4,19956
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n7_lh_adel_ex.S:100
9fc04df4:	84821915 	lh	v0,6421(a0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n7_lh_adel_ex.S:101
9fc04df8:	01120019 	multu	t0,s2
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n7_lh_adel_ex.S:102
9fc04dfc:	1657001e 	bne	s2,s7,9fc04e78 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n7_lh_adel_ex.S:103
9fc04e00:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n7_lh_adel_ex.S:104
9fc04e04:	1443001c 	bne	v0,v1,9fc04e78 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n7_lh_adel_ex.S:105
9fc04e08:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n7_lh_adel_ex.S:106
9fc04e0c:	40164000 	mfc0	s6,c0_badvaddr
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n7_lh_adel_ex.S:107
9fc04e10:	14f60019 	bne	a3,s6,9fc04e78 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n7_lh_adel_ex.S:108
9fc04e14:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n7_lh_adel_ex.S:110
9fc04e18:	24120004 	li	s2,4
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n7_lh_adel_ex.S:111
9fc04e1c:	3c0263c6 	lui	v0,0x63c6
9fc04e20:	3442e7af 	ori	v0,v0,0xe7af
9fc04e24:	3c0363c6 	lui	v1,0x63c6
9fc04e28:	3463e7af 	ori	v1,v1,0xe7af
9fc04e2c:	3c04800d 	lui	a0,0x800d
9fc04e30:	34843d5c 	ori	a0,a0,0x3d5c
9fc04e34:	3c05d802 	lui	a1,0xd802
9fc04e38:	34a541b4 	ori	a1,a1,0x41b4
9fc04e3c:	248732e9 	addiu	a3,a0,13033
9fc04e40:	ac8532e8 	sw	a1,13032(a0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n7_lh_adel_ex.S:112
9fc04e44:	3c149fc0 	lui	s4,0x9fc0
9fc04e48:	26944e50 	addiu	s4,s4,20048
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n7_lh_adel_ex.S:113
9fc04e4c:	40927000 	mtc0	s2,c0_epc
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n7_lh_adel_ex.S:114
9fc04e50:	848232e9 	lh	v0,13033(a0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n7_lh_adel_ex.S:115
9fc04e54:	40887000 	mtc0	t0,c0_epc
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n7_lh_adel_ex.S:116
9fc04e58:	16570007 	bne	s2,s7,9fc04e78 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n7_lh_adel_ex.S:117
9fc04e5c:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n7_lh_adel_ex.S:118
9fc04e60:	14430005 	bne	v0,v1,9fc04e78 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n7_lh_adel_ex.S:119
9fc04e64:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n7_lh_adel_ex.S:120
9fc04e68:	40164000 	mfc0	s6,c0_badvaddr
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n7_lh_adel_ex.S:121
9fc04e6c:	14f60002 	bne	a3,s6,9fc04e78 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n7_lh_adel_ex.S:122
9fc04e70:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n7_lh_adel_ex.S:124
9fc04e74:	26730001 	addiu	s3,s3,1

9fc04e78 <inst_error>:
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n7_lh_adel_ex.S:127
9fc04e78:	00104e00 	sll	t1,s0,0x18
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n7_lh_adel_ex.S:128
9fc04e7c:	01334025 	or	t0,t1,s3
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n7_lh_adel_ex.S:129
9fc04e80:	ae280000 	sw	t0,0(s1)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n7_lh_adel_ex.S:130
9fc04e84:	03e00008 	jr	ra
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n7_lh_adel_ex.S:131
9fc04e88:	00000000 	nop
9fc04e8c:	00000000 	nop

9fc04e90 <n8_lhu_adel_ex_test>:
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n8_lhu_adel_ex.S:7
9fc04e90:	26100001 	addiu	s0,s0,1
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n8_lhu_adel_ex.S:8
9fc04e94:	3c08800d 	lui	t0,0x800d
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n8_lhu_adel_ex.S:9
9fc04e98:	24120004 	li	s2,4
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n8_lhu_adel_ex.S:10
9fc04e9c:	ad120000 	sw	s2,0(t0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n8_lhu_adel_ex.S:12
9fc04ea0:	40805800 	mtc0	zero,c0_compare
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n8_lhu_adel_ex.S:13
9fc04ea4:	3c170040 	lui	s7,0x40
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n8_lhu_adel_ex.S:14
9fc04ea8:	40976000 	mtc0	s7,c0_status
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n8_lhu_adel_ex.S:15
9fc04eac:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n8_lhu_adel_ex.S:16
9fc04eb0:	3c170004 	lui	s7,0x4
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n8_lhu_adel_ex.S:19
9fc04eb4:	3c028003 	lui	v0,0x8003
9fc04eb8:	34420514 	ori	v0,v0,0x514
9fc04ebc:	3c038003 	lui	v1,0x8003
9fc04ec0:	34630514 	ori	v1,v1,0x514
9fc04ec4:	3c04800d 	lui	a0,0x800d
9fc04ec8:	34840514 	ori	a0,a0,0x514
9fc04ecc:	3c050dc5 	lui	a1,0xdc5
9fc04ed0:	34a5e542 	ori	a1,a1,0xe542
9fc04ed4:	2487b239 	addiu	a3,a0,-19911
9fc04ed8:	3c010001 	lui	at,0x1
9fc04edc:	00240821 	addu	at,at,a0
9fc04ee0:	ac25b238 	sw	a1,-19912(at)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n8_lhu_adel_ex.S:20
9fc04ee4:	3c149fc0 	lui	s4,0x9fc0
9fc04ee8:	26944eec 	addiu	s4,s4,20204
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n8_lhu_adel_ex.S:21
9fc04eec:	9482b239 	lhu	v0,-19911(a0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n8_lhu_adel_ex.S:22
9fc04ef0:	1657009f 	bne	s2,s7,9fc05170 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n8_lhu_adel_ex.S:23
9fc04ef4:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n8_lhu_adel_ex.S:24
9fc04ef8:	1443009d 	bne	v0,v1,9fc05170 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n8_lhu_adel_ex.S:25
9fc04efc:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n8_lhu_adel_ex.S:26
9fc04f00:	40164000 	mfc0	s6,c0_badvaddr
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n8_lhu_adel_ex.S:27
9fc04f04:	14f6009a 	bne	a3,s6,9fc05170 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n8_lhu_adel_ex.S:28
9fc04f08:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n8_lhu_adel_ex.S:30
9fc04f0c:	24120004 	li	s2,4
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n8_lhu_adel_ex.S:31
9fc04f10:	3c028003 	lui	v0,0x8003
9fc04f14:	34422fbc 	ori	v0,v0,0x2fbc
9fc04f18:	3c038003 	lui	v1,0x8003
9fc04f1c:	34632fbc 	ori	v1,v1,0x2fbc
9fc04f20:	3c04800d 	lui	a0,0x800d
9fc04f24:	34842fbc 	ori	a0,a0,0x2fbc
9fc04f28:	3c05f781 	lui	a1,0xf781
9fc04f2c:	34a52ae2 	ori	a1,a1,0x2ae2
9fc04f30:	24879c35 	addiu	a3,a0,-25547
9fc04f34:	3c010001 	lui	at,0x1
9fc04f38:	00240821 	addu	at,at,a0
9fc04f3c:	ac259c34 	sw	a1,-25548(at)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n8_lhu_adel_ex.S:32
9fc04f40:	3c149fc0 	lui	s4,0x9fc0
9fc04f44:	26944f50 	addiu	s4,s4,20304
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n8_lhu_adel_ex.S:33
9fc04f48:	ad080004 	sw	t0,4(t0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n8_lhu_adel_ex.S:34
9fc04f4c:	ad140004 	sw	s4,4(t0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n8_lhu_adel_ex.S:35
9fc04f50:	94829c35 	lhu	v0,-25547(a0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n8_lhu_adel_ex.S:36
9fc04f54:	ad140000 	sw	s4,0(t0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n8_lhu_adel_ex.S:37
9fc04f58:	8d090004 	lw	t1,4(t0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n8_lhu_adel_ex.S:38
9fc04f5c:	15340084 	bne	t1,s4,9fc05170 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n8_lhu_adel_ex.S:39
9fc04f60:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n8_lhu_adel_ex.S:40
9fc04f64:	16570082 	bne	s2,s7,9fc05170 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n8_lhu_adel_ex.S:41
9fc04f68:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n8_lhu_adel_ex.S:42
9fc04f6c:	14430080 	bne	v0,v1,9fc05170 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n8_lhu_adel_ex.S:43
9fc04f70:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n8_lhu_adel_ex.S:44
9fc04f74:	40164000 	mfc0	s6,c0_badvaddr
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n8_lhu_adel_ex.S:45
9fc04f78:	14f6007d 	bne	a3,s6,9fc05170 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n8_lhu_adel_ex.S:46
9fc04f7c:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n8_lhu_adel_ex.S:47
9fc04f80:	24120004 	li	s2,4
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n8_lhu_adel_ex.S:48
9fc04f84:	ad120000 	sw	s2,0(t0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n8_lhu_adel_ex.S:50
9fc04f88:	24120004 	li	s2,4
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n8_lhu_adel_ex.S:51
9fc04f8c:	3c029134 	lui	v0,0x9134
9fc04f90:	3442bbd0 	ori	v0,v0,0xbbd0
9fc04f94:	3c039134 	lui	v1,0x9134
9fc04f98:	3463bbd0 	ori	v1,v1,0xbbd0
9fc04f9c:	3c04800d 	lui	a0,0x800d
9fc04fa0:	34847fa6 	ori	a0,a0,0x7fa6
9fc04fa4:	3c059ef6 	lui	a1,0x9ef6
9fc04fa8:	34a55910 	ori	a1,a1,0x5910
9fc04fac:	2487537f 	addiu	a3,a0,21375
9fc04fb0:	ac85537e 	sw	a1,21374(a0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n8_lhu_adel_ex.S:52
9fc04fb4:	3c149fc0 	lui	s4,0x9fc0
9fc04fb8:	26944fc4 	addiu	s4,s4,20420
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n8_lhu_adel_ex.S:53
9fc04fbc:	01000011 	mthi	t0
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n8_lhu_adel_ex.S:54
9fc04fc0:	0110001b 	divu	zero,t0,s0
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n8_lhu_adel_ex.S:55
9fc04fc4:	9482537f 	lhu	v0,21375(a0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n8_lhu_adel_ex.S:56
9fc04fc8:	00004810 	mfhi	t1
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n8_lhu_adel_ex.S:57
9fc04fcc:	11280068 	beq	t1,t0,9fc05170 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n8_lhu_adel_ex.S:58
9fc04fd0:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n8_lhu_adel_ex.S:59
9fc04fd4:	16570066 	bne	s2,s7,9fc05170 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n8_lhu_adel_ex.S:60
9fc04fd8:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n8_lhu_adel_ex.S:61
9fc04fdc:	14430064 	bne	v0,v1,9fc05170 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n8_lhu_adel_ex.S:62
9fc04fe0:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n8_lhu_adel_ex.S:63
9fc04fe4:	40164000 	mfc0	s6,c0_badvaddr
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n8_lhu_adel_ex.S:64
9fc04fe8:	14f60061 	bne	a3,s6,9fc05170 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n8_lhu_adel_ex.S:65
9fc04fec:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n8_lhu_adel_ex.S:67
9fc04ff0:	24120004 	li	s2,4
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n8_lhu_adel_ex.S:68
9fc04ff4:	3c02fe29 	lui	v0,0xfe29
9fc04ff8:	3442b934 	ori	v0,v0,0xb934
9fc04ffc:	3c03fe29 	lui	v1,0xfe29
9fc05000:	3463b934 	ori	v1,v1,0xb934
9fc05004:	3c04800d 	lui	a0,0x800d
9fc05008:	3484628c 	ori	a0,a0,0x628c
9fc0500c:	3c05a15a 	lui	a1,0xa15a
9fc05010:	34a50146 	ori	a1,a1,0x146
9fc05014:	248756cf 	addiu	a3,a0,22223
9fc05018:	ac8556cc 	sw	a1,22220(a0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n8_lhu_adel_ex.S:69
9fc0501c:	3c149fc0 	lui	s4,0x9fc0
9fc05020:	26945024 	addiu	s4,s4,20516
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n8_lhu_adel_ex.S:70
9fc05024:	948256cf 	lhu	v0,22223(a0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n8_lhu_adel_ex.S:71
9fc05028:	0208001b 	divu	zero,s0,t0
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n8_lhu_adel_ex.S:72
9fc0502c:	16570050 	bne	s2,s7,9fc05170 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n8_lhu_adel_ex.S:73
9fc05030:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n8_lhu_adel_ex.S:74
9fc05034:	1443004e 	bne	v0,v1,9fc05170 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n8_lhu_adel_ex.S:75
9fc05038:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n8_lhu_adel_ex.S:76
9fc0503c:	40164000 	mfc0	s6,c0_badvaddr
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n8_lhu_adel_ex.S:77
9fc05040:	14f6004b 	bne	a3,s6,9fc05170 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n8_lhu_adel_ex.S:78
9fc05044:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n8_lhu_adel_ex.S:80
9fc05048:	24120004 	li	s2,4
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n8_lhu_adel_ex.S:81
9fc0504c:	3c028003 	lui	v0,0x8003
9fc05050:	344224b4 	ori	v0,v0,0x24b4
9fc05054:	3c038003 	lui	v1,0x8003
9fc05058:	346324b4 	ori	v1,v1,0x24b4
9fc0505c:	3c04800d 	lui	a0,0x800d
9fc05060:	348424b4 	ori	a0,a0,0x24b4
9fc05064:	3c05566d 	lui	a1,0x566d
9fc05068:	34a5adc2 	ori	a1,a1,0xadc2
9fc0506c:	2487d5c3 	addiu	a3,a0,-10813
9fc05070:	3c010001 	lui	at,0x1
9fc05074:	00240821 	addu	at,at,a0
9fc05078:	ac25d5c0 	sw	a1,-10816(at)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n8_lhu_adel_ex.S:82
9fc0507c:	3c149fc0 	lui	s4,0x9fc0
9fc05080:	2694508c 	addiu	s4,s4,20620
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n8_lhu_adel_ex.S:83
9fc05084:	01000013 	mtlo	t0
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n8_lhu_adel_ex.S:84
9fc05088:	01100019 	multu	t0,s0
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n8_lhu_adel_ex.S:85
9fc0508c:	9482d5c3 	lhu	v0,-10813(a0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n8_lhu_adel_ex.S:86
9fc05090:	00004810 	mfhi	t1
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n8_lhu_adel_ex.S:87
9fc05094:	11280036 	beq	t1,t0,9fc05170 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n8_lhu_adel_ex.S:88
9fc05098:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n8_lhu_adel_ex.S:89
9fc0509c:	16570034 	bne	s2,s7,9fc05170 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n8_lhu_adel_ex.S:90
9fc050a0:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n8_lhu_adel_ex.S:91
9fc050a4:	14430032 	bne	v0,v1,9fc05170 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n8_lhu_adel_ex.S:92
9fc050a8:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n8_lhu_adel_ex.S:93
9fc050ac:	40164000 	mfc0	s6,c0_badvaddr
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n8_lhu_adel_ex.S:94
9fc050b0:	14f6002f 	bne	a3,s6,9fc05170 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n8_lhu_adel_ex.S:95
9fc050b4:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n8_lhu_adel_ex.S:97
9fc050b8:	24120004 	li	s2,4
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n8_lhu_adel_ex.S:98
9fc050bc:	3c0252b9 	lui	v0,0x52b9
9fc050c0:	3442c98a 	ori	v0,v0,0xc98a
9fc050c4:	3c0352b9 	lui	v1,0x52b9
9fc050c8:	3463c98a 	ori	v1,v1,0xc98a
9fc050cc:	3c04800d 	lui	a0,0x800d
9fc050d0:	34846024 	ori	a0,a0,0x6024
9fc050d4:	3c05038f 	lui	a1,0x38f
9fc050d8:	34a518a2 	ori	a1,a1,0x18a2
9fc050dc:	24870765 	addiu	a3,a0,1893
9fc050e0:	ac850764 	sw	a1,1892(a0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n8_lhu_adel_ex.S:99
9fc050e4:	3c149fc0 	lui	s4,0x9fc0
9fc050e8:	269450ec 	addiu	s4,s4,20716
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n8_lhu_adel_ex.S:100
9fc050ec:	94820765 	lhu	v0,1893(a0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n8_lhu_adel_ex.S:101
9fc050f0:	01120019 	multu	t0,s2
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n8_lhu_adel_ex.S:102
9fc050f4:	1657001e 	bne	s2,s7,9fc05170 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n8_lhu_adel_ex.S:103
9fc050f8:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n8_lhu_adel_ex.S:104
9fc050fc:	1443001c 	bne	v0,v1,9fc05170 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n8_lhu_adel_ex.S:105
9fc05100:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n8_lhu_adel_ex.S:106
9fc05104:	40164000 	mfc0	s6,c0_badvaddr
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n8_lhu_adel_ex.S:107
9fc05108:	14f60019 	bne	a3,s6,9fc05170 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n8_lhu_adel_ex.S:108
9fc0510c:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n8_lhu_adel_ex.S:110
9fc05110:	24120004 	li	s2,4
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n8_lhu_adel_ex.S:111
9fc05114:	3c022b77 	lui	v0,0x2b77
9fc05118:	34421238 	ori	v0,v0,0x1238
9fc0511c:	3c032b77 	lui	v1,0x2b77
9fc05120:	34631238 	ori	v1,v1,0x1238
9fc05124:	3c04800d 	lui	a0,0x800d
9fc05128:	34848294 	ori	a0,a0,0x8294
9fc0512c:	3c05cd7a 	lui	a1,0xcd7a
9fc05130:	34a5b654 	ori	a1,a1,0xb654
9fc05134:	248779f5 	addiu	a3,a0,31221
9fc05138:	ac8579f4 	sw	a1,31220(a0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n8_lhu_adel_ex.S:112
9fc0513c:	3c149fc0 	lui	s4,0x9fc0
9fc05140:	26945148 	addiu	s4,s4,20808
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n8_lhu_adel_ex.S:113
9fc05144:	40927000 	mtc0	s2,c0_epc
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n8_lhu_adel_ex.S:114
9fc05148:	948279f5 	lhu	v0,31221(a0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n8_lhu_adel_ex.S:115
9fc0514c:	40887000 	mtc0	t0,c0_epc
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n8_lhu_adel_ex.S:116
9fc05150:	16570007 	bne	s2,s7,9fc05170 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n8_lhu_adel_ex.S:117
9fc05154:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n8_lhu_adel_ex.S:118
9fc05158:	14430005 	bne	v0,v1,9fc05170 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n8_lhu_adel_ex.S:119
9fc0515c:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n8_lhu_adel_ex.S:120
9fc05160:	40164000 	mfc0	s6,c0_badvaddr
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n8_lhu_adel_ex.S:121
9fc05164:	14f60002 	bne	a3,s6,9fc05170 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n8_lhu_adel_ex.S:122
9fc05168:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n8_lhu_adel_ex.S:124
9fc0516c:	26730001 	addiu	s3,s3,1

9fc05170 <inst_error>:
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n8_lhu_adel_ex.S:127
9fc05170:	00104e00 	sll	t1,s0,0x18
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n8_lhu_adel_ex.S:128
9fc05174:	01334025 	or	t0,t1,s3
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n8_lhu_adel_ex.S:129
9fc05178:	ae280000 	sw	t0,0(s1)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n8_lhu_adel_ex.S:130
9fc0517c:	03e00008 	jr	ra
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n8_lhu_adel_ex.S:131
9fc05180:	00000000 	nop
	...

9fc05190 <n9_sw_ades_ex_test>:
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n9_sw_ades_ex.S:7
9fc05190:	26100001 	addiu	s0,s0,1
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n9_sw_ades_ex.S:8
9fc05194:	3c08800d 	lui	t0,0x800d
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n9_sw_ades_ex.S:9
9fc05198:	24120005 	li	s2,5
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n9_sw_ades_ex.S:10
9fc0519c:	ad120000 	sw	s2,0(t0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n9_sw_ades_ex.S:12
9fc051a0:	40805800 	mtc0	zero,c0_compare
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n9_sw_ades_ex.S:13
9fc051a4:	3c170040 	lui	s7,0x40
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n9_sw_ades_ex.S:14
9fc051a8:	40976000 	mtc0	s7,c0_status
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n9_sw_ades_ex.S:15
9fc051ac:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n9_sw_ades_ex.S:16
9fc051b0:	3c170005 	lui	s7,0x5
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n9_sw_ades_ex.S:19
9fc051b4:	3c02b189 	lui	v0,0xb189
9fc051b8:	3442c470 	ori	v0,v0,0xc470
9fc051bc:	3c03b189 	lui	v1,0xb189
9fc051c0:	3463c470 	ori	v1,v1,0xc470
9fc051c4:	3c04800d 	lui	a0,0x800d
9fc051c8:	34847bd1 	ori	a0,a0,0x7bd1
9fc051cc:	3c05b189 	lui	a1,0xb189
9fc051d0:	34a5c470 	ori	a1,a1,0xc470
9fc051d4:	24877974 	addiu	a3,a0,31092
9fc051d8:	ac827973 	sw	v0,31091(a0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n9_sw_ades_ex.S:20
9fc051dc:	3c149fc0 	lui	s4,0x9fc0
9fc051e0:	269451e4 	addiu	s4,s4,20964
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n9_sw_ades_ex.S:21
9fc051e4:	ac857974 	sw	a1,31092(a0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n9_sw_ades_ex.S:22
9fc051e8:	165700a2 	bne	s2,s7,9fc05474 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n9_sw_ades_ex.S:23
9fc051ec:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n9_sw_ades_ex.S:24
9fc051f0:	8c827973 	lw	v0,31091(a0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n9_sw_ades_ex.S:25
9fc051f4:	1443009f 	bne	v0,v1,9fc05474 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n9_sw_ades_ex.S:26
9fc051f8:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n9_sw_ades_ex.S:27
9fc051fc:	40164000 	mfc0	s6,c0_badvaddr
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n9_sw_ades_ex.S:28
9fc05200:	14f6009c 	bne	a3,s6,9fc05474 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n9_sw_ades_ex.S:29
9fc05204:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n9_sw_ades_ex.S:31
9fc05208:	24120005 	li	s2,5
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n9_sw_ades_ex.S:32
9fc0520c:	3c02c052 	lui	v0,0xc052
9fc05210:	3442b3f0 	ori	v0,v0,0xb3f0
9fc05214:	3c03c052 	lui	v1,0xc052
9fc05218:	3463b3f0 	ori	v1,v1,0xb3f0
9fc0521c:	3c04800d 	lui	a0,0x800d
9fc05220:	348423d4 	ori	a0,a0,0x23d4
9fc05224:	3c05c052 	lui	a1,0xc052
9fc05228:	34a5b3f0 	ori	a1,a1,0xb3f0
9fc0522c:	248764a2 	addiu	a3,a0,25762
9fc05230:	ac8264a0 	sw	v0,25760(a0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n9_sw_ades_ex.S:33
9fc05234:	3c149fc0 	lui	s4,0x9fc0
9fc05238:	26945244 	addiu	s4,s4,21060
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n9_sw_ades_ex.S:34
9fc0523c:	ad080004 	sw	t0,4(t0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n9_sw_ades_ex.S:35
9fc05240:	ad140004 	sw	s4,4(t0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n9_sw_ades_ex.S:36
9fc05244:	ac8564a2 	sw	a1,25762(a0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n9_sw_ades_ex.S:37
9fc05248:	ad140000 	sw	s4,0(t0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n9_sw_ades_ex.S:38
9fc0524c:	8d090004 	lw	t1,4(t0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n9_sw_ades_ex.S:39
9fc05250:	15340088 	bne	t1,s4,9fc05474 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n9_sw_ades_ex.S:40
9fc05254:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n9_sw_ades_ex.S:41
9fc05258:	16570086 	bne	s2,s7,9fc05474 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n9_sw_ades_ex.S:42
9fc0525c:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n9_sw_ades_ex.S:43
9fc05260:	8c8264a0 	lw	v0,25760(a0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n9_sw_ades_ex.S:44
9fc05264:	14430083 	bne	v0,v1,9fc05474 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n9_sw_ades_ex.S:45
9fc05268:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n9_sw_ades_ex.S:46
9fc0526c:	40164000 	mfc0	s6,c0_badvaddr
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n9_sw_ades_ex.S:47
9fc05270:	14f60080 	bne	a3,s6,9fc05474 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n9_sw_ades_ex.S:48
9fc05274:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n9_sw_ades_ex.S:49
9fc05278:	24120005 	li	s2,5
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n9_sw_ades_ex.S:50
9fc0527c:	ad120000 	sw	s2,0(t0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n9_sw_ades_ex.S:52
9fc05280:	24120005 	li	s2,5
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n9_sw_ades_ex.S:53
9fc05284:	3c02a10f 	lui	v0,0xa10f
9fc05288:	3442ebaf 	ori	v0,v0,0xebaf
9fc0528c:	3c03a10f 	lui	v1,0xa10f
9fc05290:	3463ebaf 	ori	v1,v1,0xebaf
9fc05294:	3c04800d 	lui	a0,0x800d
9fc05298:	34848850 	ori	a0,a0,0x8850
9fc0529c:	3c05994c 	lui	a1,0x994c
9fc052a0:	34a50280 	ori	a1,a1,0x280
9fc052a4:	2487418b 	addiu	a3,a0,16779
9fc052a8:	ac824188 	sw	v0,16776(a0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n9_sw_ades_ex.S:54
9fc052ac:	3c149fc0 	lui	s4,0x9fc0
9fc052b0:	269452bc 	addiu	s4,s4,21180
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n9_sw_ades_ex.S:55
9fc052b4:	01000011 	mthi	t0
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n9_sw_ades_ex.S:56
9fc052b8:	0110001b 	divu	zero,t0,s0
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n9_sw_ades_ex.S:57
9fc052bc:	ac85418b 	sw	a1,16779(a0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n9_sw_ades_ex.S:58
9fc052c0:	00004810 	mfhi	t1
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n9_sw_ades_ex.S:59
9fc052c4:	1128006b 	beq	t1,t0,9fc05474 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n9_sw_ades_ex.S:60
9fc052c8:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n9_sw_ades_ex.S:61
9fc052cc:	16570069 	bne	s2,s7,9fc05474 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n9_sw_ades_ex.S:62
9fc052d0:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n9_sw_ades_ex.S:63
9fc052d4:	8c824188 	lw	v0,16776(a0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n9_sw_ades_ex.S:64
9fc052d8:	14430066 	bne	v0,v1,9fc05474 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n9_sw_ades_ex.S:65
9fc052dc:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n9_sw_ades_ex.S:66
9fc052e0:	40164000 	mfc0	s6,c0_badvaddr
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n9_sw_ades_ex.S:67
9fc052e4:	14f60063 	bne	a3,s6,9fc05474 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n9_sw_ades_ex.S:68
9fc052e8:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n9_sw_ades_ex.S:70
9fc052ec:	24120005 	li	s2,5
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n9_sw_ades_ex.S:71
9fc052f0:	3c02eb54 	lui	v0,0xeb54
9fc052f4:	3442b87c 	ori	v0,v0,0xb87c
9fc052f8:	3c03eb54 	lui	v1,0xeb54
9fc052fc:	3463b87c 	ori	v1,v1,0xb87c
9fc05300:	3c04800d 	lui	a0,0x800d
9fc05304:	3484a256 	ori	a0,a0,0xa256
9fc05308:	3c05eb54 	lui	a1,0xeb54
9fc0530c:	34a5b87c 	ori	a1,a1,0xb87c
9fc05310:	248700c3 	addiu	a3,a0,195
9fc05314:	ac8200c2 	sw	v0,194(a0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n9_sw_ades_ex.S:72
9fc05318:	3c149fc0 	lui	s4,0x9fc0
9fc0531c:	26945320 	addiu	s4,s4,21280
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n9_sw_ades_ex.S:73
9fc05320:	ac8500c3 	sw	a1,195(a0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n9_sw_ades_ex.S:74
9fc05324:	0208001b 	divu	zero,s0,t0
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n9_sw_ades_ex.S:75
9fc05328:	16570052 	bne	s2,s7,9fc05474 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n9_sw_ades_ex.S:76
9fc0532c:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n9_sw_ades_ex.S:77
9fc05330:	8c8200c2 	lw	v0,194(a0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n9_sw_ades_ex.S:78
9fc05334:	1443004f 	bne	v0,v1,9fc05474 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n9_sw_ades_ex.S:79
9fc05338:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n9_sw_ades_ex.S:80
9fc0533c:	40164000 	mfc0	s6,c0_badvaddr
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n9_sw_ades_ex.S:81
9fc05340:	14f6004c 	bne	a3,s6,9fc05474 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n9_sw_ades_ex.S:82
9fc05344:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n9_sw_ades_ex.S:84
9fc05348:	24120005 	li	s2,5
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n9_sw_ades_ex.S:85
9fc0534c:	3c028003 	lui	v0,0x8003
9fc05350:	34422066 	ori	v0,v0,0x2066
9fc05354:	3c038003 	lui	v1,0x8003
9fc05358:	34632066 	ori	v1,v1,0x2066
9fc0535c:	3c04800d 	lui	a0,0x800d
9fc05360:	3484206c 	ori	a0,a0,0x206c
9fc05364:	3c05ebdc 	lui	a1,0xebdc
9fc05368:	34a58860 	ori	a1,a1,0x8860
9fc0536c:	2487ccc2 	addiu	a3,a0,-13118
9fc05370:	ac82ccc0 	sw	v0,-13120(a0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n9_sw_ades_ex.S:86
9fc05374:	3c149fc0 	lui	s4,0x9fc0
9fc05378:	26945384 	addiu	s4,s4,21380
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n9_sw_ades_ex.S:87
9fc0537c:	01000013 	mtlo	t0
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n9_sw_ades_ex.S:88
9fc05380:	01100019 	multu	t0,s0
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n9_sw_ades_ex.S:89
9fc05384:	ac85ccc2 	sw	a1,-13118(a0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n9_sw_ades_ex.S:90
9fc05388:	00004810 	mfhi	t1
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n9_sw_ades_ex.S:91
9fc0538c:	11280039 	beq	t1,t0,9fc05474 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n9_sw_ades_ex.S:92
9fc05390:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n9_sw_ades_ex.S:93
9fc05394:	16570037 	bne	s2,s7,9fc05474 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n9_sw_ades_ex.S:94
9fc05398:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n9_sw_ades_ex.S:95
9fc0539c:	8c82ccc0 	lw	v0,-13120(a0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n9_sw_ades_ex.S:96
9fc053a0:	14430034 	bne	v0,v1,9fc05474 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n9_sw_ades_ex.S:97
9fc053a4:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n9_sw_ades_ex.S:98
9fc053a8:	40164000 	mfc0	s6,c0_badvaddr
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n9_sw_ades_ex.S:99
9fc053ac:	14f60031 	bne	a3,s6,9fc05474 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n9_sw_ades_ex.S:100
9fc053b0:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n9_sw_ades_ex.S:102
9fc053b4:	24120005 	li	s2,5
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n9_sw_ades_ex.S:103
9fc053b8:	3c026348 	lui	v0,0x6348
9fc053bc:	344258c8 	ori	v0,v0,0x58c8
9fc053c0:	3c036348 	lui	v1,0x6348
9fc053c4:	346358c8 	ori	v1,v1,0x58c8
9fc053c8:	3c04800d 	lui	a0,0x800d
9fc053cc:	348482d8 	ori	a0,a0,0x82d8
9fc053d0:	3c050c41 	lui	a1,0xc41
9fc053d4:	34a5f5e8 	ori	a1,a1,0xf5e8
9fc053d8:	24878889 	addiu	a3,a0,-30583
9fc053dc:	ac828888 	sw	v0,-30584(a0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n9_sw_ades_ex.S:104
9fc053e0:	3c149fc0 	lui	s4,0x9fc0
9fc053e4:	269453e8 	addiu	s4,s4,21480
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n9_sw_ades_ex.S:105
9fc053e8:	ac858889 	sw	a1,-30583(a0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n9_sw_ades_ex.S:106
9fc053ec:	01120019 	multu	t0,s2
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n9_sw_ades_ex.S:107
9fc053f0:	16570020 	bne	s2,s7,9fc05474 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n9_sw_ades_ex.S:108
9fc053f4:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n9_sw_ades_ex.S:109
9fc053f8:	8c828888 	lw	v0,-30584(a0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n9_sw_ades_ex.S:110
9fc053fc:	1443001d 	bne	v0,v1,9fc05474 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n9_sw_ades_ex.S:111
9fc05400:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n9_sw_ades_ex.S:112
9fc05404:	40164000 	mfc0	s6,c0_badvaddr
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n9_sw_ades_ex.S:113
9fc05408:	14f6001a 	bne	a3,s6,9fc05474 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n9_sw_ades_ex.S:114
9fc0540c:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n9_sw_ades_ex.S:116
9fc05410:	24120005 	li	s2,5
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n9_sw_ades_ex.S:117
9fc05414:	3c028003 	lui	v0,0x8003
9fc05418:	34421751 	ori	v0,v0,0x1751
9fc0541c:	3c038003 	lui	v1,0x8003
9fc05420:	34631751 	ori	v1,v1,0x1751
9fc05424:	3c04800d 	lui	a0,0x800d
9fc05428:	34841750 	ori	a0,a0,0x1750
9fc0542c:	3c05cb09 	lui	a1,0xcb09
9fc05430:	34a5da60 	ori	a1,a1,0xda60
9fc05434:	24879b27 	addiu	a3,a0,-25817
9fc05438:	ac829b24 	sw	v0,-25820(a0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n9_sw_ades_ex.S:118
9fc0543c:	3c149fc0 	lui	s4,0x9fc0
9fc05440:	26945448 	addiu	s4,s4,21576
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n9_sw_ades_ex.S:119
9fc05444:	40927000 	mtc0	s2,c0_epc
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n9_sw_ades_ex.S:120
9fc05448:	ac859b27 	sw	a1,-25817(a0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n9_sw_ades_ex.S:121
9fc0544c:	40887000 	mtc0	t0,c0_epc
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n9_sw_ades_ex.S:122
9fc05450:	16570008 	bne	s2,s7,9fc05474 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n9_sw_ades_ex.S:123
9fc05454:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n9_sw_ades_ex.S:124
9fc05458:	8c829b24 	lw	v0,-25820(a0)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n9_sw_ades_ex.S:125
9fc0545c:	14430005 	bne	v0,v1,9fc05474 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n9_sw_ades_ex.S:126
9fc05460:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n9_sw_ades_ex.S:127
9fc05464:	40164000 	mfc0	s6,c0_badvaddr
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n9_sw_ades_ex.S:128
9fc05468:	14f60002 	bne	a3,s6,9fc05474 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n9_sw_ades_ex.S:129
9fc0546c:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n9_sw_ades_ex.S:131
9fc05470:	26730001 	addiu	s3,s3,1

9fc05474 <inst_error>:
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n9_sw_ades_ex.S:134
9fc05474:	00104e00 	sll	t1,s0,0x18
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n9_sw_ades_ex.S:135
9fc05478:	01334025 	or	t0,t1,s3
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n9_sw_ades_ex.S:136
9fc0547c:	ae280000 	sw	t0,0(s1)
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n9_sw_ades_ex.S:137
9fc05480:	03e00008 	jr	ra
/home/zymelaii/workspace/ReMIPS/test/testcase/cpu_ex/inst/n9_sw_ades_ex.S:138
9fc05484:	00000000 	nop
	...
9fc05490:	9e3f7f70 	0x9e3f7f70
	...
