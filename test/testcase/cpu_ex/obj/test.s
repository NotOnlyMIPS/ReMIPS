
main.elf:     file format elf32-tradlittlemips
main.elf


Disassembly of section .text:

9fc00000 <_ftext>:
/home/chooaa/cs_lab/cpu_ex/start.S:18
9fc00000:	2408ffff 	li	t0,-1
/home/chooaa/cs_lab/cpu_ex/start.S:19
9fc00004:	2408ffff 	li	t0,-1
/home/chooaa/cs_lab/cpu_ex/start.S:20
9fc00008:	100001bf 	b	9fc00708 <locate>
/home/chooaa/cs_lab/cpu_ex/start.S:21
9fc0000c:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/start.S:24
9fc00010:	3c088000 	lui	t0,0x8000
/home/chooaa/cs_lab/cpu_ex/start.S:25
9fc00014:	25290001 	addiu	t1,t1,1
/home/chooaa/cs_lab/cpu_ex/start.S:26
9fc00018:	01005025 	move	t2,t0
/home/chooaa/cs_lab/cpu_ex/start.S:27
9fc0001c:	01ae5821 	addu	t3,t5,t6
/home/chooaa/cs_lab/cpu_ex/start.S:28
9fc00020:	8d0c0000 	lw	t4,0(t0)
	...
/home/chooaa/cs_lab/cpu_ex/start.S:33
9fc000ec:	3c088000 	lui	t0,0x8000
/home/chooaa/cs_lab/cpu_ex/start.S:34
9fc000f0:	25290001 	addiu	t1,t1,1
/home/chooaa/cs_lab/cpu_ex/start.S:35
9fc000f4:	01005025 	move	t2,t0
/home/chooaa/cs_lab/cpu_ex/start.S:36
9fc000f8:	01ae5821 	addu	t3,t5,t6
/home/chooaa/cs_lab/cpu_ex/start.S:37
9fc000fc:	8d0c0000 	lw	t4,0(t0)

9fc00100 <test_finish>:
/home/chooaa/cs_lab/cpu_ex/start.S:40
9fc00100:	25080001 	addiu	t0,t0,1
/home/chooaa/cs_lab/cpu_ex/start.S:41
9fc00104:	240900ff 	li	t1,255
/home/chooaa/cs_lab/cpu_ex/start.S:42
9fc00108:	3c0abfb0 	lui	t2,0xbfb0
9fc0010c:	254afff0 	addiu	t2,t2,-16
/home/chooaa/cs_lab/cpu_ex/start.S:43
9fc00110:	ad490000 	sw	t1,0(t2)
/home/chooaa/cs_lab/cpu_ex/start.S:44
9fc00114:	1000fffa 	b	9fc00100 <test_finish>
/home/chooaa/cs_lab/cpu_ex/start.S:45
9fc00118:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/start.S:47
9fc0011c:	3c088000 	lui	t0,0x8000
/home/chooaa/cs_lab/cpu_ex/start.S:48
9fc00120:	25290001 	addiu	t1,t1,1
/home/chooaa/cs_lab/cpu_ex/start.S:49
9fc00124:	01005025 	move	t2,t0
/home/chooaa/cs_lab/cpu_ex/start.S:50
9fc00128:	01ae5821 	addu	t3,t5,t6
/home/chooaa/cs_lab/cpu_ex/start.S:51
9fc0012c:	8d0c0000 	lw	t4,0(t0)
	...
/home/chooaa/cs_lab/cpu_ex/start.S:57
9fc00380:	0000d010 	mfhi	k0
/home/chooaa/cs_lab/cpu_ex/start.S:58
9fc00384:	0000d812 	mflo	k1
/home/chooaa/cs_lab/cpu_ex/start.S:59
9fc00388:	3c1a800d 	lui	k0,0x800d
/home/chooaa/cs_lab/cpu_ex/start.S:60
9fc0038c:	935b0000 	lbu	k1,0(k0)
/home/chooaa/cs_lab/cpu_ex/start.S:61
9fc00390:	241a0001 	li	k0,1
/home/chooaa/cs_lab/cpu_ex/start.S:62
9fc00394:	137a0019 	beq	k1,k0,9fc003fc <syscall_ex>
/home/chooaa/cs_lab/cpu_ex/start.S:63
9fc00398:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/start.S:64
9fc0039c:	241a0002 	li	k0,2
/home/chooaa/cs_lab/cpu_ex/start.S:65
9fc003a0:	137a0027 	beq	k1,k0,9fc00440 <break_ex>
/home/chooaa/cs_lab/cpu_ex/start.S:66
9fc003a4:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/start.S:67
9fc003a8:	241a0003 	li	k0,3
/home/chooaa/cs_lab/cpu_ex/start.S:68
9fc003ac:	137a0035 	beq	k1,k0,9fc00484 <overflow_ex>
/home/chooaa/cs_lab/cpu_ex/start.S:69
9fc003b0:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/start.S:70
9fc003b4:	241a0004 	li	k0,4
/home/chooaa/cs_lab/cpu_ex/start.S:71
9fc003b8:	137a0042 	beq	k1,k0,9fc004c4 <adel_load_ex>
/home/chooaa/cs_lab/cpu_ex/start.S:72
9fc003bc:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/start.S:73
9fc003c0:	241a0005 	li	k0,5
/home/chooaa/cs_lab/cpu_ex/start.S:74
9fc003c4:	137a0050 	beq	k1,k0,9fc00508 <ades_ex>
/home/chooaa/cs_lab/cpu_ex/start.S:75
9fc003c8:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/start.S:76
9fc003cc:	241a0006 	li	k0,6
/home/chooaa/cs_lab/cpu_ex/start.S:77
9fc003d0:	137a005e 	beq	k1,k0,9fc0054c <adel_if_ex>
/home/chooaa/cs_lab/cpu_ex/start.S:78
9fc003d4:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/start.S:79
9fc003d8:	241a0007 	li	k0,7
/home/chooaa/cs_lab/cpu_ex/start.S:80
9fc003dc:	137a006d 	beq	k1,k0,9fc00594 <reserved_inst_ex>
/home/chooaa/cs_lab/cpu_ex/start.S:81
9fc003e0:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/start.S:82
9fc003e4:	241a0008 	li	k0,8
/home/chooaa/cs_lab/cpu_ex/start.S:83
9fc003e8:	137a007b 	beq	k1,k0,9fc005d8 <int_ex>
/home/chooaa/cs_lab/cpu_ex/start.S:84
9fc003ec:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/start.S:85
9fc003f0:	241a0009 	li	k0,9
/home/chooaa/cs_lab/cpu_ex/start.S:86
9fc003f4:	137a00a1 	beq	k1,k0,9fc0067c <trap_ex>
/home/chooaa/cs_lab/cpu_ex/start.S:87
9fc003f8:	00000000 	nop

9fc003fc <syscall_ex>:
/home/chooaa/cs_lab/cpu_ex/start.S:90
9fc003fc:	00009021 	move	s2,zero
/home/chooaa/cs_lab/cpu_ex/start.S:91
9fc00400:	401a7000 	mfc0	k0,c0_epc
/home/chooaa/cs_lab/cpu_ex/start.S:92
9fc00404:	175400b1 	bne	k0,s4,9fc006cc <ex_finish>
/home/chooaa/cs_lab/cpu_ex/start.S:93
9fc00408:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/start.S:94
9fc0040c:	401a6800 	mfc0	k0,c0_cause
/home/chooaa/cs_lab/cpu_ex/start.S:95
9fc00410:	335a007c 	andi	k0,k0,0x7c
/home/chooaa/cs_lab/cpu_ex/start.S:96
9fc00414:	241b0020 	li	k1,32
/home/chooaa/cs_lab/cpu_ex/start.S:97
9fc00418:	175b00ac 	bne	k0,k1,9fc006cc <ex_finish>
/home/chooaa/cs_lab/cpu_ex/start.S:98
9fc0041c:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/start.S:99
9fc00420:	401a6000 	mfc0	k0,c0_status
/home/chooaa/cs_lab/cpu_ex/start.S:100
9fc00424:	335a0002 	andi	k0,k0,0x2
/home/chooaa/cs_lab/cpu_ex/start.S:101
9fc00428:	241b0002 	li	k1,2
/home/chooaa/cs_lab/cpu_ex/start.S:102
9fc0042c:	175b00a7 	bne	k0,k1,9fc006cc <ex_finish>
/home/chooaa/cs_lab/cpu_ex/start.S:103
9fc00430:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/start.S:104
9fc00434:	3c120001 	lui	s2,0x1
/home/chooaa/cs_lab/cpu_ex/start.S:105
9fc00438:	100000a4 	b	9fc006cc <ex_finish>
/home/chooaa/cs_lab/cpu_ex/start.S:106
9fc0043c:	00000000 	nop

9fc00440 <break_ex>:
/home/chooaa/cs_lab/cpu_ex/start.S:109
9fc00440:	00009021 	move	s2,zero
/home/chooaa/cs_lab/cpu_ex/start.S:110
9fc00444:	401a7000 	mfc0	k0,c0_epc
/home/chooaa/cs_lab/cpu_ex/start.S:111
9fc00448:	175400a0 	bne	k0,s4,9fc006cc <ex_finish>
/home/chooaa/cs_lab/cpu_ex/start.S:112
9fc0044c:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/start.S:113
9fc00450:	401a6800 	mfc0	k0,c0_cause
/home/chooaa/cs_lab/cpu_ex/start.S:114
9fc00454:	335a007c 	andi	k0,k0,0x7c
/home/chooaa/cs_lab/cpu_ex/start.S:115
9fc00458:	241b0024 	li	k1,36
/home/chooaa/cs_lab/cpu_ex/start.S:116
9fc0045c:	175b009b 	bne	k0,k1,9fc006cc <ex_finish>
/home/chooaa/cs_lab/cpu_ex/start.S:117
9fc00460:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/start.S:118
9fc00464:	401a6000 	mfc0	k0,c0_status
/home/chooaa/cs_lab/cpu_ex/start.S:119
9fc00468:	335a0002 	andi	k0,k0,0x2
/home/chooaa/cs_lab/cpu_ex/start.S:120
9fc0046c:	241b0002 	li	k1,2
/home/chooaa/cs_lab/cpu_ex/start.S:121
9fc00470:	175b0096 	bne	k0,k1,9fc006cc <ex_finish>
/home/chooaa/cs_lab/cpu_ex/start.S:122
9fc00474:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/start.S:123
9fc00478:	3c120002 	lui	s2,0x2
/home/chooaa/cs_lab/cpu_ex/start.S:124
9fc0047c:	10000093 	b	9fc006cc <ex_finish>
/home/chooaa/cs_lab/cpu_ex/start.S:125
9fc00480:	00000000 	nop

9fc00484 <overflow_ex>:
/home/chooaa/cs_lab/cpu_ex/start.S:128
9fc00484:	00009021 	move	s2,zero
/home/chooaa/cs_lab/cpu_ex/start.S:129
9fc00488:	401a7000 	mfc0	k0,c0_epc
/home/chooaa/cs_lab/cpu_ex/start.S:130
9fc0048c:	1754008f 	bne	k0,s4,9fc006cc <ex_finish>
/home/chooaa/cs_lab/cpu_ex/start.S:131
9fc00490:	401a6800 	mfc0	k0,c0_cause
/home/chooaa/cs_lab/cpu_ex/start.S:132
9fc00494:	335a007c 	andi	k0,k0,0x7c
/home/chooaa/cs_lab/cpu_ex/start.S:133
9fc00498:	241b0030 	li	k1,48
/home/chooaa/cs_lab/cpu_ex/start.S:134
9fc0049c:	175b008b 	bne	k0,k1,9fc006cc <ex_finish>
/home/chooaa/cs_lab/cpu_ex/start.S:135
9fc004a0:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/start.S:136
9fc004a4:	401a6000 	mfc0	k0,c0_status
/home/chooaa/cs_lab/cpu_ex/start.S:137
9fc004a8:	335a0002 	andi	k0,k0,0x2
/home/chooaa/cs_lab/cpu_ex/start.S:138
9fc004ac:	241b0002 	li	k1,2
/home/chooaa/cs_lab/cpu_ex/start.S:139
9fc004b0:	175b0086 	bne	k0,k1,9fc006cc <ex_finish>
/home/chooaa/cs_lab/cpu_ex/start.S:140
9fc004b4:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/start.S:141
9fc004b8:	3c120003 	lui	s2,0x3
/home/chooaa/cs_lab/cpu_ex/start.S:142
9fc004bc:	10000083 	b	9fc006cc <ex_finish>
/home/chooaa/cs_lab/cpu_ex/start.S:143
9fc004c0:	00000000 	nop

9fc004c4 <adel_load_ex>:
/home/chooaa/cs_lab/cpu_ex/start.S:146
9fc004c4:	00009021 	move	s2,zero
/home/chooaa/cs_lab/cpu_ex/start.S:147
9fc004c8:	401a7000 	mfc0	k0,c0_epc
/home/chooaa/cs_lab/cpu_ex/start.S:148
9fc004cc:	1754007f 	bne	k0,s4,9fc006cc <ex_finish>
/home/chooaa/cs_lab/cpu_ex/start.S:149
9fc004d0:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/start.S:150
9fc004d4:	401a6800 	mfc0	k0,c0_cause
/home/chooaa/cs_lab/cpu_ex/start.S:151
9fc004d8:	335a007c 	andi	k0,k0,0x7c
/home/chooaa/cs_lab/cpu_ex/start.S:152
9fc004dc:	241b0010 	li	k1,16
/home/chooaa/cs_lab/cpu_ex/start.S:153
9fc004e0:	175b007a 	bne	k0,k1,9fc006cc <ex_finish>
/home/chooaa/cs_lab/cpu_ex/start.S:154
9fc004e4:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/start.S:155
9fc004e8:	401a6000 	mfc0	k0,c0_status
/home/chooaa/cs_lab/cpu_ex/start.S:156
9fc004ec:	335a0002 	andi	k0,k0,0x2
/home/chooaa/cs_lab/cpu_ex/start.S:157
9fc004f0:	241b0002 	li	k1,2
/home/chooaa/cs_lab/cpu_ex/start.S:158
9fc004f4:	175b0075 	bne	k0,k1,9fc006cc <ex_finish>
/home/chooaa/cs_lab/cpu_ex/start.S:159
9fc004f8:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/start.S:160
9fc004fc:	3c120004 	lui	s2,0x4
/home/chooaa/cs_lab/cpu_ex/start.S:161
9fc00500:	10000072 	b	9fc006cc <ex_finish>
/home/chooaa/cs_lab/cpu_ex/start.S:162
9fc00504:	00000000 	nop

9fc00508 <ades_ex>:
/home/chooaa/cs_lab/cpu_ex/start.S:165
9fc00508:	00009021 	move	s2,zero
/home/chooaa/cs_lab/cpu_ex/start.S:166
9fc0050c:	401a7000 	mfc0	k0,c0_epc
/home/chooaa/cs_lab/cpu_ex/start.S:167
9fc00510:	1754006e 	bne	k0,s4,9fc006cc <ex_finish>
/home/chooaa/cs_lab/cpu_ex/start.S:168
9fc00514:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/start.S:169
9fc00518:	401a6800 	mfc0	k0,c0_cause
/home/chooaa/cs_lab/cpu_ex/start.S:170
9fc0051c:	335a007c 	andi	k0,k0,0x7c
/home/chooaa/cs_lab/cpu_ex/start.S:171
9fc00520:	241b0014 	li	k1,20
/home/chooaa/cs_lab/cpu_ex/start.S:172
9fc00524:	175b0069 	bne	k0,k1,9fc006cc <ex_finish>
/home/chooaa/cs_lab/cpu_ex/start.S:173
9fc00528:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/start.S:174
9fc0052c:	401a6000 	mfc0	k0,c0_status
/home/chooaa/cs_lab/cpu_ex/start.S:175
9fc00530:	335a0002 	andi	k0,k0,0x2
/home/chooaa/cs_lab/cpu_ex/start.S:176
9fc00534:	241b0002 	li	k1,2
/home/chooaa/cs_lab/cpu_ex/start.S:177
9fc00538:	175b0064 	bne	k0,k1,9fc006cc <ex_finish>
/home/chooaa/cs_lab/cpu_ex/start.S:178
9fc0053c:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/start.S:179
9fc00540:	3c120005 	lui	s2,0x5
/home/chooaa/cs_lab/cpu_ex/start.S:180
9fc00544:	10000061 	b	9fc006cc <ex_finish>
/home/chooaa/cs_lab/cpu_ex/start.S:181
9fc00548:	00000000 	nop

9fc0054c <adel_if_ex>:
/home/chooaa/cs_lab/cpu_ex/start.S:184
9fc0054c:	00009021 	move	s2,zero
/home/chooaa/cs_lab/cpu_ex/start.S:185
9fc00550:	401a7000 	mfc0	k0,c0_epc
/home/chooaa/cs_lab/cpu_ex/start.S:186
9fc00554:	1754005d 	bne	k0,s4,9fc006cc <ex_finish>
/home/chooaa/cs_lab/cpu_ex/start.S:187
9fc00558:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/start.S:188
9fc0055c:	40957000 	mtc0	s5,c0_epc
/home/chooaa/cs_lab/cpu_ex/start.S:189
9fc00560:	401a6800 	mfc0	k0,c0_cause
/home/chooaa/cs_lab/cpu_ex/start.S:190
9fc00564:	335a007c 	andi	k0,k0,0x7c
/home/chooaa/cs_lab/cpu_ex/start.S:191
9fc00568:	241b0010 	li	k1,16
/home/chooaa/cs_lab/cpu_ex/start.S:192
9fc0056c:	175b0057 	bne	k0,k1,9fc006cc <ex_finish>
/home/chooaa/cs_lab/cpu_ex/start.S:193
9fc00570:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/start.S:194
9fc00574:	401a6000 	mfc0	k0,c0_status
/home/chooaa/cs_lab/cpu_ex/start.S:195
9fc00578:	335a0002 	andi	k0,k0,0x2
/home/chooaa/cs_lab/cpu_ex/start.S:196
9fc0057c:	241b0002 	li	k1,2
/home/chooaa/cs_lab/cpu_ex/start.S:197
9fc00580:	175b0052 	bne	k0,k1,9fc006cc <ex_finish>
/home/chooaa/cs_lab/cpu_ex/start.S:198
9fc00584:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/start.S:199
9fc00588:	3c120006 	lui	s2,0x6
/home/chooaa/cs_lab/cpu_ex/start.S:200
9fc0058c:	1000004f 	b	9fc006cc <ex_finish>
/home/chooaa/cs_lab/cpu_ex/start.S:201
9fc00590:	00000000 	nop

9fc00594 <reserved_inst_ex>:
/home/chooaa/cs_lab/cpu_ex/start.S:204
9fc00594:	00009021 	move	s2,zero
/home/chooaa/cs_lab/cpu_ex/start.S:205
9fc00598:	401a7000 	mfc0	k0,c0_epc
/home/chooaa/cs_lab/cpu_ex/start.S:206
9fc0059c:	1754004b 	bne	k0,s4,9fc006cc <ex_finish>
/home/chooaa/cs_lab/cpu_ex/start.S:207
9fc005a0:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/start.S:208
9fc005a4:	401a6800 	mfc0	k0,c0_cause
/home/chooaa/cs_lab/cpu_ex/start.S:209
9fc005a8:	335a007c 	andi	k0,k0,0x7c
/home/chooaa/cs_lab/cpu_ex/start.S:210
9fc005ac:	241b0028 	li	k1,40
/home/chooaa/cs_lab/cpu_ex/start.S:211
9fc005b0:	175b0046 	bne	k0,k1,9fc006cc <ex_finish>
/home/chooaa/cs_lab/cpu_ex/start.S:212
9fc005b4:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/start.S:213
9fc005b8:	401a6000 	mfc0	k0,c0_status
/home/chooaa/cs_lab/cpu_ex/start.S:214
9fc005bc:	335a0002 	andi	k0,k0,0x2
/home/chooaa/cs_lab/cpu_ex/start.S:215
9fc005c0:	241b0002 	li	k1,2
/home/chooaa/cs_lab/cpu_ex/start.S:216
9fc005c4:	175b0041 	bne	k0,k1,9fc006cc <ex_finish>
/home/chooaa/cs_lab/cpu_ex/start.S:217
9fc005c8:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/start.S:218
9fc005cc:	3c120007 	lui	s2,0x7
/home/chooaa/cs_lab/cpu_ex/start.S:219
9fc005d0:	1000003e 	b	9fc006cc <ex_finish>
/home/chooaa/cs_lab/cpu_ex/start.S:220
9fc005d4:	00000000 	nop

9fc005d8 <int_ex>:
/home/chooaa/cs_lab/cpu_ex/start.S:223
9fc005d8:	00009021 	move	s2,zero
/home/chooaa/cs_lab/cpu_ex/start.S:224
9fc005dc:	401a7000 	mfc0	k0,c0_epc
/home/chooaa/cs_lab/cpu_ex/start.S:225
9fc005e0:	1754003a 	bne	k0,s4,9fc006cc <ex_finish>
/home/chooaa/cs_lab/cpu_ex/start.S:226
9fc005e4:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/start.S:227
9fc005e8:	275a0008 	addiu	k0,k0,8
/home/chooaa/cs_lab/cpu_ex/start.S:228
9fc005ec:	409a7000 	mtc0	k0,c0_epc
/home/chooaa/cs_lab/cpu_ex/start.S:229
9fc005f0:	3c1bbfb0 	lui	k1,0xbfb0
9fc005f4:	af608ffc 	sw	zero,-28676(k1)
9fc005f8:	af608ffc 	sw	zero,-28676(k1)
9fc005fc:	af60fff8 	sw	zero,-8(k1)
9fc00600:	af608ffc 	sw	zero,-28676(k1)
9fc00604:	af608ffc 	sw	zero,-28676(k1)
9fc00608:	8f608ffc 	lw	zero,-28676(k1)
9fc0060c:	8f7bfff8 	lw	k1,-8(k1)
/home/chooaa/cs_lab/cpu_ex/start.S:230
9fc00610:	401a6800 	mfc0	k0,c0_cause
/home/chooaa/cs_lab/cpu_ex/start.S:231
9fc00614:	3c1bbfb0 	lui	k1,0xbfb0
9fc00618:	af608ffc 	sw	zero,-28676(k1)
9fc0061c:	af608ffc 	sw	zero,-28676(k1)
9fc00620:	af7bfff8 	sw	k1,-8(k1)
9fc00624:	af608ffc 	sw	zero,-28676(k1)
9fc00628:	af608ffc 	sw	zero,-28676(k1)
9fc0062c:	8f608ffc 	lw	zero,-28676(k1)
9fc00630:	8f7bfff8 	lw	k1,-8(k1)
/home/chooaa/cs_lab/cpu_ex/start.S:232
9fc00634:	335a007c 	andi	k0,k0,0x7c
/home/chooaa/cs_lab/cpu_ex/start.S:233
9fc00638:	241b0000 	li	k1,0
/home/chooaa/cs_lab/cpu_ex/start.S:234
9fc0063c:	175b0023 	bne	k0,k1,9fc006cc <ex_finish>
9fc00640:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/start.S:235
9fc00644:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/start.S:236
9fc00648:	401a6000 	mfc0	k0,c0_status
/home/chooaa/cs_lab/cpu_ex/start.S:237
9fc0064c:	335a0002 	andi	k0,k0,0x2
/home/chooaa/cs_lab/cpu_ex/start.S:238
9fc00650:	241b0002 	li	k1,2
/home/chooaa/cs_lab/cpu_ex/start.S:239
9fc00654:	175b001d 	bne	k0,k1,9fc006cc <ex_finish>
9fc00658:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/start.S:240
9fc0065c:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/start.S:241
9fc00660:	241affff 	li	k0,-1
/home/chooaa/cs_lab/cpu_ex/start.S:242
9fc00664:	241b0000 	li	k1,0
/home/chooaa/cs_lab/cpu_ex/start.S:243
9fc00668:	409a5800 	mtc0	k0,c0_compare
/home/chooaa/cs_lab/cpu_ex/start.S:244
9fc0066c:	409b6800 	mtc0	k1,c0_cause
/home/chooaa/cs_lab/cpu_ex/start.S:245
9fc00670:	10000023 	b	9fc00700 <ex_ret>
/home/chooaa/cs_lab/cpu_ex/start.S:246
9fc00674:	3c120008 	lui	s2,0x8
/home/chooaa/cs_lab/cpu_ex/start.S:247
9fc00678:	00000000 	nop

9fc0067c <trap_ex>:
/home/chooaa/cs_lab/cpu_ex/start.S:250
9fc0067c:	00009021 	move	s2,zero
/home/chooaa/cs_lab/cpu_ex/start.S:251
9fc00680:	401a7000 	mfc0	k0,c0_epc
/home/chooaa/cs_lab/cpu_ex/start.S:252
9fc00684:	17540011 	bne	k0,s4,9fc006cc <ex_finish>
9fc00688:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/start.S:253
9fc0068c:	401a6800 	mfc0	k0,c0_cause
/home/chooaa/cs_lab/cpu_ex/start.S:254
9fc00690:	335a007c 	andi	k0,k0,0x7c
/home/chooaa/cs_lab/cpu_ex/start.S:255
9fc00694:	241b0034 	li	k1,52
/home/chooaa/cs_lab/cpu_ex/start.S:256
9fc00698:	175b000c 	bne	k0,k1,9fc006cc <ex_finish>
9fc0069c:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/start.S:257
9fc006a0:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/start.S:258
9fc006a4:	401a6000 	mfc0	k0,c0_status
/home/chooaa/cs_lab/cpu_ex/start.S:259
9fc006a8:	335a0002 	andi	k0,k0,0x2
/home/chooaa/cs_lab/cpu_ex/start.S:260
9fc006ac:	241b0002 	li	k1,2
/home/chooaa/cs_lab/cpu_ex/start.S:261
9fc006b0:	175b0006 	bne	k0,k1,9fc006cc <ex_finish>
9fc006b4:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/start.S:262
9fc006b8:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/start.S:263
9fc006bc:	3c120000 	lui	s2,0x0
9fc006c0:	10000002 	b	9fc006cc <ex_finish>
/home/chooaa/cs_lab/cpu_ex/start.S:264
9fc006c4:	26520009 	addiu	s2,s2,9
/home/chooaa/cs_lab/cpu_ex/start.S:265
9fc006c8:	00000000 	nop

9fc006cc <ex_finish>:
/home/chooaa/cs_lab/cpu_ex/start.S:268
9fc006cc:	401a6800 	mfc0	k0,c0_cause
/home/chooaa/cs_lab/cpu_ex/start.S:269
9fc006d0:	3c1b8000 	lui	k1,0x8000
/home/chooaa/cs_lab/cpu_ex/start.S:270
9fc006d4:	035bd024 	and	k0,k0,k1
/home/chooaa/cs_lab/cpu_ex/start.S:271
9fc006d8:	401b7000 	mfc0	k1,c0_epc
/home/chooaa/cs_lab/cpu_ex/start.S:272
9fc006dc:	13400003 	beqz	k0,9fc006ec <ex_finish+0x20>
/home/chooaa/cs_lab/cpu_ex/start.S:273
9fc006e0:	277b0004 	addiu	k1,k1,4
/home/chooaa/cs_lab/cpu_ex/start.S:274
9fc006e4:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/start.S:275
9fc006e8:	277b0004 	addiu	k1,k1,4
/home/chooaa/cs_lab/cpu_ex/start.S:277
9fc006ec:	409b7000 	mtc0	k1,c0_epc
/home/chooaa/cs_lab/cpu_ex/start.S:278
9fc006f0:	16400003 	bnez	s2,9fc00700 <ex_ret>
/home/chooaa/cs_lab/cpu_ex/start.S:279
9fc006f4:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/start.S:280
9fc006f8:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/start.S:281
9fc006fc:	3c12ffff 	lui	s2,0xffff

9fc00700 <ex_ret>:
/home/chooaa/cs_lab/cpu_ex/start.S:284
9fc00700:	42000018 	eret
/home/chooaa/cs_lab/cpu_ex/start.S:286
9fc00704:	00000000 	nop

9fc00708 <locate>:
/home/chooaa/cs_lab/cpu_ex/start.S:292
9fc00708:	3c04bfb0 	lui	a0,0xbfb0
9fc0070c:	2484f008 	addiu	a0,a0,-4088
/home/chooaa/cs_lab/cpu_ex/start.S:293
9fc00710:	3c05bfb0 	lui	a1,0xbfb0
9fc00714:	24a5f004 	addiu	a1,a1,-4092
/home/chooaa/cs_lab/cpu_ex/start.S:294
9fc00718:	3c06bfb0 	lui	a2,0xbfb0
9fc0071c:	24c6f000 	addiu	a2,a2,-4096
/home/chooaa/cs_lab/cpu_ex/start.S:295
9fc00720:	3c11bfb0 	lui	s1,0xbfb0
9fc00724:	2631f010 	addiu	s1,s1,-4080
/home/chooaa/cs_lab/cpu_ex/start.S:297
9fc00728:	3c090000 	lui	t1,0x0
9fc0072c:	25290002 	addiu	t1,t1,2
/home/chooaa/cs_lab/cpu_ex/start.S:298
9fc00730:	3c0a0000 	lui	t2,0x0
9fc00734:	254a0001 	addiu	t2,t2,1
/home/chooaa/cs_lab/cpu_ex/start.S:299
9fc00738:	3c0b0001 	lui	t3,0x1
9fc0073c:	256bffff 	addiu	t3,t3,-1
/home/chooaa/cs_lab/cpu_ex/start.S:300
9fc00740:	3c130000 	lui	s3,0x0
/home/chooaa/cs_lab/cpu_ex/start.S:303
9fc00744:	ac890000 	sw	t1,0(a0)
/home/chooaa/cs_lab/cpu_ex/start.S:304
9fc00748:	acaa0000 	sw	t2,0(a1)
/home/chooaa/cs_lab/cpu_ex/start.S:305
9fc0074c:	accb0000 	sw	t3,0(a2)
/home/chooaa/cs_lab/cpu_ex/start.S:306
9fc00750:	ae330000 	sw	s3,0(s1)
/home/chooaa/cs_lab/cpu_ex/start.S:307
9fc00754:	3c100000 	lui	s0,0x0
/home/chooaa/cs_lab/cpu_ex/start.S:313
9fc00758:	3c199fc0 	lui	t9,0x9fc0
9fc0075c:	27390768 	addiu	t9,t9,1896
/home/chooaa/cs_lab/cpu_ex/start.S:314
9fc00760:	03200008 	jr	t9
/home/chooaa/cs_lab/cpu_ex/start.S:315
9fc00764:	00000000 	nop

9fc00768 <inst_test>:
/home/chooaa/cs_lab/cpu_ex/start.S:321
9fc00768:	0ff010cc 	jal	9fc04330 <n1_syscall_ex_test>
/home/chooaa/cs_lab/cpu_ex/start.S:322
9fc0076c:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/start.S:323
9fc00770:	0ff00267 	jal	9fc0099c <wait_1s>
/home/chooaa/cs_lab/cpu_ex/start.S:324
9fc00774:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/start.S:325
9fc00778:	0ff007c0 	jal	9fc01f00 <n2_break_ex_test>
/home/chooaa/cs_lab/cpu_ex/start.S:326
9fc0077c:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/start.S:327
9fc00780:	0ff00267 	jal	9fc0099c <wait_1s>
/home/chooaa/cs_lab/cpu_ex/start.S:328
9fc00784:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/start.S:329
9fc00788:	0ff008d0 	jal	9fc02340 <n3_add_ov_ex_test>
/home/chooaa/cs_lab/cpu_ex/start.S:330
9fc0078c:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/start.S:331
9fc00790:	0ff00267 	jal	9fc0099c <wait_1s>
/home/chooaa/cs_lab/cpu_ex/start.S:332
9fc00794:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/start.S:333
9fc00798:	0ff00de0 	jal	9fc03780 <n4_addi_ov_ex_test>
/home/chooaa/cs_lab/cpu_ex/start.S:334
9fc0079c:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/start.S:335
9fc007a0:	0ff00267 	jal	9fc0099c <wait_1s>
/home/chooaa/cs_lab/cpu_ex/start.S:336
9fc007a4:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/start.S:337
9fc007a8:	0ff013f4 	jal	9fc04fd0 <n5_sub_ov_ex_test>
/home/chooaa/cs_lab/cpu_ex/start.S:338
9fc007ac:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/start.S:339
9fc007b0:	0ff00267 	jal	9fc0099c <wait_1s>
/home/chooaa/cs_lab/cpu_ex/start.S:340
9fc007b4:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/start.S:341
9fc007b8:	0ff00568 	jal	9fc015a0 <n6_lw_adel_ex_test>
/home/chooaa/cs_lab/cpu_ex/start.S:342
9fc007bc:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/start.S:343
9fc007c0:	0ff00267 	jal	9fc0099c <wait_1s>
/home/chooaa/cs_lab/cpu_ex/start.S:344
9fc007c4:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/start.S:345
9fc007c8:	0ff004a8 	jal	9fc012a0 <n7_lh_adel_ex_test>
/home/chooaa/cs_lab/cpu_ex/start.S:346
9fc007cc:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/start.S:347
9fc007d0:	0ff00267 	jal	9fc0099c <wait_1s>
/home/chooaa/cs_lab/cpu_ex/start.S:348
9fc007d4:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/start.S:349
9fc007d8:	0ff00810 	jal	9fc02040 <n8_lhu_adel_ex_test>
/home/chooaa/cs_lab/cpu_ex/start.S:350
9fc007dc:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/start.S:351
9fc007e0:	0ff00267 	jal	9fc0099c <wait_1s>
/home/chooaa/cs_lab/cpu_ex/start.S:352
9fc007e4:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/start.S:353
9fc007e8:	0ff011dc 	jal	9fc04770 <n9_sw_ades_ex_test>
/home/chooaa/cs_lab/cpu_ex/start.S:354
9fc007ec:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/start.S:355
9fc007f0:	0ff00267 	jal	9fc0099c <wait_1s>
/home/chooaa/cs_lab/cpu_ex/start.S:356
9fc007f4:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/start.S:357
9fc007f8:	0ff0100c 	jal	9fc04030 <n10_sh_ades_ex_test>
/home/chooaa/cs_lab/cpu_ex/start.S:358
9fc007fc:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/start.S:359
9fc00800:	0ff00267 	jal	9fc0099c <wait_1s>
/home/chooaa/cs_lab/cpu_ex/start.S:360
9fc00804:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/start.S:361
9fc00808:	0ff00e6c 	jal	9fc039b0 <n11_ft_adel_ex_test>
/home/chooaa/cs_lab/cpu_ex/start.S:362
9fc0080c:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/start.S:363
9fc00810:	0ff00267 	jal	9fc0099c <wait_1s>
/home/chooaa/cs_lab/cpu_ex/start.S:364
9fc00814:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/start.S:365
9fc00818:	0ff00ef8 	jal	9fc03be0 <n12_ri_ex_test>
/home/chooaa/cs_lab/cpu_ex/start.S:366
9fc0081c:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/start.S:367
9fc00820:	0ff00267 	jal	9fc0099c <wait_1s>
/home/chooaa/cs_lab/cpu_ex/start.S:368
9fc00824:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/start.S:369
9fc00828:	0ff00400 	jal	9fc01000 <n13_ti_ex_test>
/home/chooaa/cs_lab/cpu_ex/start.S:370
9fc0082c:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/start.S:371
9fc00830:	0ff00267 	jal	9fc0099c <wait_1s>
/home/chooaa/cs_lab/cpu_ex/start.S:372
9fc00834:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/start.S:373
9fc00838:	0ff0135c 	jal	9fc04d70 <n14_soft_int_ex_test>
/home/chooaa/cs_lab/cpu_ex/start.S:374
9fc0083c:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/start.S:375
9fc00840:	0ff00267 	jal	9fc0099c <wait_1s>
/home/chooaa/cs_lab/cpu_ex/start.S:376
9fc00844:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/start.S:377
9fc00848:	0ff00f4c 	jal	9fc03d30 <n15_beq_ds_ex_test>
/home/chooaa/cs_lab/cpu_ex/start.S:378
9fc0084c:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/start.S:379
9fc00850:	0ff00267 	jal	9fc0099c <wait_1s>
/home/chooaa/cs_lab/cpu_ex/start.S:380
9fc00854:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/start.S:381
9fc00858:	0ff0129c 	jal	9fc04a70 <n16_bne_ds_ex_test>
/home/chooaa/cs_lab/cpu_ex/start.S:382
9fc0085c:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/start.S:383
9fc00860:	0ff00267 	jal	9fc0099c <wait_1s>
/home/chooaa/cs_lab/cpu_ex/start.S:384
9fc00864:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/start.S:385
9fc00868:	0ff00700 	jal	9fc01c00 <n17_bgez_ds_ex_test>
/home/chooaa/cs_lab/cpu_ex/start.S:386
9fc0086c:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/start.S:387
9fc00870:	0ff00267 	jal	9fc0099c <wait_1s>
/home/chooaa/cs_lab/cpu_ex/start.S:388
9fc00874:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/start.S:389
9fc00878:	0ff00340 	jal	9fc00d00 <n18_bgtz_ds_ex_test>
/home/chooaa/cs_lab/cpu_ex/start.S:390
9fc0087c:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/start.S:391
9fc00880:	0ff00267 	jal	9fc0099c <wait_1s>
/home/chooaa/cs_lab/cpu_ex/start.S:392
9fc00884:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/start.S:393
9fc00888:	0ff0111c 	jal	9fc04470 <n19_blez_ds_ex_test>
/home/chooaa/cs_lab/cpu_ex/start.S:394
9fc0088c:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/start.S:395
9fc00890:	0ff00267 	jal	9fc0099c <wait_1s>
/home/chooaa/cs_lab/cpu_ex/start.S:396
9fc00894:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/start.S:397
9fc00898:	0ff00b88 	jal	9fc02e20 <n20_bltz_ds_ex_test>
/home/chooaa/cs_lab/cpu_ex/start.S:398
9fc0089c:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/start.S:399
9fc008a0:	0ff00267 	jal	9fc0099c <wait_1s>
/home/chooaa/cs_lab/cpu_ex/start.S:400
9fc008a4:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/start.S:401
9fc008a8:	0ff0027c 	jal	9fc009f0 <n21_bltzal_ds_ex_test>
/home/chooaa/cs_lab/cpu_ex/start.S:402
9fc008ac:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/start.S:403
9fc008b0:	0ff00267 	jal	9fc0099c <wait_1s>
/home/chooaa/cs_lab/cpu_ex/start.S:404
9fc008b4:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/start.S:405
9fc008b8:	0ff01488 	jal	9fc05220 <n22_bgezal_ds_ex_test>
/home/chooaa/cs_lab/cpu_ex/start.S:406
9fc008bc:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/start.S:407
9fc008c0:	0ff00267 	jal	9fc0099c <wait_1s>
/home/chooaa/cs_lab/cpu_ex/start.S:408
9fc008c4:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/start.S:409
9fc008c8:	0ff00c48 	jal	9fc03120 <n23_j_ds_ex_test>
/home/chooaa/cs_lab/cpu_ex/start.S:410
9fc008cc:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/start.S:411
9fc008d0:	0ff00267 	jal	9fc0099c <wait_1s>
/home/chooaa/cs_lab/cpu_ex/start.S:412
9fc008d4:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/start.S:413
9fc008d8:	0ff00ac4 	jal	9fc02b10 <n24_jal_ds_ex_test>
/home/chooaa/cs_lab/cpu_ex/start.S:414
9fc008dc:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/start.S:415
9fc008e0:	0ff00267 	jal	9fc0099c <wait_1s>
/home/chooaa/cs_lab/cpu_ex/start.S:416
9fc008e4:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/start.S:417
9fc008e8:	0ff00d08 	jal	9fc03420 <n25_jr_ds_ex_test>
/home/chooaa/cs_lab/cpu_ex/start.S:418
9fc008ec:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/start.S:419
9fc008f0:	0ff00267 	jal	9fc0099c <wait_1s>
/home/chooaa/cs_lab/cpu_ex/start.S:420
9fc008f4:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/start.S:421
9fc008f8:	0ff00628 	jal	9fc018a0 <n26_jalr_ds_ex_test>
/home/chooaa/cs_lab/cpu_ex/start.S:422
9fc008fc:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/start.S:423
9fc00900:	0ff00267 	jal	9fc0099c <wait_1s>
/home/chooaa/cs_lab/cpu_ex/start.S:424
9fc00904:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/start.S:425
9fc00908:	0ff00964 	jal	9fc02590 <n27_trap_ex_test>
/home/chooaa/cs_lab/cpu_ex/start.S:426
9fc0090c:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/start.S:427
9fc00910:	0ff00267 	jal	9fc0099c <wait_1s>
/home/chooaa/cs_lab/cpu_ex/start.S:428
9fc00914:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/start.S:433
9fc00918:	3c099fc0 	lui	t1,0x9fc0
9fc0091c:	25290930 	addiu	t1,t1,2352
/home/chooaa/cs_lab/cpu_ex/start.S:434
9fc00920:	3c0a2000 	lui	t2,0x2000
/home/chooaa/cs_lab/cpu_ex/start.S:435
9fc00924:	012ac821 	addu	t9,t1,t2
/home/chooaa/cs_lab/cpu_ex/start.S:436
9fc00928:	03200008 	jr	t9
/home/chooaa/cs_lab/cpu_ex/start.S:437
9fc0092c:	00000000 	nop

9fc00930 <kseg0_kseg1>:
/home/chooaa/cs_lab/cpu_ex/start.S:444
9fc00930:	3c100000 	lui	s0,0x0
9fc00934:	2610001b 	addiu	s0,s0,27
/home/chooaa/cs_lab/cpu_ex/start.S:446
9fc00938:	1213000e 	beq	s0,s3,9fc00974 <kseg0_kseg1+0x44>
/home/chooaa/cs_lab/cpu_ex/start.S:447
9fc0093c:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/start.S:449
9fc00940:	3c04bfb0 	lui	a0,0xbfb0
9fc00944:	2484f000 	addiu	a0,a0,-4096
/home/chooaa/cs_lab/cpu_ex/start.S:450
9fc00948:	3c05bfb0 	lui	a1,0xbfb0
9fc0094c:	24a5f008 	addiu	a1,a1,-4088
/home/chooaa/cs_lab/cpu_ex/start.S:451
9fc00950:	3c06bfb0 	lui	a2,0xbfb0
9fc00954:	24c6f004 	addiu	a2,a2,-4092
/home/chooaa/cs_lab/cpu_ex/start.S:453
9fc00958:	3c090000 	lui	t1,0x0
9fc0095c:	25290002 	addiu	t1,t1,2
/home/chooaa/cs_lab/cpu_ex/start.S:456
9fc00960:	ac800000 	sw	zero,0(a0)
/home/chooaa/cs_lab/cpu_ex/start.S:457
9fc00964:	aca90000 	sw	t1,0(a1)
/home/chooaa/cs_lab/cpu_ex/start.S:458
9fc00968:	acc90000 	sw	t1,0(a2)
/home/chooaa/cs_lab/cpu_ex/start.S:459
9fc0096c:	10000009 	b	9fc00994 <kseg0_kseg1+0x64>
/home/chooaa/cs_lab/cpu_ex/start.S:460
9fc00970:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/start.S:462
9fc00974:	3c090000 	lui	t1,0x0
9fc00978:	25290001 	addiu	t1,t1,1
/home/chooaa/cs_lab/cpu_ex/start.S:463
9fc0097c:	3c04bfb0 	lui	a0,0xbfb0
9fc00980:	2484f008 	addiu	a0,a0,-4088
/home/chooaa/cs_lab/cpu_ex/start.S:464
9fc00984:	3c05bfb0 	lui	a1,0xbfb0
9fc00988:	24a5f004 	addiu	a1,a1,-4092
/home/chooaa/cs_lab/cpu_ex/start.S:466
9fc0098c:	ac890000 	sw	t1,0(a0)
/home/chooaa/cs_lab/cpu_ex/start.S:467
9fc00990:	aca90000 	sw	t1,0(a1)
/home/chooaa/cs_lab/cpu_ex/start.S:474
9fc00994:	0ff00040 	jal	9fc00100 <test_finish>
/home/chooaa/cs_lab/cpu_ex/start.S:475
9fc00998:	00000000 	nop

9fc0099c <wait_1s>:
/home/chooaa/cs_lab/cpu_ex/start.S:478
9fc0099c:	3c08bfb0 	lui	t0,0xbfb0
9fc009a0:	2508f02c 	addiu	t0,t0,-4052
/home/chooaa/cs_lab/cpu_ex/start.S:479
9fc009a4:	3c090001 	lui	t1,0x1
9fc009a8:	2529aaaa 	addiu	t1,t1,-21846
/home/chooaa/cs_lab/cpu_ex/start.S:482
9fc009ac:	8d0a0000 	lw	t2,0(t0)
/home/chooaa/cs_lab/cpu_ex/start.S:484
9fc009b0:	01495026 	xor	t2,t2,t1
/home/chooaa/cs_lab/cpu_ex/start.S:486
9fc009b4:	000a5a40 	sll	t3,t2,0x9
/home/chooaa/cs_lab/cpu_ex/start.S:488
9fc009b8:	256b0001 	addiu	t3,t3,1

9fc009bc <sub1>:
/home/chooaa/cs_lab/cpu_ex/start.S:492
9fc009bc:	256bffff 	addiu	t3,t3,-1
/home/chooaa/cs_lab/cpu_ex/start.S:495
9fc009c0:	8d0a0000 	lw	t2,0(t0)
/home/chooaa/cs_lab/cpu_ex/start.S:497
9fc009c4:	01495026 	xor	t2,t2,t1
/home/chooaa/cs_lab/cpu_ex/start.S:499
9fc009c8:	000a5240 	sll	t2,t2,0x9
/home/chooaa/cs_lab/cpu_ex/start.S:501
9fc009cc:	016a602b 	sltu	t4,t3,t2
/home/chooaa/cs_lab/cpu_ex/start.S:503
9fc009d0:	15800002 	bnez	t4,9fc009dc <sub1+0x20>
/home/chooaa/cs_lab/cpu_ex/start.S:504
9fc009d4:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/start.S:505
9fc009d8:	254b0000 	addiu	t3,t2,0
/home/chooaa/cs_lab/cpu_ex/start.S:508
9fc009dc:	1560fff7 	bnez	t3,9fc009bc <sub1>
/home/chooaa/cs_lab/cpu_ex/start.S:509
9fc009e0:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/start.S:510
9fc009e4:	03e00008 	jr	ra
/home/chooaa/cs_lab/cpu_ex/start.S:511
9fc009e8:	00000000 	nop
sub1():
9fc009ec:	00000000 	nop

9fc009f0 <n21_bltzal_ds_ex_test>:
/home/chooaa/cs_lab/cpu_ex/inst/n21_bltzal_ds_ex.S:7
9fc009f0:	03e0b021 	move	s6,ra
/home/chooaa/cs_lab/cpu_ex/inst/n21_bltzal_ds_ex.S:8
9fc009f4:	26100001 	addiu	s0,s0,1
/home/chooaa/cs_lab/cpu_ex/inst/n21_bltzal_ds_ex.S:9
9fc009f8:	3c08800d 	lui	t0,0x800d
/home/chooaa/cs_lab/cpu_ex/inst/n21_bltzal_ds_ex.S:11
9fc009fc:	40805800 	mtc0	zero,c0_compare
/home/chooaa/cs_lab/cpu_ex/inst/n21_bltzal_ds_ex.S:12
9fc00a00:	3c170040 	lui	s7,0x40
/home/chooaa/cs_lab/cpu_ex/inst/n21_bltzal_ds_ex.S:13
9fc00a04:	40976000 	mtc0	s7,c0_status
/home/chooaa/cs_lab/cpu_ex/inst/n21_bltzal_ds_ex.S:14
9fc00a08:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n21_bltzal_ds_ex.S:17
9fc00a0c:	24120001 	li	s2,1
/home/chooaa/cs_lab/cpu_ex/inst/n21_bltzal_ds_ex.S:18
9fc00a10:	3c170001 	lui	s7,0x1
/home/chooaa/cs_lab/cpu_ex/inst/n21_bltzal_ds_ex.S:19
9fc00a14:	ad120000 	sw	s2,0(t0)
/home/chooaa/cs_lab/cpu_ex/inst/n21_bltzal_ds_ex.S:20
9fc00a18:	3c149fc0 	lui	s4,0x9fc0
9fc00a1c:	26940a20 	addiu	s4,s4,2592
/home/chooaa/cs_lab/cpu_ex/inst/n21_bltzal_ds_ex.S:21
9fc00a20:	051000af 	bltzal	t0,9fc00ce0 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n21_bltzal_ds_ex.S:22
9fc00a24:	0000000c 	syscall
/home/chooaa/cs_lab/cpu_ex/inst/n21_bltzal_ds_ex.S:23
9fc00a28:	165700ad 	bne	s2,s7,9fc00ce0 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n21_bltzal_ds_ex.S:24
9fc00a2c:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n21_bltzal_ds_ex.S:25
9fc00a30:	24120001 	li	s2,1
/home/chooaa/cs_lab/cpu_ex/inst/n21_bltzal_ds_ex.S:26
9fc00a34:	3c149fc0 	lui	s4,0x9fc0
9fc00a38:	26940a3c 	addiu	s4,s4,2620
/home/chooaa/cs_lab/cpu_ex/inst/n21_bltzal_ds_ex.S:27
9fc00a3c:	065000a8 	bltzal	s2,9fc00ce0 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n21_bltzal_ds_ex.S:28
9fc00a40:	0000000c 	syscall
/home/chooaa/cs_lab/cpu_ex/inst/n21_bltzal_ds_ex.S:29
9fc00a44:	165700a6 	bne	s2,s7,9fc00ce0 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n21_bltzal_ds_ex.S:30
9fc00a48:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n21_bltzal_ds_ex.S:32
9fc00a4c:	24120002 	li	s2,2
/home/chooaa/cs_lab/cpu_ex/inst/n21_bltzal_ds_ex.S:33
9fc00a50:	3c170002 	lui	s7,0x2
/home/chooaa/cs_lab/cpu_ex/inst/n21_bltzal_ds_ex.S:34
9fc00a54:	ad120000 	sw	s2,0(t0)
/home/chooaa/cs_lab/cpu_ex/inst/n21_bltzal_ds_ex.S:35
9fc00a58:	3c149fc0 	lui	s4,0x9fc0
9fc00a5c:	26940a60 	addiu	s4,s4,2656
/home/chooaa/cs_lab/cpu_ex/inst/n21_bltzal_ds_ex.S:36
9fc00a60:	0510009f 	bltzal	t0,9fc00ce0 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n21_bltzal_ds_ex.S:37
9fc00a64:	0000000d 	break
/home/chooaa/cs_lab/cpu_ex/inst/n21_bltzal_ds_ex.S:38
9fc00a68:	1657009d 	bne	s2,s7,9fc00ce0 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n21_bltzal_ds_ex.S:39
9fc00a6c:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n21_bltzal_ds_ex.S:40
9fc00a70:	24120002 	li	s2,2
/home/chooaa/cs_lab/cpu_ex/inst/n21_bltzal_ds_ex.S:41
9fc00a74:	3c149fc0 	lui	s4,0x9fc0
9fc00a78:	26940a7c 	addiu	s4,s4,2684
/home/chooaa/cs_lab/cpu_ex/inst/n21_bltzal_ds_ex.S:42
9fc00a7c:	06500098 	bltzal	s2,9fc00ce0 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n21_bltzal_ds_ex.S:43
9fc00a80:	0000000d 	break
/home/chooaa/cs_lab/cpu_ex/inst/n21_bltzal_ds_ex.S:44
9fc00a84:	16570096 	bne	s2,s7,9fc00ce0 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n21_bltzal_ds_ex.S:45
9fc00a88:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n21_bltzal_ds_ex.S:47
9fc00a8c:	24120003 	li	s2,3
/home/chooaa/cs_lab/cpu_ex/inst/n21_bltzal_ds_ex.S:48
9fc00a90:	3c170003 	lui	s7,0x3
/home/chooaa/cs_lab/cpu_ex/inst/n21_bltzal_ds_ex.S:49
9fc00a94:	ad120000 	sw	s2,0(t0)
/home/chooaa/cs_lab/cpu_ex/inst/n21_bltzal_ds_ex.S:50
9fc00a98:	3c149fc0 	lui	s4,0x9fc0
9fc00a9c:	26940ab0 	addiu	s4,s4,2736
/home/chooaa/cs_lab/cpu_ex/inst/n21_bltzal_ds_ex.S:51
9fc00aa0:	3c04ba03 	lui	a0,0xba03
9fc00aa4:	34844f60 	ori	a0,a0,0x4f60
/home/chooaa/cs_lab/cpu_ex/inst/n21_bltzal_ds_ex.S:52
9fc00aa8:	3c05b615 	lui	a1,0xb615
9fc00aac:	34a5fd67 	ori	a1,a1,0xfd67
/home/chooaa/cs_lab/cpu_ex/inst/n21_bltzal_ds_ex.S:53
9fc00ab0:	0510008b 	bltzal	t0,9fc00ce0 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n21_bltzal_ds_ex.S:54
9fc00ab4:	0085b820 	add	s7,a0,a1
/home/chooaa/cs_lab/cpu_ex/inst/n21_bltzal_ds_ex.S:55
9fc00ab8:	16570089 	bne	s2,s7,9fc00ce0 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n21_bltzal_ds_ex.S:56
9fc00abc:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n21_bltzal_ds_ex.S:57
9fc00ac0:	24120003 	li	s2,3
/home/chooaa/cs_lab/cpu_ex/inst/n21_bltzal_ds_ex.S:58
9fc00ac4:	3c149fc0 	lui	s4,0x9fc0
9fc00ac8:	26940acc 	addiu	s4,s4,2764
/home/chooaa/cs_lab/cpu_ex/inst/n21_bltzal_ds_ex.S:59
9fc00acc:	06500084 	bltzal	s2,9fc00ce0 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n21_bltzal_ds_ex.S:60
9fc00ad0:	0085b820 	add	s7,a0,a1
/home/chooaa/cs_lab/cpu_ex/inst/n21_bltzal_ds_ex.S:61
9fc00ad4:	ad170000 	sw	s7,0(t0)
/home/chooaa/cs_lab/cpu_ex/inst/n21_bltzal_ds_ex.S:62
9fc00ad8:	16570081 	bne	s2,s7,9fc00ce0 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n21_bltzal_ds_ex.S:63
9fc00adc:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n21_bltzal_ds_ex.S:64
9fc00ae0:	24120003 	li	s2,3
/home/chooaa/cs_lab/cpu_ex/inst/n21_bltzal_ds_ex.S:65
9fc00ae4:	ad120000 	sw	s2,0(t0)
/home/chooaa/cs_lab/cpu_ex/inst/n21_bltzal_ds_ex.S:66
9fc00ae8:	3c149fc0 	lui	s4,0x9fc0
9fc00aec:	26940af8 	addiu	s4,s4,2808
/home/chooaa/cs_lab/cpu_ex/inst/n21_bltzal_ds_ex.S:67
9fc00af0:	3c047fff 	lui	a0,0x7fff
9fc00af4:	3484c19e 	ori	a0,a0,0xc19e
/home/chooaa/cs_lab/cpu_ex/inst/n21_bltzal_ds_ex.S:68
9fc00af8:	05100079 	bltzal	t0,9fc00ce0 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n21_bltzal_ds_ex.S:69
9fc00afc:	20976512 	addi	s7,a0,25874
/home/chooaa/cs_lab/cpu_ex/inst/n21_bltzal_ds_ex.S:70
9fc00b00:	16570077 	bne	s2,s7,9fc00ce0 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n21_bltzal_ds_ex.S:71
9fc00b04:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n21_bltzal_ds_ex.S:72
9fc00b08:	24120003 	li	s2,3
/home/chooaa/cs_lab/cpu_ex/inst/n21_bltzal_ds_ex.S:73
9fc00b0c:	3c149fc0 	lui	s4,0x9fc0
9fc00b10:	26940b14 	addiu	s4,s4,2836
/home/chooaa/cs_lab/cpu_ex/inst/n21_bltzal_ds_ex.S:74
9fc00b14:	06500072 	bltzal	s2,9fc00ce0 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n21_bltzal_ds_ex.S:75
9fc00b18:	20976512 	addi	s7,a0,25874
/home/chooaa/cs_lab/cpu_ex/inst/n21_bltzal_ds_ex.S:76
9fc00b1c:	16570070 	bne	s2,s7,9fc00ce0 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n21_bltzal_ds_ex.S:77
9fc00b20:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n21_bltzal_ds_ex.S:78
9fc00b24:	24120003 	li	s2,3
/home/chooaa/cs_lab/cpu_ex/inst/n21_bltzal_ds_ex.S:79
9fc00b28:	3c149fc0 	lui	s4,0x9fc0
9fc00b2c:	26940b40 	addiu	s4,s4,2880
/home/chooaa/cs_lab/cpu_ex/inst/n21_bltzal_ds_ex.S:80
9fc00b30:	3c04a85e 	lui	a0,0xa85e
9fc00b34:	34847d00 	ori	a0,a0,0x7d00
/home/chooaa/cs_lab/cpu_ex/inst/n21_bltzal_ds_ex.S:81
9fc00b38:	3c056b7e 	lui	a1,0x6b7e
9fc00b3c:	34a58e36 	ori	a1,a1,0x8e36
/home/chooaa/cs_lab/cpu_ex/inst/n21_bltzal_ds_ex.S:82
9fc00b40:	05100067 	bltzal	t0,9fc00ce0 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n21_bltzal_ds_ex.S:83
9fc00b44:	0085b822 	sub	s7,a0,a1
/home/chooaa/cs_lab/cpu_ex/inst/n21_bltzal_ds_ex.S:84
9fc00b48:	16570065 	bne	s2,s7,9fc00ce0 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n21_bltzal_ds_ex.S:85
9fc00b4c:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n21_bltzal_ds_ex.S:86
9fc00b50:	24120003 	li	s2,3
/home/chooaa/cs_lab/cpu_ex/inst/n21_bltzal_ds_ex.S:87
9fc00b54:	3c149fc0 	lui	s4,0x9fc0
9fc00b58:	26940b5c 	addiu	s4,s4,2908
/home/chooaa/cs_lab/cpu_ex/inst/n21_bltzal_ds_ex.S:88
9fc00b5c:	06500060 	bltzal	s2,9fc00ce0 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n21_bltzal_ds_ex.S:89
9fc00b60:	0085b822 	sub	s7,a0,a1
/home/chooaa/cs_lab/cpu_ex/inst/n21_bltzal_ds_ex.S:90
9fc00b64:	1657005e 	bne	s2,s7,9fc00ce0 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n21_bltzal_ds_ex.S:91
9fc00b68:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n21_bltzal_ds_ex.S:93
9fc00b6c:	24120004 	li	s2,4
/home/chooaa/cs_lab/cpu_ex/inst/n21_bltzal_ds_ex.S:94
9fc00b70:	3c170004 	lui	s7,0x4
/home/chooaa/cs_lab/cpu_ex/inst/n21_bltzal_ds_ex.S:95
9fc00b74:	ad120000 	sw	s2,0(t0)
/home/chooaa/cs_lab/cpu_ex/inst/n21_bltzal_ds_ex.S:96
9fc00b78:	3c149fc0 	lui	s4,0x9fc0
9fc00b7c:	26940b80 	addiu	s4,s4,2944
/home/chooaa/cs_lab/cpu_ex/inst/n21_bltzal_ds_ex.S:97
9fc00b80:	05100057 	bltzal	t0,9fc00ce0 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n21_bltzal_ds_ex.S:98
9fc00b84:	8d170002 	lw	s7,2(t0)
/home/chooaa/cs_lab/cpu_ex/inst/n21_bltzal_ds_ex.S:99
9fc00b88:	16570055 	bne	s2,s7,9fc00ce0 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n21_bltzal_ds_ex.S:100
9fc00b8c:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n21_bltzal_ds_ex.S:101
9fc00b90:	24120004 	li	s2,4
/home/chooaa/cs_lab/cpu_ex/inst/n21_bltzal_ds_ex.S:102
9fc00b94:	3c149fc0 	lui	s4,0x9fc0
9fc00b98:	26940b9c 	addiu	s4,s4,2972
/home/chooaa/cs_lab/cpu_ex/inst/n21_bltzal_ds_ex.S:103
9fc00b9c:	06500050 	bltzal	s2,9fc00ce0 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n21_bltzal_ds_ex.S:104
9fc00ba0:	8d170002 	lw	s7,2(t0)
/home/chooaa/cs_lab/cpu_ex/inst/n21_bltzal_ds_ex.S:105
9fc00ba4:	1657004e 	bne	s2,s7,9fc00ce0 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n21_bltzal_ds_ex.S:106
9fc00ba8:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n21_bltzal_ds_ex.S:107
9fc00bac:	24120004 	li	s2,4
/home/chooaa/cs_lab/cpu_ex/inst/n21_bltzal_ds_ex.S:108
9fc00bb0:	3c149fc0 	lui	s4,0x9fc0
9fc00bb4:	26940bb8 	addiu	s4,s4,3000
/home/chooaa/cs_lab/cpu_ex/inst/n21_bltzal_ds_ex.S:109
9fc00bb8:	05100049 	bltzal	t0,9fc00ce0 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n21_bltzal_ds_ex.S:110
9fc00bbc:	85170001 	lh	s7,1(t0)
/home/chooaa/cs_lab/cpu_ex/inst/n21_bltzal_ds_ex.S:111
9fc00bc0:	02f2001b 	divu	zero,s7,s2
/home/chooaa/cs_lab/cpu_ex/inst/n21_bltzal_ds_ex.S:112
9fc00bc4:	16570046 	bne	s2,s7,9fc00ce0 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n21_bltzal_ds_ex.S:113
9fc00bc8:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n21_bltzal_ds_ex.S:114
9fc00bcc:	24120004 	li	s2,4
/home/chooaa/cs_lab/cpu_ex/inst/n21_bltzal_ds_ex.S:115
9fc00bd0:	3c149fc0 	lui	s4,0x9fc0
9fc00bd4:	26940bd8 	addiu	s4,s4,3032
/home/chooaa/cs_lab/cpu_ex/inst/n21_bltzal_ds_ex.S:116
9fc00bd8:	06500041 	bltzal	s2,9fc00ce0 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n21_bltzal_ds_ex.S:117
9fc00bdc:	85170001 	lh	s7,1(t0)
/home/chooaa/cs_lab/cpu_ex/inst/n21_bltzal_ds_ex.S:118
9fc00be0:	1657003f 	bne	s2,s7,9fc00ce0 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n21_bltzal_ds_ex.S:119
9fc00be4:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n21_bltzal_ds_ex.S:120
9fc00be8:	3c149fc0 	lui	s4,0x9fc0
9fc00bec:	26940bf0 	addiu	s4,s4,3056
/home/chooaa/cs_lab/cpu_ex/inst/n21_bltzal_ds_ex.S:121
9fc00bf0:	0510003b 	bltzal	t0,9fc00ce0 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n21_bltzal_ds_ex.S:122
9fc00bf4:	95170003 	lhu	s7,3(t0)
/home/chooaa/cs_lab/cpu_ex/inst/n21_bltzal_ds_ex.S:123
9fc00bf8:	16570039 	bne	s2,s7,9fc00ce0 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n21_bltzal_ds_ex.S:124
9fc00bfc:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n21_bltzal_ds_ex.S:125
9fc00c00:	24120004 	li	s2,4
/home/chooaa/cs_lab/cpu_ex/inst/n21_bltzal_ds_ex.S:126
9fc00c04:	3c149fc0 	lui	s4,0x9fc0
9fc00c08:	26940c0c 	addiu	s4,s4,3084
/home/chooaa/cs_lab/cpu_ex/inst/n21_bltzal_ds_ex.S:127
9fc00c0c:	06500034 	bltzal	s2,9fc00ce0 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n21_bltzal_ds_ex.S:128
9fc00c10:	95170003 	lhu	s7,3(t0)
/home/chooaa/cs_lab/cpu_ex/inst/n21_bltzal_ds_ex.S:129
9fc00c14:	16570032 	bne	s2,s7,9fc00ce0 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n21_bltzal_ds_ex.S:130
9fc00c18:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n21_bltzal_ds_ex.S:132
9fc00c1c:	24120005 	li	s2,5
/home/chooaa/cs_lab/cpu_ex/inst/n21_bltzal_ds_ex.S:133
9fc00c20:	3c170005 	lui	s7,0x5
/home/chooaa/cs_lab/cpu_ex/inst/n21_bltzal_ds_ex.S:134
9fc00c24:	ad120000 	sw	s2,0(t0)
/home/chooaa/cs_lab/cpu_ex/inst/n21_bltzal_ds_ex.S:135
9fc00c28:	3c149fc0 	lui	s4,0x9fc0
9fc00c2c:	26940c30 	addiu	s4,s4,3120
/home/chooaa/cs_lab/cpu_ex/inst/n21_bltzal_ds_ex.S:136
9fc00c30:	0510002b 	bltzal	t0,9fc00ce0 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n21_bltzal_ds_ex.S:137
9fc00c34:	ad170002 	sw	s7,2(t0)
/home/chooaa/cs_lab/cpu_ex/inst/n21_bltzal_ds_ex.S:138
9fc00c38:	16570029 	bne	s2,s7,9fc00ce0 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n21_bltzal_ds_ex.S:139
9fc00c3c:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n21_bltzal_ds_ex.S:140
9fc00c40:	24120005 	li	s2,5
/home/chooaa/cs_lab/cpu_ex/inst/n21_bltzal_ds_ex.S:141
9fc00c44:	3c149fc0 	lui	s4,0x9fc0
9fc00c48:	26940c4c 	addiu	s4,s4,3148
/home/chooaa/cs_lab/cpu_ex/inst/n21_bltzal_ds_ex.S:142
9fc00c4c:	06500024 	bltzal	s2,9fc00ce0 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n21_bltzal_ds_ex.S:143
9fc00c50:	ad170002 	sw	s7,2(t0)
/home/chooaa/cs_lab/cpu_ex/inst/n21_bltzal_ds_ex.S:144
9fc00c54:	16570022 	bne	s2,s7,9fc00ce0 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n21_bltzal_ds_ex.S:145
9fc00c58:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n21_bltzal_ds_ex.S:146
9fc00c5c:	24120005 	li	s2,5
/home/chooaa/cs_lab/cpu_ex/inst/n21_bltzal_ds_ex.S:147
9fc00c60:	3c149fc0 	lui	s4,0x9fc0
9fc00c64:	26940c68 	addiu	s4,s4,3176
/home/chooaa/cs_lab/cpu_ex/inst/n21_bltzal_ds_ex.S:148
9fc00c68:	0510001d 	bltzal	t0,9fc00ce0 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n21_bltzal_ds_ex.S:149
9fc00c6c:	a5170001 	sh	s7,1(t0)
/home/chooaa/cs_lab/cpu_ex/inst/n21_bltzal_ds_ex.S:150
9fc00c70:	1657001b 	bne	s2,s7,9fc00ce0 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n21_bltzal_ds_ex.S:151
9fc00c74:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n21_bltzal_ds_ex.S:152
9fc00c78:	24120005 	li	s2,5
/home/chooaa/cs_lab/cpu_ex/inst/n21_bltzal_ds_ex.S:153
9fc00c7c:	3c149fc0 	lui	s4,0x9fc0
9fc00c80:	26940c84 	addiu	s4,s4,3204
/home/chooaa/cs_lab/cpu_ex/inst/n21_bltzal_ds_ex.S:154
9fc00c84:	06500016 	bltzal	s2,9fc00ce0 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n21_bltzal_ds_ex.S:155
9fc00c88:	a5170001 	sh	s7,1(t0)
/home/chooaa/cs_lab/cpu_ex/inst/n21_bltzal_ds_ex.S:156
9fc00c8c:	16570014 	bne	s2,s7,9fc00ce0 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n21_bltzal_ds_ex.S:157
9fc00c90:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n21_bltzal_ds_ex.S:160
9fc00c94:	24120007 	li	s2,7
/home/chooaa/cs_lab/cpu_ex/inst/n21_bltzal_ds_ex.S:161
9fc00c98:	3c170007 	lui	s7,0x7
/home/chooaa/cs_lab/cpu_ex/inst/n21_bltzal_ds_ex.S:162
9fc00c9c:	ad120000 	sw	s2,0(t0)
/home/chooaa/cs_lab/cpu_ex/inst/n21_bltzal_ds_ex.S:163
9fc00ca0:	3c149fc0 	lui	s4,0x9fc0
9fc00ca4:	26940ca8 	addiu	s4,s4,3240
/home/chooaa/cs_lab/cpu_ex/inst/n21_bltzal_ds_ex.S:164
9fc00ca8:	0510000d 	bltzal	t0,9fc00ce0 <inst_error>
9fc00cac:	9e3c56aa 	0x9e3c56aa
/home/chooaa/cs_lab/cpu_ex/inst/n21_bltzal_ds_ex.S:166
9fc00cb0:	02f20018 	mult	s7,s2
/home/chooaa/cs_lab/cpu_ex/inst/n21_bltzal_ds_ex.S:167
9fc00cb4:	1657000a 	bne	s2,s7,9fc00ce0 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n21_bltzal_ds_ex.S:168
9fc00cb8:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n21_bltzal_ds_ex.S:169
9fc00cbc:	24120007 	li	s2,7
/home/chooaa/cs_lab/cpu_ex/inst/n21_bltzal_ds_ex.S:170
9fc00cc0:	3c149fc0 	lui	s4,0x9fc0
9fc00cc4:	26940ccc 	addiu	s4,s4,3276
/home/chooaa/cs_lab/cpu_ex/inst/n21_bltzal_ds_ex.S:171
9fc00cc8:	02f20018 	mult	s7,s2
/home/chooaa/cs_lab/cpu_ex/inst/n21_bltzal_ds_ex.S:172
9fc00ccc:	06500004 	bltzal	s2,9fc00ce0 <inst_error>
9fc00cd0:	ec1ba960 	swc3	$27,-22176(zero)
/home/chooaa/cs_lab/cpu_ex/inst/n21_bltzal_ds_ex.S:174
9fc00cd4:	16570002 	bne	s2,s7,9fc00ce0 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n21_bltzal_ds_ex.S:175
9fc00cd8:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n21_bltzal_ds_ex.S:177
9fc00cdc:	26730001 	addiu	s3,s3,1

9fc00ce0 <inst_error>:
/home/chooaa/cs_lab/cpu_ex/inst/n21_bltzal_ds_ex.S:180
9fc00ce0:	00104e00 	sll	t1,s0,0x18
/home/chooaa/cs_lab/cpu_ex/inst/n21_bltzal_ds_ex.S:181
9fc00ce4:	01334025 	or	t0,t1,s3
/home/chooaa/cs_lab/cpu_ex/inst/n21_bltzal_ds_ex.S:182
9fc00ce8:	ae280000 	sw	t0,0(s1)
/home/chooaa/cs_lab/cpu_ex/inst/n21_bltzal_ds_ex.S:183
9fc00cec:	02c0f821 	move	ra,s6
/home/chooaa/cs_lab/cpu_ex/inst/n21_bltzal_ds_ex.S:184
9fc00cf0:	03e00008 	jr	ra
/home/chooaa/cs_lab/cpu_ex/inst/n21_bltzal_ds_ex.S:185
9fc00cf4:	00000000 	nop
	...

9fc00d00 <n18_bgtz_ds_ex_test>:
/home/chooaa/cs_lab/cpu_ex/inst/n18_bgtz_ds_ex.S:7
9fc00d00:	26100001 	addiu	s0,s0,1
/home/chooaa/cs_lab/cpu_ex/inst/n18_bgtz_ds_ex.S:8
9fc00d04:	3c08800d 	lui	t0,0x800d
/home/chooaa/cs_lab/cpu_ex/inst/n18_bgtz_ds_ex.S:10
9fc00d08:	40805800 	mtc0	zero,c0_compare
/home/chooaa/cs_lab/cpu_ex/inst/n18_bgtz_ds_ex.S:11
9fc00d0c:	3c170040 	lui	s7,0x40
/home/chooaa/cs_lab/cpu_ex/inst/n18_bgtz_ds_ex.S:12
9fc00d10:	40976000 	mtc0	s7,c0_status
/home/chooaa/cs_lab/cpu_ex/inst/n18_bgtz_ds_ex.S:13
9fc00d14:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n18_bgtz_ds_ex.S:16
9fc00d18:	24120001 	li	s2,1
/home/chooaa/cs_lab/cpu_ex/inst/n18_bgtz_ds_ex.S:17
9fc00d1c:	3c170001 	lui	s7,0x1
/home/chooaa/cs_lab/cpu_ex/inst/n18_bgtz_ds_ex.S:18
9fc00d20:	ad120000 	sw	s2,0(t0)
/home/chooaa/cs_lab/cpu_ex/inst/n18_bgtz_ds_ex.S:19
9fc00d24:	3c149fc0 	lui	s4,0x9fc0
9fc00d28:	26940d2c 	addiu	s4,s4,3372
/home/chooaa/cs_lab/cpu_ex/inst/n18_bgtz_ds_ex.S:20
9fc00d2c:	1e4000af 	bgtz	s2,9fc00fec <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n18_bgtz_ds_ex.S:21
9fc00d30:	0000000c 	syscall
/home/chooaa/cs_lab/cpu_ex/inst/n18_bgtz_ds_ex.S:22
9fc00d34:	165700ad 	bne	s2,s7,9fc00fec <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n18_bgtz_ds_ex.S:23
9fc00d38:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n18_bgtz_ds_ex.S:24
9fc00d3c:	24120001 	li	s2,1
/home/chooaa/cs_lab/cpu_ex/inst/n18_bgtz_ds_ex.S:25
9fc00d40:	3c149fc0 	lui	s4,0x9fc0
9fc00d44:	26940d48 	addiu	s4,s4,3400
/home/chooaa/cs_lab/cpu_ex/inst/n18_bgtz_ds_ex.S:26
9fc00d48:	1d0000a8 	bgtz	t0,9fc00fec <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n18_bgtz_ds_ex.S:27
9fc00d4c:	0000000c 	syscall
/home/chooaa/cs_lab/cpu_ex/inst/n18_bgtz_ds_ex.S:28
9fc00d50:	165700a6 	bne	s2,s7,9fc00fec <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n18_bgtz_ds_ex.S:29
9fc00d54:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n18_bgtz_ds_ex.S:31
9fc00d58:	24120002 	li	s2,2
/home/chooaa/cs_lab/cpu_ex/inst/n18_bgtz_ds_ex.S:32
9fc00d5c:	3c170002 	lui	s7,0x2
/home/chooaa/cs_lab/cpu_ex/inst/n18_bgtz_ds_ex.S:33
9fc00d60:	ad120000 	sw	s2,0(t0)
/home/chooaa/cs_lab/cpu_ex/inst/n18_bgtz_ds_ex.S:34
9fc00d64:	3c149fc0 	lui	s4,0x9fc0
9fc00d68:	26940d6c 	addiu	s4,s4,3436
/home/chooaa/cs_lab/cpu_ex/inst/n18_bgtz_ds_ex.S:35
9fc00d6c:	1e40009f 	bgtz	s2,9fc00fec <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n18_bgtz_ds_ex.S:36
9fc00d70:	0000000d 	break
/home/chooaa/cs_lab/cpu_ex/inst/n18_bgtz_ds_ex.S:37
9fc00d74:	1657009d 	bne	s2,s7,9fc00fec <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n18_bgtz_ds_ex.S:38
9fc00d78:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n18_bgtz_ds_ex.S:39
9fc00d7c:	24120002 	li	s2,2
/home/chooaa/cs_lab/cpu_ex/inst/n18_bgtz_ds_ex.S:40
9fc00d80:	3c149fc0 	lui	s4,0x9fc0
9fc00d84:	26940d88 	addiu	s4,s4,3464
/home/chooaa/cs_lab/cpu_ex/inst/n18_bgtz_ds_ex.S:41
9fc00d88:	1d000098 	bgtz	t0,9fc00fec <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n18_bgtz_ds_ex.S:42
9fc00d8c:	0000000d 	break
/home/chooaa/cs_lab/cpu_ex/inst/n18_bgtz_ds_ex.S:43
9fc00d90:	16570096 	bne	s2,s7,9fc00fec <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n18_bgtz_ds_ex.S:44
9fc00d94:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n18_bgtz_ds_ex.S:46
9fc00d98:	24120003 	li	s2,3
/home/chooaa/cs_lab/cpu_ex/inst/n18_bgtz_ds_ex.S:47
9fc00d9c:	3c170003 	lui	s7,0x3
/home/chooaa/cs_lab/cpu_ex/inst/n18_bgtz_ds_ex.S:48
9fc00da0:	ad120000 	sw	s2,0(t0)
/home/chooaa/cs_lab/cpu_ex/inst/n18_bgtz_ds_ex.S:49
9fc00da4:	3c149fc0 	lui	s4,0x9fc0
9fc00da8:	26940dbc 	addiu	s4,s4,3516
/home/chooaa/cs_lab/cpu_ex/inst/n18_bgtz_ds_ex.S:50
9fc00dac:	3c04ba03 	lui	a0,0xba03
9fc00db0:	34844f60 	ori	a0,a0,0x4f60
/home/chooaa/cs_lab/cpu_ex/inst/n18_bgtz_ds_ex.S:51
9fc00db4:	3c05b615 	lui	a1,0xb615
9fc00db8:	34a5fd67 	ori	a1,a1,0xfd67
/home/chooaa/cs_lab/cpu_ex/inst/n18_bgtz_ds_ex.S:52
9fc00dbc:	1e40008b 	bgtz	s2,9fc00fec <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n18_bgtz_ds_ex.S:53
9fc00dc0:	0085b820 	add	s7,a0,a1
/home/chooaa/cs_lab/cpu_ex/inst/n18_bgtz_ds_ex.S:54
9fc00dc4:	16570089 	bne	s2,s7,9fc00fec <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n18_bgtz_ds_ex.S:55
9fc00dc8:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n18_bgtz_ds_ex.S:56
9fc00dcc:	24120003 	li	s2,3
/home/chooaa/cs_lab/cpu_ex/inst/n18_bgtz_ds_ex.S:57
9fc00dd0:	3c149fc0 	lui	s4,0x9fc0
9fc00dd4:	26940dd8 	addiu	s4,s4,3544
/home/chooaa/cs_lab/cpu_ex/inst/n18_bgtz_ds_ex.S:58
9fc00dd8:	1d000084 	bgtz	t0,9fc00fec <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n18_bgtz_ds_ex.S:59
9fc00ddc:	0085b820 	add	s7,a0,a1
/home/chooaa/cs_lab/cpu_ex/inst/n18_bgtz_ds_ex.S:60
9fc00de0:	ad170000 	sw	s7,0(t0)
/home/chooaa/cs_lab/cpu_ex/inst/n18_bgtz_ds_ex.S:61
9fc00de4:	16570081 	bne	s2,s7,9fc00fec <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n18_bgtz_ds_ex.S:62
9fc00de8:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n18_bgtz_ds_ex.S:63
9fc00dec:	24120003 	li	s2,3
/home/chooaa/cs_lab/cpu_ex/inst/n18_bgtz_ds_ex.S:64
9fc00df0:	ad120000 	sw	s2,0(t0)
/home/chooaa/cs_lab/cpu_ex/inst/n18_bgtz_ds_ex.S:65
9fc00df4:	3c149fc0 	lui	s4,0x9fc0
9fc00df8:	26940e04 	addiu	s4,s4,3588
/home/chooaa/cs_lab/cpu_ex/inst/n18_bgtz_ds_ex.S:66
9fc00dfc:	3c047fff 	lui	a0,0x7fff
9fc00e00:	3484c19e 	ori	a0,a0,0xc19e
/home/chooaa/cs_lab/cpu_ex/inst/n18_bgtz_ds_ex.S:67
9fc00e04:	1e400079 	bgtz	s2,9fc00fec <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n18_bgtz_ds_ex.S:68
9fc00e08:	20976512 	addi	s7,a0,25874
/home/chooaa/cs_lab/cpu_ex/inst/n18_bgtz_ds_ex.S:69
9fc00e0c:	16570077 	bne	s2,s7,9fc00fec <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n18_bgtz_ds_ex.S:70
9fc00e10:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n18_bgtz_ds_ex.S:71
9fc00e14:	24120003 	li	s2,3
/home/chooaa/cs_lab/cpu_ex/inst/n18_bgtz_ds_ex.S:72
9fc00e18:	3c149fc0 	lui	s4,0x9fc0
9fc00e1c:	26940e20 	addiu	s4,s4,3616
/home/chooaa/cs_lab/cpu_ex/inst/n18_bgtz_ds_ex.S:73
9fc00e20:	1d000072 	bgtz	t0,9fc00fec <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n18_bgtz_ds_ex.S:74
9fc00e24:	20976512 	addi	s7,a0,25874
/home/chooaa/cs_lab/cpu_ex/inst/n18_bgtz_ds_ex.S:75
9fc00e28:	16570070 	bne	s2,s7,9fc00fec <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n18_bgtz_ds_ex.S:76
9fc00e2c:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n18_bgtz_ds_ex.S:77
9fc00e30:	24120003 	li	s2,3
/home/chooaa/cs_lab/cpu_ex/inst/n18_bgtz_ds_ex.S:78
9fc00e34:	3c149fc0 	lui	s4,0x9fc0
9fc00e38:	26940e4c 	addiu	s4,s4,3660
/home/chooaa/cs_lab/cpu_ex/inst/n18_bgtz_ds_ex.S:79
9fc00e3c:	3c04a85e 	lui	a0,0xa85e
9fc00e40:	34847d00 	ori	a0,a0,0x7d00
/home/chooaa/cs_lab/cpu_ex/inst/n18_bgtz_ds_ex.S:80
9fc00e44:	3c056b7e 	lui	a1,0x6b7e
9fc00e48:	34a58e36 	ori	a1,a1,0x8e36
/home/chooaa/cs_lab/cpu_ex/inst/n18_bgtz_ds_ex.S:81
9fc00e4c:	1e400067 	bgtz	s2,9fc00fec <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n18_bgtz_ds_ex.S:82
9fc00e50:	0085b822 	sub	s7,a0,a1
/home/chooaa/cs_lab/cpu_ex/inst/n18_bgtz_ds_ex.S:83
9fc00e54:	16570065 	bne	s2,s7,9fc00fec <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n18_bgtz_ds_ex.S:84
9fc00e58:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n18_bgtz_ds_ex.S:85
9fc00e5c:	24120003 	li	s2,3
/home/chooaa/cs_lab/cpu_ex/inst/n18_bgtz_ds_ex.S:86
9fc00e60:	3c149fc0 	lui	s4,0x9fc0
9fc00e64:	26940e68 	addiu	s4,s4,3688
/home/chooaa/cs_lab/cpu_ex/inst/n18_bgtz_ds_ex.S:87
9fc00e68:	1d000060 	bgtz	t0,9fc00fec <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n18_bgtz_ds_ex.S:88
9fc00e6c:	0085b822 	sub	s7,a0,a1
/home/chooaa/cs_lab/cpu_ex/inst/n18_bgtz_ds_ex.S:89
9fc00e70:	1657005e 	bne	s2,s7,9fc00fec <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n18_bgtz_ds_ex.S:90
9fc00e74:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n18_bgtz_ds_ex.S:92
9fc00e78:	24120004 	li	s2,4
/home/chooaa/cs_lab/cpu_ex/inst/n18_bgtz_ds_ex.S:93
9fc00e7c:	3c170004 	lui	s7,0x4
/home/chooaa/cs_lab/cpu_ex/inst/n18_bgtz_ds_ex.S:94
9fc00e80:	ad120000 	sw	s2,0(t0)
/home/chooaa/cs_lab/cpu_ex/inst/n18_bgtz_ds_ex.S:95
9fc00e84:	3c149fc0 	lui	s4,0x9fc0
9fc00e88:	26940e8c 	addiu	s4,s4,3724
/home/chooaa/cs_lab/cpu_ex/inst/n18_bgtz_ds_ex.S:96
9fc00e8c:	1e400057 	bgtz	s2,9fc00fec <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n18_bgtz_ds_ex.S:97
9fc00e90:	8d170002 	lw	s7,2(t0)
/home/chooaa/cs_lab/cpu_ex/inst/n18_bgtz_ds_ex.S:98
9fc00e94:	16570055 	bne	s2,s7,9fc00fec <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n18_bgtz_ds_ex.S:99
9fc00e98:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n18_bgtz_ds_ex.S:100
9fc00e9c:	24120004 	li	s2,4
/home/chooaa/cs_lab/cpu_ex/inst/n18_bgtz_ds_ex.S:101
9fc00ea0:	3c149fc0 	lui	s4,0x9fc0
9fc00ea4:	26940ea8 	addiu	s4,s4,3752
/home/chooaa/cs_lab/cpu_ex/inst/n18_bgtz_ds_ex.S:102
9fc00ea8:	1d000050 	bgtz	t0,9fc00fec <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n18_bgtz_ds_ex.S:103
9fc00eac:	8d170002 	lw	s7,2(t0)
/home/chooaa/cs_lab/cpu_ex/inst/n18_bgtz_ds_ex.S:104
9fc00eb0:	1657004e 	bne	s2,s7,9fc00fec <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n18_bgtz_ds_ex.S:105
9fc00eb4:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n18_bgtz_ds_ex.S:106
9fc00eb8:	24120004 	li	s2,4
/home/chooaa/cs_lab/cpu_ex/inst/n18_bgtz_ds_ex.S:107
9fc00ebc:	3c149fc0 	lui	s4,0x9fc0
9fc00ec0:	26940ec4 	addiu	s4,s4,3780
/home/chooaa/cs_lab/cpu_ex/inst/n18_bgtz_ds_ex.S:108
9fc00ec4:	1e400049 	bgtz	s2,9fc00fec <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n18_bgtz_ds_ex.S:109
9fc00ec8:	85170001 	lh	s7,1(t0)
/home/chooaa/cs_lab/cpu_ex/inst/n18_bgtz_ds_ex.S:110
9fc00ecc:	02f2001b 	divu	zero,s7,s2
/home/chooaa/cs_lab/cpu_ex/inst/n18_bgtz_ds_ex.S:111
9fc00ed0:	16570046 	bne	s2,s7,9fc00fec <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n18_bgtz_ds_ex.S:112
9fc00ed4:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n18_bgtz_ds_ex.S:113
9fc00ed8:	24120004 	li	s2,4
/home/chooaa/cs_lab/cpu_ex/inst/n18_bgtz_ds_ex.S:114
9fc00edc:	3c149fc0 	lui	s4,0x9fc0
9fc00ee0:	26940ee4 	addiu	s4,s4,3812
/home/chooaa/cs_lab/cpu_ex/inst/n18_bgtz_ds_ex.S:115
9fc00ee4:	1d000041 	bgtz	t0,9fc00fec <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n18_bgtz_ds_ex.S:116
9fc00ee8:	85170001 	lh	s7,1(t0)
/home/chooaa/cs_lab/cpu_ex/inst/n18_bgtz_ds_ex.S:117
9fc00eec:	1657003f 	bne	s2,s7,9fc00fec <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n18_bgtz_ds_ex.S:118
9fc00ef0:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n18_bgtz_ds_ex.S:119
9fc00ef4:	3c149fc0 	lui	s4,0x9fc0
9fc00ef8:	26940efc 	addiu	s4,s4,3836
/home/chooaa/cs_lab/cpu_ex/inst/n18_bgtz_ds_ex.S:120
9fc00efc:	1e40003b 	bgtz	s2,9fc00fec <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n18_bgtz_ds_ex.S:121
9fc00f00:	95170003 	lhu	s7,3(t0)
/home/chooaa/cs_lab/cpu_ex/inst/n18_bgtz_ds_ex.S:122
9fc00f04:	16570039 	bne	s2,s7,9fc00fec <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n18_bgtz_ds_ex.S:123
9fc00f08:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n18_bgtz_ds_ex.S:124
9fc00f0c:	24120004 	li	s2,4
/home/chooaa/cs_lab/cpu_ex/inst/n18_bgtz_ds_ex.S:125
9fc00f10:	3c149fc0 	lui	s4,0x9fc0
9fc00f14:	26940f18 	addiu	s4,s4,3864
/home/chooaa/cs_lab/cpu_ex/inst/n18_bgtz_ds_ex.S:126
9fc00f18:	1d000034 	bgtz	t0,9fc00fec <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n18_bgtz_ds_ex.S:127
9fc00f1c:	95170003 	lhu	s7,3(t0)
/home/chooaa/cs_lab/cpu_ex/inst/n18_bgtz_ds_ex.S:128
9fc00f20:	16570032 	bne	s2,s7,9fc00fec <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n18_bgtz_ds_ex.S:129
9fc00f24:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n18_bgtz_ds_ex.S:131
9fc00f28:	24120005 	li	s2,5
/home/chooaa/cs_lab/cpu_ex/inst/n18_bgtz_ds_ex.S:132
9fc00f2c:	3c170005 	lui	s7,0x5
/home/chooaa/cs_lab/cpu_ex/inst/n18_bgtz_ds_ex.S:133
9fc00f30:	ad120000 	sw	s2,0(t0)
/home/chooaa/cs_lab/cpu_ex/inst/n18_bgtz_ds_ex.S:134
9fc00f34:	3c149fc0 	lui	s4,0x9fc0
9fc00f38:	26940f3c 	addiu	s4,s4,3900
/home/chooaa/cs_lab/cpu_ex/inst/n18_bgtz_ds_ex.S:135
9fc00f3c:	1e40002b 	bgtz	s2,9fc00fec <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n18_bgtz_ds_ex.S:136
9fc00f40:	ad170002 	sw	s7,2(t0)
/home/chooaa/cs_lab/cpu_ex/inst/n18_bgtz_ds_ex.S:137
9fc00f44:	16570029 	bne	s2,s7,9fc00fec <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n18_bgtz_ds_ex.S:138
9fc00f48:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n18_bgtz_ds_ex.S:139
9fc00f4c:	24120005 	li	s2,5
/home/chooaa/cs_lab/cpu_ex/inst/n18_bgtz_ds_ex.S:140
9fc00f50:	3c149fc0 	lui	s4,0x9fc0
9fc00f54:	26940f58 	addiu	s4,s4,3928
/home/chooaa/cs_lab/cpu_ex/inst/n18_bgtz_ds_ex.S:141
9fc00f58:	1d000024 	bgtz	t0,9fc00fec <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n18_bgtz_ds_ex.S:142
9fc00f5c:	ad170002 	sw	s7,2(t0)
/home/chooaa/cs_lab/cpu_ex/inst/n18_bgtz_ds_ex.S:143
9fc00f60:	16570022 	bne	s2,s7,9fc00fec <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n18_bgtz_ds_ex.S:144
9fc00f64:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n18_bgtz_ds_ex.S:145
9fc00f68:	24120005 	li	s2,5
/home/chooaa/cs_lab/cpu_ex/inst/n18_bgtz_ds_ex.S:146
9fc00f6c:	3c149fc0 	lui	s4,0x9fc0
9fc00f70:	26940f74 	addiu	s4,s4,3956
/home/chooaa/cs_lab/cpu_ex/inst/n18_bgtz_ds_ex.S:147
9fc00f74:	1e40001d 	bgtz	s2,9fc00fec <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n18_bgtz_ds_ex.S:148
9fc00f78:	a5170001 	sh	s7,1(t0)
/home/chooaa/cs_lab/cpu_ex/inst/n18_bgtz_ds_ex.S:149
9fc00f7c:	1657001b 	bne	s2,s7,9fc00fec <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n18_bgtz_ds_ex.S:150
9fc00f80:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n18_bgtz_ds_ex.S:151
9fc00f84:	24120005 	li	s2,5
/home/chooaa/cs_lab/cpu_ex/inst/n18_bgtz_ds_ex.S:152
9fc00f88:	3c149fc0 	lui	s4,0x9fc0
9fc00f8c:	26940f90 	addiu	s4,s4,3984
/home/chooaa/cs_lab/cpu_ex/inst/n18_bgtz_ds_ex.S:153
9fc00f90:	1d000016 	bgtz	t0,9fc00fec <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n18_bgtz_ds_ex.S:154
9fc00f94:	a5170001 	sh	s7,1(t0)
/home/chooaa/cs_lab/cpu_ex/inst/n18_bgtz_ds_ex.S:155
9fc00f98:	16570014 	bne	s2,s7,9fc00fec <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n18_bgtz_ds_ex.S:156
9fc00f9c:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n18_bgtz_ds_ex.S:159
9fc00fa0:	24120007 	li	s2,7
/home/chooaa/cs_lab/cpu_ex/inst/n18_bgtz_ds_ex.S:160
9fc00fa4:	3c170007 	lui	s7,0x7
/home/chooaa/cs_lab/cpu_ex/inst/n18_bgtz_ds_ex.S:161
9fc00fa8:	ad120000 	sw	s2,0(t0)
/home/chooaa/cs_lab/cpu_ex/inst/n18_bgtz_ds_ex.S:162
9fc00fac:	3c149fc0 	lui	s4,0x9fc0
9fc00fb0:	26940fb4 	addiu	s4,s4,4020
/home/chooaa/cs_lab/cpu_ex/inst/n18_bgtz_ds_ex.S:163
9fc00fb4:	1e40000d 	bgtz	s2,9fc00fec <inst_error>
9fc00fb8:	9e3c56aa 	0x9e3c56aa
/home/chooaa/cs_lab/cpu_ex/inst/n18_bgtz_ds_ex.S:165
9fc00fbc:	02f20018 	mult	s7,s2
/home/chooaa/cs_lab/cpu_ex/inst/n18_bgtz_ds_ex.S:166
9fc00fc0:	1657000a 	bne	s2,s7,9fc00fec <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n18_bgtz_ds_ex.S:167
9fc00fc4:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n18_bgtz_ds_ex.S:168
9fc00fc8:	24120007 	li	s2,7
/home/chooaa/cs_lab/cpu_ex/inst/n18_bgtz_ds_ex.S:169
9fc00fcc:	3c149fc0 	lui	s4,0x9fc0
9fc00fd0:	26940fd8 	addiu	s4,s4,4056
/home/chooaa/cs_lab/cpu_ex/inst/n18_bgtz_ds_ex.S:170
9fc00fd4:	02f20018 	mult	s7,s2
/home/chooaa/cs_lab/cpu_ex/inst/n18_bgtz_ds_ex.S:171
9fc00fd8:	1d000004 	bgtz	t0,9fc00fec <inst_error>
9fc00fdc:	ec1ba960 	swc3	$27,-22176(zero)
/home/chooaa/cs_lab/cpu_ex/inst/n18_bgtz_ds_ex.S:173
9fc00fe0:	16570002 	bne	s2,s7,9fc00fec <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n18_bgtz_ds_ex.S:174
9fc00fe4:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n18_bgtz_ds_ex.S:176
9fc00fe8:	26730001 	addiu	s3,s3,1

9fc00fec <inst_error>:
/home/chooaa/cs_lab/cpu_ex/inst/n18_bgtz_ds_ex.S:179
9fc00fec:	00104e00 	sll	t1,s0,0x18
/home/chooaa/cs_lab/cpu_ex/inst/n18_bgtz_ds_ex.S:180
9fc00ff0:	01334025 	or	t0,t1,s3
/home/chooaa/cs_lab/cpu_ex/inst/n18_bgtz_ds_ex.S:181
9fc00ff4:	ae280000 	sw	t0,0(s1)
/home/chooaa/cs_lab/cpu_ex/inst/n18_bgtz_ds_ex.S:182
9fc00ff8:	03e00008 	jr	ra
/home/chooaa/cs_lab/cpu_ex/inst/n18_bgtz_ds_ex.S:183
9fc00ffc:	00000000 	nop

9fc01000 <n13_ti_ex_test>:
/home/chooaa/cs_lab/cpu_ex/inst/n13_ti_ex.S:7
9fc01000:	26100001 	addiu	s0,s0,1
/home/chooaa/cs_lab/cpu_ex/inst/n13_ti_ex.S:8
9fc01004:	3c08800d 	lui	t0,0x800d
/home/chooaa/cs_lab/cpu_ex/inst/n13_ti_ex.S:9
9fc01008:	24120008 	li	s2,8
/home/chooaa/cs_lab/cpu_ex/inst/n13_ti_ex.S:10
9fc0100c:	ad120000 	sw	s2,0(t0)
/home/chooaa/cs_lab/cpu_ex/inst/n13_ti_ex.S:12
9fc01010:	40805800 	mtc0	zero,c0_compare
/home/chooaa/cs_lab/cpu_ex/inst/n13_ti_ex.S:13
9fc01014:	3c170040 	lui	s7,0x40
/home/chooaa/cs_lab/cpu_ex/inst/n13_ti_ex.S:14
9fc01018:	40976000 	mtc0	s7,c0_status
/home/chooaa/cs_lab/cpu_ex/inst/n13_ti_ex.S:15
9fc0101c:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n13_ti_ex.S:16
9fc01020:	3c170008 	lui	s7,0x8
/home/chooaa/cs_lab/cpu_ex/inst/n13_ti_ex.S:19
9fc01024:	3c149fc0 	lui	s4,0x9fc0
9fc01028:	2694105c 	addiu	s4,s4,4188
/home/chooaa/cs_lab/cpu_ex/inst/n13_ti_ex.S:20
9fc0102c:	3c070040 	lui	a3,0x40
9fc01030:	34e7ff01 	ori	a3,a3,0xff01
9fc01034:	3c0345df 	lui	v1,0x45df
9fc01038:	34630200 	ori	v1,v1,0x200
9fc0103c:	2462000a 	addiu	v0,v1,10
9fc01040:	40824800 	mtc0	v0,c0_count
9fc01044:	40835800 	mtc0	v1,c0_compare
9fc01048:	3c0245df 	lui	v0,0x45df
9fc0104c:	344200e0 	ori	v0,v0,0xe0
9fc01050:	40876000 	mtc0	a3,c0_status
9fc01054:	00000000 	nop
9fc01058:	40824800 	mtc0	v0,c0_count
9fc0105c:	1000ffff 	b	9fc0105c <n13_ti_ex_test+0x5c>
9fc01060:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n13_ti_ex.S:21
9fc01064:	16570088 	bne	s2,s7,9fc01288 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n13_ti_ex.S:22
9fc01068:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n13_ti_ex.S:24
9fc0106c:	24120008 	li	s2,8
/home/chooaa/cs_lab/cpu_ex/inst/n13_ti_ex.S:25
9fc01070:	3c149fc0 	lui	s4,0x9fc0
9fc01074:	269410b0 	addiu	s4,s4,4272
/home/chooaa/cs_lab/cpu_ex/inst/n13_ti_ex.S:26
9fc01078:	ad080004 	sw	t0,4(t0)
/home/chooaa/cs_lab/cpu_ex/inst/n13_ti_ex.S:27
9fc0107c:	ad140004 	sw	s4,4(t0)
/home/chooaa/cs_lab/cpu_ex/inst/n13_ti_ex.S:28
9fc01080:	3c070040 	lui	a3,0x40
9fc01084:	34e7ff01 	ori	a3,a3,0xff01
9fc01088:	3c03b70e 	lui	v1,0xb70e
9fc0108c:	34633e4b 	ori	v1,v1,0x3e4b
9fc01090:	2462000a 	addiu	v0,v1,10
9fc01094:	40824800 	mtc0	v0,c0_count
9fc01098:	40835800 	mtc0	v1,c0_compare
9fc0109c:	3c02b70e 	lui	v0,0xb70e
9fc010a0:	34423e49 	ori	v0,v0,0x3e49
9fc010a4:	40876000 	mtc0	a3,c0_status
9fc010a8:	00000000 	nop
9fc010ac:	40824800 	mtc0	v0,c0_count
9fc010b0:	1000ffff 	b	9fc010b0 <n13_ti_ex_test+0xb0>
9fc010b4:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n13_ti_ex.S:29
9fc010b8:	ad140000 	sw	s4,0(t0)
/home/chooaa/cs_lab/cpu_ex/inst/n13_ti_ex.S:30
9fc010bc:	8d090004 	lw	t1,4(t0)
/home/chooaa/cs_lab/cpu_ex/inst/n13_ti_ex.S:31
9fc010c0:	15340071 	bne	t1,s4,9fc01288 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n13_ti_ex.S:32
9fc010c4:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n13_ti_ex.S:33
9fc010c8:	1657006f 	bne	s2,s7,9fc01288 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n13_ti_ex.S:34
9fc010cc:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n13_ti_ex.S:35
9fc010d0:	24120008 	li	s2,8
/home/chooaa/cs_lab/cpu_ex/inst/n13_ti_ex.S:36
9fc010d4:	ad120000 	sw	s2,0(t0)
/home/chooaa/cs_lab/cpu_ex/inst/n13_ti_ex.S:38
9fc010d8:	24120008 	li	s2,8
/home/chooaa/cs_lab/cpu_ex/inst/n13_ti_ex.S:39
9fc010dc:	3c149fc0 	lui	s4,0x9fc0
9fc010e0:	26941114 	addiu	s4,s4,4372
/home/chooaa/cs_lab/cpu_ex/inst/n13_ti_ex.S:40
9fc010e4:	01000011 	mthi	t0
/home/chooaa/cs_lab/cpu_ex/inst/n13_ti_ex.S:41
9fc010e8:	0110001b 	divu	zero,t0,s0
/home/chooaa/cs_lab/cpu_ex/inst/n13_ti_ex.S:42
9fc010ec:	3c070040 	lui	a3,0x40
9fc010f0:	34e7ff01 	ori	a3,a3,0xff01
9fc010f4:	24030022 	li	v1,34
9fc010f8:	2462000a 	addiu	v0,v1,10
9fc010fc:	40824800 	mtc0	v0,c0_count
9fc01100:	40835800 	mtc0	v1,c0_compare
9fc01104:	2402fffc 	li	v0,-4
9fc01108:	40876000 	mtc0	a3,c0_status
9fc0110c:	00000000 	nop
9fc01110:	40824800 	mtc0	v0,c0_count
9fc01114:	1000ffff 	b	9fc01114 <n13_ti_ex_test+0x114>
9fc01118:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n13_ti_ex.S:43
9fc0111c:	00004810 	mfhi	t1
/home/chooaa/cs_lab/cpu_ex/inst/n13_ti_ex.S:44
9fc01120:	11280059 	beq	t1,t0,9fc01288 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n13_ti_ex.S:45
9fc01124:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n13_ti_ex.S:46
9fc01128:	16570057 	bne	s2,s7,9fc01288 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n13_ti_ex.S:47
9fc0112c:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n13_ti_ex.S:49
9fc01130:	24120008 	li	s2,8
/home/chooaa/cs_lab/cpu_ex/inst/n13_ti_ex.S:50
9fc01134:	3c149fc0 	lui	s4,0x9fc0
9fc01138:	2694116c 	addiu	s4,s4,4460
/home/chooaa/cs_lab/cpu_ex/inst/n13_ti_ex.S:51
9fc0113c:	3c070040 	lui	a3,0x40
9fc01140:	34e7ff01 	ori	a3,a3,0xff01
9fc01144:	3c035a8d 	lui	v1,0x5a8d
9fc01148:	34637945 	ori	v1,v1,0x7945
9fc0114c:	2462000a 	addiu	v0,v1,10
9fc01150:	40824800 	mtc0	v0,c0_count
9fc01154:	40835800 	mtc0	v1,c0_compare
9fc01158:	3c025a8d 	lui	v0,0x5a8d
9fc0115c:	344278ce 	ori	v0,v0,0x78ce
9fc01160:	40876000 	mtc0	a3,c0_status
9fc01164:	00000000 	nop
9fc01168:	40824800 	mtc0	v0,c0_count
9fc0116c:	1000ffff 	b	9fc0116c <n13_ti_ex_test+0x16c>
9fc01170:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n13_ti_ex.S:52
9fc01174:	0208001b 	divu	zero,s0,t0
/home/chooaa/cs_lab/cpu_ex/inst/n13_ti_ex.S:53
9fc01178:	16570043 	bne	s2,s7,9fc01288 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n13_ti_ex.S:54
9fc0117c:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n13_ti_ex.S:56
9fc01180:	24120008 	li	s2,8
/home/chooaa/cs_lab/cpu_ex/inst/n13_ti_ex.S:57
9fc01184:	3c149fc0 	lui	s4,0x9fc0
9fc01188:	269411c4 	addiu	s4,s4,4548
/home/chooaa/cs_lab/cpu_ex/inst/n13_ti_ex.S:58
9fc0118c:	01000013 	mtlo	t0
/home/chooaa/cs_lab/cpu_ex/inst/n13_ti_ex.S:59
9fc01190:	01100019 	multu	t0,s0
/home/chooaa/cs_lab/cpu_ex/inst/n13_ti_ex.S:60
9fc01194:	3c070040 	lui	a3,0x40
9fc01198:	34e7ff01 	ori	a3,a3,0xff01
9fc0119c:	3c037bd1 	lui	v1,0x7bd1
9fc011a0:	3463ac71 	ori	v1,v1,0xac71
9fc011a4:	2462000a 	addiu	v0,v1,10
9fc011a8:	40824800 	mtc0	v0,c0_count
9fc011ac:	40835800 	mtc0	v1,c0_compare
9fc011b0:	3c027bd1 	lui	v0,0x7bd1
9fc011b4:	3442ac60 	ori	v0,v0,0xac60
9fc011b8:	40876000 	mtc0	a3,c0_status
9fc011bc:	00000000 	nop
9fc011c0:	40824800 	mtc0	v0,c0_count
9fc011c4:	1000ffff 	b	9fc011c4 <n13_ti_ex_test+0x1c4>
9fc011c8:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n13_ti_ex.S:61
9fc011cc:	00004810 	mfhi	t1
/home/chooaa/cs_lab/cpu_ex/inst/n13_ti_ex.S:62
9fc011d0:	1128002d 	beq	t1,t0,9fc01288 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n13_ti_ex.S:63
9fc011d4:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n13_ti_ex.S:64
9fc011d8:	1657002b 	bne	s2,s7,9fc01288 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n13_ti_ex.S:65
9fc011dc:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n13_ti_ex.S:67
9fc011e0:	24120008 	li	s2,8
/home/chooaa/cs_lab/cpu_ex/inst/n13_ti_ex.S:68
9fc011e4:	3c149fc0 	lui	s4,0x9fc0
9fc011e8:	2694121c 	addiu	s4,s4,4636
/home/chooaa/cs_lab/cpu_ex/inst/n13_ti_ex.S:69
9fc011ec:	3c070040 	lui	a3,0x40
9fc011f0:	34e7ff01 	ori	a3,a3,0xff01
9fc011f4:	3c037e62 	lui	v1,0x7e62
9fc011f8:	346365cd 	ori	v1,v1,0x65cd
9fc011fc:	2462000a 	addiu	v0,v1,10
9fc01200:	40824800 	mtc0	v0,c0_count
9fc01204:	40835800 	mtc0	v1,c0_compare
9fc01208:	3c027e62 	lui	v0,0x7e62
9fc0120c:	344265cc 	ori	v0,v0,0x65cc
9fc01210:	40876000 	mtc0	a3,c0_status
9fc01214:	00000000 	nop
9fc01218:	40824800 	mtc0	v0,c0_count
9fc0121c:	1000ffff 	b	9fc0121c <n13_ti_ex_test+0x21c>
9fc01220:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n13_ti_ex.S:70
9fc01224:	01120019 	multu	t0,s2
/home/chooaa/cs_lab/cpu_ex/inst/n13_ti_ex.S:71
9fc01228:	16570017 	bne	s2,s7,9fc01288 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n13_ti_ex.S:72
9fc0122c:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n13_ti_ex.S:74
9fc01230:	24120008 	li	s2,8
/home/chooaa/cs_lab/cpu_ex/inst/n13_ti_ex.S:75
9fc01234:	3c149fc0 	lui	s4,0x9fc0
9fc01238:	26941270 	addiu	s4,s4,4720
/home/chooaa/cs_lab/cpu_ex/inst/n13_ti_ex.S:76
9fc0123c:	40927000 	mtc0	s2,c0_epc
/home/chooaa/cs_lab/cpu_ex/inst/n13_ti_ex.S:77
9fc01240:	3c070040 	lui	a3,0x40
9fc01244:	34e7ff01 	ori	a3,a3,0xff01
9fc01248:	3c039fc5 	lui	v1,0x9fc5
9fc0124c:	34635510 	ori	v1,v1,0x5510
9fc01250:	2462000a 	addiu	v0,v1,10
9fc01254:	40824800 	mtc0	v0,c0_count
9fc01258:	40835800 	mtc0	v1,c0_compare
9fc0125c:	3c029fc5 	lui	v0,0x9fc5
9fc01260:	34425510 	ori	v0,v0,0x5510
9fc01264:	40876000 	mtc0	a3,c0_status
9fc01268:	00000000 	nop
9fc0126c:	40824800 	mtc0	v0,c0_count
9fc01270:	1000ffff 	b	9fc01270 <n13_ti_ex_test+0x270>
9fc01274:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n13_ti_ex.S:78
9fc01278:	40887000 	mtc0	t0,c0_epc
/home/chooaa/cs_lab/cpu_ex/inst/n13_ti_ex.S:79
9fc0127c:	16570002 	bne	s2,s7,9fc01288 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n13_ti_ex.S:80
9fc01280:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n13_ti_ex.S:82
9fc01284:	26730001 	addiu	s3,s3,1

9fc01288 <inst_error>:
/home/chooaa/cs_lab/cpu_ex/inst/n13_ti_ex.S:85
9fc01288:	00104e00 	sll	t1,s0,0x18
/home/chooaa/cs_lab/cpu_ex/inst/n13_ti_ex.S:86
9fc0128c:	01334025 	or	t0,t1,s3
/home/chooaa/cs_lab/cpu_ex/inst/n13_ti_ex.S:87
9fc01290:	ae280000 	sw	t0,0(s1)
/home/chooaa/cs_lab/cpu_ex/inst/n13_ti_ex.S:88
9fc01294:	03e00008 	jr	ra
/home/chooaa/cs_lab/cpu_ex/inst/n13_ti_ex.S:89
9fc01298:	00000000 	nop
inst_error():
9fc0129c:	00000000 	nop

9fc012a0 <n7_lh_adel_ex_test>:
/home/chooaa/cs_lab/cpu_ex/inst/n7_lh_adel_ex.S:7
9fc012a0:	26100001 	addiu	s0,s0,1
/home/chooaa/cs_lab/cpu_ex/inst/n7_lh_adel_ex.S:8
9fc012a4:	3c08800d 	lui	t0,0x800d
/home/chooaa/cs_lab/cpu_ex/inst/n7_lh_adel_ex.S:9
9fc012a8:	24120004 	li	s2,4
/home/chooaa/cs_lab/cpu_ex/inst/n7_lh_adel_ex.S:10
9fc012ac:	ad120000 	sw	s2,0(t0)
/home/chooaa/cs_lab/cpu_ex/inst/n7_lh_adel_ex.S:12
9fc012b0:	40805800 	mtc0	zero,c0_compare
/home/chooaa/cs_lab/cpu_ex/inst/n7_lh_adel_ex.S:13
9fc012b4:	3c170040 	lui	s7,0x40
/home/chooaa/cs_lab/cpu_ex/inst/n7_lh_adel_ex.S:14
9fc012b8:	40976000 	mtc0	s7,c0_status
/home/chooaa/cs_lab/cpu_ex/inst/n7_lh_adel_ex.S:15
9fc012bc:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n7_lh_adel_ex.S:16
9fc012c0:	3c170004 	lui	s7,0x4
/home/chooaa/cs_lab/cpu_ex/inst/n7_lh_adel_ex.S:19
9fc012c4:	3c029325 	lui	v0,0x9325
9fc012c8:	34422910 	ori	v0,v0,0x2910
9fc012cc:	3c039325 	lui	v1,0x9325
9fc012d0:	34632910 	ori	v1,v1,0x2910
9fc012d4:	3c04800d 	lui	a0,0x800d
9fc012d8:	34841348 	ori	a0,a0,0x1348
9fc012dc:	3c050233 	lui	a1,0x233
9fc012e0:	34a5e52c 	ori	a1,a1,0xe52c
9fc012e4:	24879a19 	addiu	a3,a0,-26087
9fc012e8:	3c010001 	lui	at,0x1
9fc012ec:	00240821 	addu	at,at,a0
9fc012f0:	ac259a18 	sw	a1,-26088(at)
/home/chooaa/cs_lab/cpu_ex/inst/n7_lh_adel_ex.S:20
9fc012f4:	3c149fc0 	lui	s4,0x9fc0
9fc012f8:	269412fc 	addiu	s4,s4,4860
/home/chooaa/cs_lab/cpu_ex/inst/n7_lh_adel_ex.S:21
9fc012fc:	84829a19 	lh	v0,-26087(a0)
/home/chooaa/cs_lab/cpu_ex/inst/n7_lh_adel_ex.S:22
9fc01300:	165700a1 	bne	s2,s7,9fc01588 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n7_lh_adel_ex.S:23
9fc01304:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n7_lh_adel_ex.S:24
9fc01308:	1443009f 	bne	v0,v1,9fc01588 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n7_lh_adel_ex.S:25
9fc0130c:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n7_lh_adel_ex.S:26
9fc01310:	40164000 	mfc0	s6,c0_badvaddr
/home/chooaa/cs_lab/cpu_ex/inst/n7_lh_adel_ex.S:27
9fc01314:	14f6009c 	bne	a3,s6,9fc01588 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n7_lh_adel_ex.S:28
9fc01318:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n7_lh_adel_ex.S:30
9fc0131c:	24120004 	li	s2,4
/home/chooaa/cs_lab/cpu_ex/inst/n7_lh_adel_ex.S:31
9fc01320:	3c02854a 	lui	v0,0x854a
9fc01324:	3442a680 	ori	v0,v0,0xa680
9fc01328:	3c03854a 	lui	v1,0x854a
9fc0132c:	3463a680 	ori	v1,v1,0xa680
9fc01330:	3c04800d 	lui	a0,0x800d
9fc01334:	34842ca8 	ori	a0,a0,0x2ca8
9fc01338:	3c052ba9 	lui	a1,0x2ba9
9fc0133c:	34a50e90 	ori	a1,a1,0xe90
9fc01340:	24872577 	addiu	a3,a0,9591
9fc01344:	ac852574 	sw	a1,9588(a0)
/home/chooaa/cs_lab/cpu_ex/inst/n7_lh_adel_ex.S:32
9fc01348:	3c149fc0 	lui	s4,0x9fc0
9fc0134c:	26941358 	addiu	s4,s4,4952
/home/chooaa/cs_lab/cpu_ex/inst/n7_lh_adel_ex.S:33
9fc01350:	ad080004 	sw	t0,4(t0)
/home/chooaa/cs_lab/cpu_ex/inst/n7_lh_adel_ex.S:34
9fc01354:	ad140004 	sw	s4,4(t0)
/home/chooaa/cs_lab/cpu_ex/inst/n7_lh_adel_ex.S:35
9fc01358:	84822577 	lh	v0,9591(a0)
/home/chooaa/cs_lab/cpu_ex/inst/n7_lh_adel_ex.S:36
9fc0135c:	ad140000 	sw	s4,0(t0)
/home/chooaa/cs_lab/cpu_ex/inst/n7_lh_adel_ex.S:37
9fc01360:	8d090004 	lw	t1,4(t0)
/home/chooaa/cs_lab/cpu_ex/inst/n7_lh_adel_ex.S:38
9fc01364:	15340088 	bne	t1,s4,9fc01588 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n7_lh_adel_ex.S:39
9fc01368:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n7_lh_adel_ex.S:40
9fc0136c:	16570086 	bne	s2,s7,9fc01588 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n7_lh_adel_ex.S:41
9fc01370:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n7_lh_adel_ex.S:42
9fc01374:	14430084 	bne	v0,v1,9fc01588 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n7_lh_adel_ex.S:43
9fc01378:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n7_lh_adel_ex.S:44
9fc0137c:	40164000 	mfc0	s6,c0_badvaddr
/home/chooaa/cs_lab/cpu_ex/inst/n7_lh_adel_ex.S:45
9fc01380:	14f60081 	bne	a3,s6,9fc01588 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n7_lh_adel_ex.S:46
9fc01384:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n7_lh_adel_ex.S:47
9fc01388:	24120004 	li	s2,4
/home/chooaa/cs_lab/cpu_ex/inst/n7_lh_adel_ex.S:48
9fc0138c:	ad120000 	sw	s2,0(t0)
/home/chooaa/cs_lab/cpu_ex/inst/n7_lh_adel_ex.S:50
9fc01390:	24120004 	li	s2,4
/home/chooaa/cs_lab/cpu_ex/inst/n7_lh_adel_ex.S:51
9fc01394:	3c02541f 	lui	v0,0x541f
9fc01398:	34426c5c 	ori	v0,v0,0x6c5c
9fc0139c:	3c03541f 	lui	v1,0x541f
9fc013a0:	34636c5c 	ori	v1,v1,0x6c5c
9fc013a4:	3c04800d 	lui	a0,0x800d
9fc013a8:	34841570 	ori	a0,a0,0x1570
9fc013ac:	3c059554 	lui	a1,0x9554
9fc013b0:	34a5e8d4 	ori	a1,a1,0xe8d4
9fc013b4:	248785e3 	addiu	a3,a0,-31261
9fc013b8:	3c010001 	lui	at,0x1
9fc013bc:	00240821 	addu	at,at,a0
9fc013c0:	ac2585e0 	sw	a1,-31264(at)
/home/chooaa/cs_lab/cpu_ex/inst/n7_lh_adel_ex.S:52
9fc013c4:	3c149fc0 	lui	s4,0x9fc0
9fc013c8:	269413d4 	addiu	s4,s4,5076
/home/chooaa/cs_lab/cpu_ex/inst/n7_lh_adel_ex.S:53
9fc013cc:	01000011 	mthi	t0
/home/chooaa/cs_lab/cpu_ex/inst/n7_lh_adel_ex.S:54
9fc013d0:	0110001b 	divu	zero,t0,s0
/home/chooaa/cs_lab/cpu_ex/inst/n7_lh_adel_ex.S:55
9fc013d4:	848285e3 	lh	v0,-31261(a0)
/home/chooaa/cs_lab/cpu_ex/inst/n7_lh_adel_ex.S:56
9fc013d8:	00004810 	mfhi	t1
/home/chooaa/cs_lab/cpu_ex/inst/n7_lh_adel_ex.S:57
9fc013dc:	1128006a 	beq	t1,t0,9fc01588 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n7_lh_adel_ex.S:58
9fc013e0:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n7_lh_adel_ex.S:59
9fc013e4:	16570068 	bne	s2,s7,9fc01588 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n7_lh_adel_ex.S:60
9fc013e8:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n7_lh_adel_ex.S:61
9fc013ec:	14430066 	bne	v0,v1,9fc01588 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n7_lh_adel_ex.S:62
9fc013f0:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n7_lh_adel_ex.S:63
9fc013f4:	40164000 	mfc0	s6,c0_badvaddr
/home/chooaa/cs_lab/cpu_ex/inst/n7_lh_adel_ex.S:64
9fc013f8:	14f60063 	bne	a3,s6,9fc01588 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n7_lh_adel_ex.S:65
9fc013fc:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n7_lh_adel_ex.S:67
9fc01400:	24120004 	li	s2,4
/home/chooaa/cs_lab/cpu_ex/inst/n7_lh_adel_ex.S:68
9fc01404:	3c02224c 	lui	v0,0x224c
9fc01408:	3442f16c 	ori	v0,v0,0xf16c
9fc0140c:	3c03224c 	lui	v1,0x224c
9fc01410:	3463f16c 	ori	v1,v1,0xf16c
9fc01414:	3c04800d 	lui	a0,0x800d
9fc01418:	348469cc 	ori	a0,a0,0x69cc
9fc0141c:	3c058ef7 	lui	a1,0x8ef7
9fc01420:	34a55a20 	ori	a1,a1,0x5a20
9fc01424:	24878341 	addiu	a3,a0,-31935
9fc01428:	3c010001 	lui	at,0x1
9fc0142c:	00240821 	addu	at,at,a0
9fc01430:	ac258340 	sw	a1,-31936(at)
/home/chooaa/cs_lab/cpu_ex/inst/n7_lh_adel_ex.S:69
9fc01434:	3c149fc0 	lui	s4,0x9fc0
9fc01438:	2694143c 	addiu	s4,s4,5180
/home/chooaa/cs_lab/cpu_ex/inst/n7_lh_adel_ex.S:70
9fc0143c:	84828341 	lh	v0,-31935(a0)
/home/chooaa/cs_lab/cpu_ex/inst/n7_lh_adel_ex.S:71
9fc01440:	0208001b 	divu	zero,s0,t0
/home/chooaa/cs_lab/cpu_ex/inst/n7_lh_adel_ex.S:72
9fc01444:	16570050 	bne	s2,s7,9fc01588 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n7_lh_adel_ex.S:73
9fc01448:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n7_lh_adel_ex.S:74
9fc0144c:	1443004e 	bne	v0,v1,9fc01588 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n7_lh_adel_ex.S:75
9fc01450:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n7_lh_adel_ex.S:76
9fc01454:	40164000 	mfc0	s6,c0_badvaddr
/home/chooaa/cs_lab/cpu_ex/inst/n7_lh_adel_ex.S:77
9fc01458:	14f6004b 	bne	a3,s6,9fc01588 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n7_lh_adel_ex.S:78
9fc0145c:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n7_lh_adel_ex.S:80
9fc01460:	24120004 	li	s2,4
/home/chooaa/cs_lab/cpu_ex/inst/n7_lh_adel_ex.S:81
9fc01464:	3c02516f 	lui	v0,0x516f
9fc01468:	34425fa2 	ori	v0,v0,0x5fa2
9fc0146c:	3c03516f 	lui	v1,0x516f
9fc01470:	34635fa2 	ori	v1,v1,0x5fa2
9fc01474:	3c04800d 	lui	a0,0x800d
9fc01478:	34840438 	ori	a0,a0,0x438
9fc0147c:	3c05cb7e 	lui	a1,0xcb7e
9fc01480:	34a5f7d5 	ori	a1,a1,0xf7d5
9fc01484:	2487db3b 	addiu	a3,a0,-9413
9fc01488:	3c010001 	lui	at,0x1
9fc0148c:	00240821 	addu	at,at,a0
9fc01490:	ac25db38 	sw	a1,-9416(at)
/home/chooaa/cs_lab/cpu_ex/inst/n7_lh_adel_ex.S:82
9fc01494:	3c149fc0 	lui	s4,0x9fc0
9fc01498:	269414a4 	addiu	s4,s4,5284
/home/chooaa/cs_lab/cpu_ex/inst/n7_lh_adel_ex.S:83
9fc0149c:	01000013 	mtlo	t0
/home/chooaa/cs_lab/cpu_ex/inst/n7_lh_adel_ex.S:84
9fc014a0:	01100019 	multu	t0,s0
/home/chooaa/cs_lab/cpu_ex/inst/n7_lh_adel_ex.S:85
9fc014a4:	8482db3b 	lh	v0,-9413(a0)
/home/chooaa/cs_lab/cpu_ex/inst/n7_lh_adel_ex.S:86
9fc014a8:	00004810 	mfhi	t1
/home/chooaa/cs_lab/cpu_ex/inst/n7_lh_adel_ex.S:87
9fc014ac:	11280036 	beq	t1,t0,9fc01588 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n7_lh_adel_ex.S:88
9fc014b0:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n7_lh_adel_ex.S:89
9fc014b4:	16570034 	bne	s2,s7,9fc01588 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n7_lh_adel_ex.S:90
9fc014b8:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n7_lh_adel_ex.S:91
9fc014bc:	14430032 	bne	v0,v1,9fc01588 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n7_lh_adel_ex.S:92
9fc014c0:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n7_lh_adel_ex.S:93
9fc014c4:	40164000 	mfc0	s6,c0_badvaddr
/home/chooaa/cs_lab/cpu_ex/inst/n7_lh_adel_ex.S:94
9fc014c8:	14f6002f 	bne	a3,s6,9fc01588 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n7_lh_adel_ex.S:95
9fc014cc:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n7_lh_adel_ex.S:97
9fc014d0:	24120004 	li	s2,4
/home/chooaa/cs_lab/cpu_ex/inst/n7_lh_adel_ex.S:98
9fc014d4:	3c023537 	lui	v0,0x3537
9fc014d8:	3442cc30 	ori	v0,v0,0xcc30
9fc014dc:	3c033537 	lui	v1,0x3537
9fc014e0:	3463cc30 	ori	v1,v1,0xcc30
9fc014e4:	3c04800d 	lui	a0,0x800d
9fc014e8:	34842c20 	ori	a0,a0,0x2c20
9fc014ec:	3c055118 	lui	a1,0x5118
9fc014f0:	34a5e811 	ori	a1,a1,0xe811
9fc014f4:	24871915 	addiu	a3,a0,6421
9fc014f8:	ac851914 	sw	a1,6420(a0)
/home/chooaa/cs_lab/cpu_ex/inst/n7_lh_adel_ex.S:99
9fc014fc:	3c149fc0 	lui	s4,0x9fc0
9fc01500:	26941504 	addiu	s4,s4,5380
/home/chooaa/cs_lab/cpu_ex/inst/n7_lh_adel_ex.S:100
9fc01504:	84821915 	lh	v0,6421(a0)
/home/chooaa/cs_lab/cpu_ex/inst/n7_lh_adel_ex.S:101
9fc01508:	01120019 	multu	t0,s2
/home/chooaa/cs_lab/cpu_ex/inst/n7_lh_adel_ex.S:102
9fc0150c:	1657001e 	bne	s2,s7,9fc01588 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n7_lh_adel_ex.S:103
9fc01510:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n7_lh_adel_ex.S:104
9fc01514:	1443001c 	bne	v0,v1,9fc01588 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n7_lh_adel_ex.S:105
9fc01518:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n7_lh_adel_ex.S:106
9fc0151c:	40164000 	mfc0	s6,c0_badvaddr
/home/chooaa/cs_lab/cpu_ex/inst/n7_lh_adel_ex.S:107
9fc01520:	14f60019 	bne	a3,s6,9fc01588 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n7_lh_adel_ex.S:108
9fc01524:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n7_lh_adel_ex.S:110
9fc01528:	24120004 	li	s2,4
/home/chooaa/cs_lab/cpu_ex/inst/n7_lh_adel_ex.S:111
9fc0152c:	3c0263c6 	lui	v0,0x63c6
9fc01530:	3442e7af 	ori	v0,v0,0xe7af
9fc01534:	3c0363c6 	lui	v1,0x63c6
9fc01538:	3463e7af 	ori	v1,v1,0xe7af
9fc0153c:	3c04800d 	lui	a0,0x800d
9fc01540:	34843d5c 	ori	a0,a0,0x3d5c
9fc01544:	3c05d802 	lui	a1,0xd802
9fc01548:	34a541b4 	ori	a1,a1,0x41b4
9fc0154c:	248732e9 	addiu	a3,a0,13033
9fc01550:	ac8532e8 	sw	a1,13032(a0)
/home/chooaa/cs_lab/cpu_ex/inst/n7_lh_adel_ex.S:112
9fc01554:	3c149fc0 	lui	s4,0x9fc0
9fc01558:	26941560 	addiu	s4,s4,5472
/home/chooaa/cs_lab/cpu_ex/inst/n7_lh_adel_ex.S:113
9fc0155c:	40927000 	mtc0	s2,c0_epc
/home/chooaa/cs_lab/cpu_ex/inst/n7_lh_adel_ex.S:114
9fc01560:	848232e9 	lh	v0,13033(a0)
/home/chooaa/cs_lab/cpu_ex/inst/n7_lh_adel_ex.S:115
9fc01564:	40887000 	mtc0	t0,c0_epc
/home/chooaa/cs_lab/cpu_ex/inst/n7_lh_adel_ex.S:116
9fc01568:	16570007 	bne	s2,s7,9fc01588 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n7_lh_adel_ex.S:117
9fc0156c:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n7_lh_adel_ex.S:118
9fc01570:	14430005 	bne	v0,v1,9fc01588 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n7_lh_adel_ex.S:119
9fc01574:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n7_lh_adel_ex.S:120
9fc01578:	40164000 	mfc0	s6,c0_badvaddr
/home/chooaa/cs_lab/cpu_ex/inst/n7_lh_adel_ex.S:121
9fc0157c:	14f60002 	bne	a3,s6,9fc01588 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n7_lh_adel_ex.S:122
9fc01580:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n7_lh_adel_ex.S:124
9fc01584:	26730001 	addiu	s3,s3,1

9fc01588 <inst_error>:
/home/chooaa/cs_lab/cpu_ex/inst/n7_lh_adel_ex.S:127
9fc01588:	00104e00 	sll	t1,s0,0x18
/home/chooaa/cs_lab/cpu_ex/inst/n7_lh_adel_ex.S:128
9fc0158c:	01334025 	or	t0,t1,s3
/home/chooaa/cs_lab/cpu_ex/inst/n7_lh_adel_ex.S:129
9fc01590:	ae280000 	sw	t0,0(s1)
/home/chooaa/cs_lab/cpu_ex/inst/n7_lh_adel_ex.S:130
9fc01594:	03e00008 	jr	ra
/home/chooaa/cs_lab/cpu_ex/inst/n7_lh_adel_ex.S:131
9fc01598:	00000000 	nop
9fc0159c:	00000000 	nop

9fc015a0 <n6_lw_adel_ex_test>:
/home/chooaa/cs_lab/cpu_ex/inst/n6_lw_adel_ex.S:7
9fc015a0:	26100001 	addiu	s0,s0,1
/home/chooaa/cs_lab/cpu_ex/inst/n6_lw_adel_ex.S:8
9fc015a4:	3c08800d 	lui	t0,0x800d
/home/chooaa/cs_lab/cpu_ex/inst/n6_lw_adel_ex.S:9
9fc015a8:	24120004 	li	s2,4
/home/chooaa/cs_lab/cpu_ex/inst/n6_lw_adel_ex.S:10
9fc015ac:	ad120000 	sw	s2,0(t0)
/home/chooaa/cs_lab/cpu_ex/inst/n6_lw_adel_ex.S:12
9fc015b0:	40805800 	mtc0	zero,c0_compare
/home/chooaa/cs_lab/cpu_ex/inst/n6_lw_adel_ex.S:13
9fc015b4:	3c170040 	lui	s7,0x40
/home/chooaa/cs_lab/cpu_ex/inst/n6_lw_adel_ex.S:14
9fc015b8:	40976000 	mtc0	s7,c0_status
/home/chooaa/cs_lab/cpu_ex/inst/n6_lw_adel_ex.S:15
9fc015bc:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n6_lw_adel_ex.S:16
9fc015c0:	3c170004 	lui	s7,0x4
/home/chooaa/cs_lab/cpu_ex/inst/n6_lw_adel_ex.S:19
9fc015c4:	3c023958 	lui	v0,0x3958
9fc015c8:	3442f252 	ori	v0,v0,0xf252
9fc015cc:	3c033958 	lui	v1,0x3958
9fc015d0:	3463f252 	ori	v1,v1,0xf252
9fc015d4:	3c04800d 	lui	a0,0x800d
9fc015d8:	3484759c 	ori	a0,a0,0x759c
9fc015dc:	3c05b27f 	lui	a1,0xb27f
9fc015e0:	34a59788 	ori	a1,a1,0x9788
9fc015e4:	24878845 	addiu	a3,a0,-30651
9fc015e8:	3c010001 	lui	at,0x1
9fc015ec:	00240821 	addu	at,at,a0
9fc015f0:	ac258844 	sw	a1,-30652(at)
/home/chooaa/cs_lab/cpu_ex/inst/n6_lw_adel_ex.S:20
9fc015f4:	3c149fc0 	lui	s4,0x9fc0
9fc015f8:	269415fc 	addiu	s4,s4,5628
/home/chooaa/cs_lab/cpu_ex/inst/n6_lw_adel_ex.S:21
9fc015fc:	8c828845 	lw	v0,-30651(a0)
/home/chooaa/cs_lab/cpu_ex/inst/n6_lw_adel_ex.S:22
9fc01600:	1657009f 	bne	s2,s7,9fc01880 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n6_lw_adel_ex.S:23
9fc01604:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n6_lw_adel_ex.S:24
9fc01608:	1443009d 	bne	v0,v1,9fc01880 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n6_lw_adel_ex.S:25
9fc0160c:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n6_lw_adel_ex.S:26
9fc01610:	40164000 	mfc0	s6,c0_badvaddr
/home/chooaa/cs_lab/cpu_ex/inst/n6_lw_adel_ex.S:27
9fc01614:	14f6009a 	bne	a3,s6,9fc01880 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n6_lw_adel_ex.S:28
9fc01618:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n6_lw_adel_ex.S:30
9fc0161c:	24120004 	li	s2,4
/home/chooaa/cs_lab/cpu_ex/inst/n6_lw_adel_ex.S:31
9fc01620:	3c02c044 	lui	v0,0xc044
9fc01624:	34422bd0 	ori	v0,v0,0x2bd0
9fc01628:	3c03c044 	lui	v1,0xc044
9fc0162c:	34632bd0 	ori	v1,v1,0x2bd0
9fc01630:	3c04800d 	lui	a0,0x800d
9fc01634:	34847748 	ori	a0,a0,0x7748
9fc01638:	3c053101 	lui	a1,0x3101
9fc0163c:	34a5bbec 	ori	a1,a1,0xbbec
9fc01640:	24870ea2 	addiu	a3,a0,3746
9fc01644:	ac850ea0 	sw	a1,3744(a0)
/home/chooaa/cs_lab/cpu_ex/inst/n6_lw_adel_ex.S:32
9fc01648:	3c149fc0 	lui	s4,0x9fc0
9fc0164c:	26941658 	addiu	s4,s4,5720
/home/chooaa/cs_lab/cpu_ex/inst/n6_lw_adel_ex.S:33
9fc01650:	ad080004 	sw	t0,4(t0)
/home/chooaa/cs_lab/cpu_ex/inst/n6_lw_adel_ex.S:34
9fc01654:	ad140004 	sw	s4,4(t0)
/home/chooaa/cs_lab/cpu_ex/inst/n6_lw_adel_ex.S:35
9fc01658:	8c820ea2 	lw	v0,3746(a0)
/home/chooaa/cs_lab/cpu_ex/inst/n6_lw_adel_ex.S:36
9fc0165c:	ad140000 	sw	s4,0(t0)
/home/chooaa/cs_lab/cpu_ex/inst/n6_lw_adel_ex.S:37
9fc01660:	8d090004 	lw	t1,4(t0)
/home/chooaa/cs_lab/cpu_ex/inst/n6_lw_adel_ex.S:38
9fc01664:	15340086 	bne	t1,s4,9fc01880 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n6_lw_adel_ex.S:39
9fc01668:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n6_lw_adel_ex.S:40
9fc0166c:	16570084 	bne	s2,s7,9fc01880 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n6_lw_adel_ex.S:41
9fc01670:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n6_lw_adel_ex.S:42
9fc01674:	14430082 	bne	v0,v1,9fc01880 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n6_lw_adel_ex.S:43
9fc01678:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n6_lw_adel_ex.S:44
9fc0167c:	40164000 	mfc0	s6,c0_badvaddr
/home/chooaa/cs_lab/cpu_ex/inst/n6_lw_adel_ex.S:45
9fc01680:	14f6007f 	bne	a3,s6,9fc01880 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n6_lw_adel_ex.S:46
9fc01684:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n6_lw_adel_ex.S:47
9fc01688:	24120004 	li	s2,4
/home/chooaa/cs_lab/cpu_ex/inst/n6_lw_adel_ex.S:48
9fc0168c:	ad120000 	sw	s2,0(t0)
/home/chooaa/cs_lab/cpu_ex/inst/n6_lw_adel_ex.S:50
9fc01690:	24120004 	li	s2,4
/home/chooaa/cs_lab/cpu_ex/inst/n6_lw_adel_ex.S:51
9fc01694:	3c026892 	lui	v0,0x6892
9fc01698:	34429b5c 	ori	v0,v0,0x9b5c
9fc0169c:	3c036892 	lui	v1,0x6892
9fc016a0:	34639b5c 	ori	v1,v1,0x9b5c
9fc016a4:	3c04800d 	lui	a0,0x800d
9fc016a8:	348459dc 	ori	a0,a0,0x59dc
9fc016ac:	3c0594a1 	lui	a1,0x94a1
9fc016b0:	34a5ade4 	ori	a1,a1,0xade4
9fc016b4:	24877cee 	addiu	a3,a0,31982
9fc016b8:	ac857cec 	sw	a1,31980(a0)
/home/chooaa/cs_lab/cpu_ex/inst/n6_lw_adel_ex.S:52
9fc016bc:	3c149fc0 	lui	s4,0x9fc0
9fc016c0:	269416cc 	addiu	s4,s4,5836
/home/chooaa/cs_lab/cpu_ex/inst/n6_lw_adel_ex.S:53
9fc016c4:	01000011 	mthi	t0
/home/chooaa/cs_lab/cpu_ex/inst/n6_lw_adel_ex.S:54
9fc016c8:	0110001b 	divu	zero,t0,s0
/home/chooaa/cs_lab/cpu_ex/inst/n6_lw_adel_ex.S:55
9fc016cc:	8c827cee 	lw	v0,31982(a0)
/home/chooaa/cs_lab/cpu_ex/inst/n6_lw_adel_ex.S:56
9fc016d0:	00004810 	mfhi	t1
/home/chooaa/cs_lab/cpu_ex/inst/n6_lw_adel_ex.S:57
9fc016d4:	1128006a 	beq	t1,t0,9fc01880 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n6_lw_adel_ex.S:58
9fc016d8:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n6_lw_adel_ex.S:59
9fc016dc:	16570068 	bne	s2,s7,9fc01880 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n6_lw_adel_ex.S:60
9fc016e0:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n6_lw_adel_ex.S:61
9fc016e4:	14430066 	bne	v0,v1,9fc01880 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n6_lw_adel_ex.S:62
9fc016e8:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n6_lw_adel_ex.S:63
9fc016ec:	40164000 	mfc0	s6,c0_badvaddr
/home/chooaa/cs_lab/cpu_ex/inst/n6_lw_adel_ex.S:64
9fc016f0:	14f60063 	bne	a3,s6,9fc01880 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n6_lw_adel_ex.S:65
9fc016f4:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n6_lw_adel_ex.S:67
9fc016f8:	24120004 	li	s2,4
/home/chooaa/cs_lab/cpu_ex/inst/n6_lw_adel_ex.S:68
9fc016fc:	3c027423 	lui	v0,0x7423
9fc01700:	3442d85f 	ori	v0,v0,0xd85f
9fc01704:	3c037423 	lui	v1,0x7423
9fc01708:	3463d85f 	ori	v1,v1,0xd85f
9fc0170c:	3c04800d 	lui	a0,0x800d
9fc01710:	34847748 	ori	a0,a0,0x7748
9fc01714:	3c05e2b0 	lui	a1,0xe2b0
9fc01718:	34a5a2c0 	ori	a1,a1,0xa2c0
9fc0171c:	24874973 	addiu	a3,a0,18803
9fc01720:	ac854970 	sw	a1,18800(a0)
/home/chooaa/cs_lab/cpu_ex/inst/n6_lw_adel_ex.S:69
9fc01724:	3c149fc0 	lui	s4,0x9fc0
9fc01728:	2694172c 	addiu	s4,s4,5932
/home/chooaa/cs_lab/cpu_ex/inst/n6_lw_adel_ex.S:70
9fc0172c:	8c824973 	lw	v0,18803(a0)
/home/chooaa/cs_lab/cpu_ex/inst/n6_lw_adel_ex.S:71
9fc01730:	0208001b 	divu	zero,s0,t0
/home/chooaa/cs_lab/cpu_ex/inst/n6_lw_adel_ex.S:72
9fc01734:	16570052 	bne	s2,s7,9fc01880 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n6_lw_adel_ex.S:73
9fc01738:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n6_lw_adel_ex.S:74
9fc0173c:	14430050 	bne	v0,v1,9fc01880 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n6_lw_adel_ex.S:75
9fc01740:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n6_lw_adel_ex.S:76
9fc01744:	40164000 	mfc0	s6,c0_badvaddr
/home/chooaa/cs_lab/cpu_ex/inst/n6_lw_adel_ex.S:77
9fc01748:	14f6004d 	bne	a3,s6,9fc01880 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n6_lw_adel_ex.S:78
9fc0174c:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n6_lw_adel_ex.S:80
9fc01750:	24120004 	li	s2,4
/home/chooaa/cs_lab/cpu_ex/inst/n6_lw_adel_ex.S:81
9fc01754:	3c02dd06 	lui	v0,0xdd06
9fc01758:	34424458 	ori	v0,v0,0x4458
9fc0175c:	3c03dd06 	lui	v1,0xdd06
9fc01760:	34634458 	ori	v1,v1,0x4458
9fc01764:	3c04800d 	lui	a0,0x800d
9fc01768:	34845bac 	ori	a0,a0,0x5bac
9fc0176c:	3c050f9e 	lui	a1,0xf9e
9fc01770:	34a5dafa 	ori	a1,a1,0xdafa
9fc01774:	2487003e 	addiu	a3,a0,62
9fc01778:	ac85003c 	sw	a1,60(a0)
/home/chooaa/cs_lab/cpu_ex/inst/n6_lw_adel_ex.S:82
9fc0177c:	3c149fc0 	lui	s4,0x9fc0
9fc01780:	2694178c 	addiu	s4,s4,6028
/home/chooaa/cs_lab/cpu_ex/inst/n6_lw_adel_ex.S:83
9fc01784:	01000013 	mtlo	t0
/home/chooaa/cs_lab/cpu_ex/inst/n6_lw_adel_ex.S:84
9fc01788:	01100019 	multu	t0,s0
/home/chooaa/cs_lab/cpu_ex/inst/n6_lw_adel_ex.S:85
9fc0178c:	8c82003e 	lw	v0,62(a0)
/home/chooaa/cs_lab/cpu_ex/inst/n6_lw_adel_ex.S:86
9fc01790:	00004810 	mfhi	t1
/home/chooaa/cs_lab/cpu_ex/inst/n6_lw_adel_ex.S:87
9fc01794:	1128003a 	beq	t1,t0,9fc01880 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n6_lw_adel_ex.S:88
9fc01798:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n6_lw_adel_ex.S:89
9fc0179c:	16570038 	bne	s2,s7,9fc01880 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n6_lw_adel_ex.S:90
9fc017a0:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n6_lw_adel_ex.S:91
9fc017a4:	14430036 	bne	v0,v1,9fc01880 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n6_lw_adel_ex.S:92
9fc017a8:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n6_lw_adel_ex.S:93
9fc017ac:	40164000 	mfc0	s6,c0_badvaddr
/home/chooaa/cs_lab/cpu_ex/inst/n6_lw_adel_ex.S:94
9fc017b0:	14f60033 	bne	a3,s6,9fc01880 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n6_lw_adel_ex.S:95
9fc017b4:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n6_lw_adel_ex.S:97
9fc017b8:	24120004 	li	s2,4
/home/chooaa/cs_lab/cpu_ex/inst/n6_lw_adel_ex.S:98
9fc017bc:	3c021514 	lui	v0,0x1514
9fc017c0:	34428b6c 	ori	v0,v0,0x8b6c
9fc017c4:	3c031514 	lui	v1,0x1514
9fc017c8:	34638b6c 	ori	v1,v1,0x8b6c
9fc017cc:	3c04800d 	lui	a0,0x800d
9fc017d0:	34840704 	ori	a0,a0,0x704
9fc017d4:	3c055077 	lui	a1,0x5077
9fc017d8:	34a5f320 	ori	a1,a1,0xf320
9fc017dc:	2487e53f 	addiu	a3,a0,-6849
9fc017e0:	3c010001 	lui	at,0x1
9fc017e4:	00240821 	addu	at,at,a0
9fc017e8:	ac25e53c 	sw	a1,-6852(at)
/home/chooaa/cs_lab/cpu_ex/inst/n6_lw_adel_ex.S:99
9fc017ec:	3c149fc0 	lui	s4,0x9fc0
9fc017f0:	269417f4 	addiu	s4,s4,6132
/home/chooaa/cs_lab/cpu_ex/inst/n6_lw_adel_ex.S:100
9fc017f4:	8c82e53f 	lw	v0,-6849(a0)
/home/chooaa/cs_lab/cpu_ex/inst/n6_lw_adel_ex.S:101
9fc017f8:	01120019 	multu	t0,s2
/home/chooaa/cs_lab/cpu_ex/inst/n6_lw_adel_ex.S:102
9fc017fc:	16570020 	bne	s2,s7,9fc01880 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n6_lw_adel_ex.S:103
9fc01800:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n6_lw_adel_ex.S:104
9fc01804:	1443001e 	bne	v0,v1,9fc01880 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n6_lw_adel_ex.S:105
9fc01808:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n6_lw_adel_ex.S:106
9fc0180c:	40164000 	mfc0	s6,c0_badvaddr
/home/chooaa/cs_lab/cpu_ex/inst/n6_lw_adel_ex.S:107
9fc01810:	14f6001b 	bne	a3,s6,9fc01880 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n6_lw_adel_ex.S:108
9fc01814:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n6_lw_adel_ex.S:110
9fc01818:	24120004 	li	s2,4
/home/chooaa/cs_lab/cpu_ex/inst/n6_lw_adel_ex.S:111
9fc0181c:	3c023958 	lui	v0,0x3958
9fc01820:	3442f252 	ori	v0,v0,0xf252
9fc01824:	3c033958 	lui	v1,0x3958
9fc01828:	3463f252 	ori	v1,v1,0xf252
9fc0182c:	3c04800d 	lui	a0,0x800d
9fc01830:	3484759c 	ori	a0,a0,0x759c
9fc01834:	3c05b27f 	lui	a1,0xb27f
9fc01838:	34a59788 	ori	a1,a1,0x9788
9fc0183c:	24878845 	addiu	a3,a0,-30651
9fc01840:	3c010001 	lui	at,0x1
9fc01844:	00240821 	addu	at,at,a0
9fc01848:	ac258844 	sw	a1,-30652(at)
/home/chooaa/cs_lab/cpu_ex/inst/n6_lw_adel_ex.S:112
9fc0184c:	3c149fc0 	lui	s4,0x9fc0
9fc01850:	26941858 	addiu	s4,s4,6232
/home/chooaa/cs_lab/cpu_ex/inst/n6_lw_adel_ex.S:113
9fc01854:	40927000 	mtc0	s2,c0_epc
/home/chooaa/cs_lab/cpu_ex/inst/n6_lw_adel_ex.S:114
9fc01858:	8c828845 	lw	v0,-30651(a0)
/home/chooaa/cs_lab/cpu_ex/inst/n6_lw_adel_ex.S:115
9fc0185c:	40887000 	mtc0	t0,c0_epc
/home/chooaa/cs_lab/cpu_ex/inst/n6_lw_adel_ex.S:116
9fc01860:	16570007 	bne	s2,s7,9fc01880 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n6_lw_adel_ex.S:117
9fc01864:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n6_lw_adel_ex.S:118
9fc01868:	14430005 	bne	v0,v1,9fc01880 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n6_lw_adel_ex.S:119
9fc0186c:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n6_lw_adel_ex.S:120
9fc01870:	40164000 	mfc0	s6,c0_badvaddr
/home/chooaa/cs_lab/cpu_ex/inst/n6_lw_adel_ex.S:121
9fc01874:	14f60002 	bne	a3,s6,9fc01880 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n6_lw_adel_ex.S:122
9fc01878:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n6_lw_adel_ex.S:124
9fc0187c:	26730001 	addiu	s3,s3,1

9fc01880 <inst_error>:
/home/chooaa/cs_lab/cpu_ex/inst/n6_lw_adel_ex.S:127
9fc01880:	00104e00 	sll	t1,s0,0x18
/home/chooaa/cs_lab/cpu_ex/inst/n6_lw_adel_ex.S:128
9fc01884:	01334025 	or	t0,t1,s3
/home/chooaa/cs_lab/cpu_ex/inst/n6_lw_adel_ex.S:129
9fc01888:	ae280000 	sw	t0,0(s1)
/home/chooaa/cs_lab/cpu_ex/inst/n6_lw_adel_ex.S:130
9fc0188c:	03e00008 	jr	ra
/home/chooaa/cs_lab/cpu_ex/inst/n6_lw_adel_ex.S:131
9fc01890:	00000000 	nop
	...

9fc018a0 <n26_jalr_ds_ex_test>:
/home/chooaa/cs_lab/cpu_ex/inst/n26_jalr_ds_ex.S:7
9fc018a0:	03e0b021 	move	s6,ra
/home/chooaa/cs_lab/cpu_ex/inst/n26_jalr_ds_ex.S:8
9fc018a4:	26100001 	addiu	s0,s0,1
/home/chooaa/cs_lab/cpu_ex/inst/n26_jalr_ds_ex.S:9
9fc018a8:	3c08800d 	lui	t0,0x800d
/home/chooaa/cs_lab/cpu_ex/inst/n26_jalr_ds_ex.S:11
9fc018ac:	40805800 	mtc0	zero,c0_compare
/home/chooaa/cs_lab/cpu_ex/inst/n26_jalr_ds_ex.S:12
9fc018b0:	3c170040 	lui	s7,0x40
/home/chooaa/cs_lab/cpu_ex/inst/n26_jalr_ds_ex.S:13
9fc018b4:	40976000 	mtc0	s7,c0_status
/home/chooaa/cs_lab/cpu_ex/inst/n26_jalr_ds_ex.S:14
9fc018b8:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n26_jalr_ds_ex.S:17
9fc018bc:	3c12a000 	lui	s2,0xa000
9fc018c0:	36520001 	ori	s2,s2,0x1
/home/chooaa/cs_lab/cpu_ex/inst/n26_jalr_ds_ex.S:18
9fc018c4:	3c170001 	lui	s7,0x1
/home/chooaa/cs_lab/cpu_ex/inst/n26_jalr_ds_ex.S:19
9fc018c8:	ad120000 	sw	s2,0(t0)
/home/chooaa/cs_lab/cpu_ex/inst/n26_jalr_ds_ex.S:20
9fc018cc:	3c149fc0 	lui	s4,0x9fc0
9fc018d0:	269418d4 	addiu	s4,s4,6356
/home/chooaa/cs_lab/cpu_ex/inst/n26_jalr_ds_ex.S:21
9fc018d4:	0240f809 	jalr	s2
/home/chooaa/cs_lab/cpu_ex/inst/n26_jalr_ds_ex.S:22
9fc018d8:	0000000c 	syscall
/home/chooaa/cs_lab/cpu_ex/inst/n26_jalr_ds_ex.S:23
9fc018dc:	165700c1 	bne	s2,s7,9fc01be4 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n26_jalr_ds_ex.S:24
9fc018e0:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n26_jalr_ds_ex.S:25
9fc018e4:	3c12a000 	lui	s2,0xa000
9fc018e8:	36520001 	ori	s2,s2,0x1
/home/chooaa/cs_lab/cpu_ex/inst/n26_jalr_ds_ex.S:26
9fc018ec:	3c149fc0 	lui	s4,0x9fc0
9fc018f0:	269418f4 	addiu	s4,s4,6388
/home/chooaa/cs_lab/cpu_ex/inst/n26_jalr_ds_ex.S:27
9fc018f4:	0100f809 	jalr	t0
/home/chooaa/cs_lab/cpu_ex/inst/n26_jalr_ds_ex.S:28
9fc018f8:	0000000c 	syscall
/home/chooaa/cs_lab/cpu_ex/inst/n26_jalr_ds_ex.S:29
9fc018fc:	165700b9 	bne	s2,s7,9fc01be4 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n26_jalr_ds_ex.S:30
9fc01900:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n26_jalr_ds_ex.S:32
9fc01904:	3c12a000 	lui	s2,0xa000
9fc01908:	36520002 	ori	s2,s2,0x2
/home/chooaa/cs_lab/cpu_ex/inst/n26_jalr_ds_ex.S:33
9fc0190c:	3c170002 	lui	s7,0x2
/home/chooaa/cs_lab/cpu_ex/inst/n26_jalr_ds_ex.S:34
9fc01910:	ad120000 	sw	s2,0(t0)
/home/chooaa/cs_lab/cpu_ex/inst/n26_jalr_ds_ex.S:35
9fc01914:	3c149fc0 	lui	s4,0x9fc0
9fc01918:	2694191c 	addiu	s4,s4,6428
/home/chooaa/cs_lab/cpu_ex/inst/n26_jalr_ds_ex.S:36
9fc0191c:	0240f809 	jalr	s2
/home/chooaa/cs_lab/cpu_ex/inst/n26_jalr_ds_ex.S:37
9fc01920:	0000000d 	break
/home/chooaa/cs_lab/cpu_ex/inst/n26_jalr_ds_ex.S:38
9fc01924:	165700af 	bne	s2,s7,9fc01be4 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n26_jalr_ds_ex.S:39
9fc01928:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n26_jalr_ds_ex.S:40
9fc0192c:	3c12a000 	lui	s2,0xa000
9fc01930:	36520002 	ori	s2,s2,0x2
/home/chooaa/cs_lab/cpu_ex/inst/n26_jalr_ds_ex.S:41
9fc01934:	3c149fc0 	lui	s4,0x9fc0
9fc01938:	2694193c 	addiu	s4,s4,6460
/home/chooaa/cs_lab/cpu_ex/inst/n26_jalr_ds_ex.S:42
9fc0193c:	0100f809 	jalr	t0
/home/chooaa/cs_lab/cpu_ex/inst/n26_jalr_ds_ex.S:43
9fc01940:	0000000d 	break
/home/chooaa/cs_lab/cpu_ex/inst/n26_jalr_ds_ex.S:44
9fc01944:	165700a7 	bne	s2,s7,9fc01be4 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n26_jalr_ds_ex.S:45
9fc01948:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n26_jalr_ds_ex.S:47
9fc0194c:	3c12a000 	lui	s2,0xa000
9fc01950:	36520003 	ori	s2,s2,0x3
/home/chooaa/cs_lab/cpu_ex/inst/n26_jalr_ds_ex.S:48
9fc01954:	3c170003 	lui	s7,0x3
/home/chooaa/cs_lab/cpu_ex/inst/n26_jalr_ds_ex.S:49
9fc01958:	ad120000 	sw	s2,0(t0)
/home/chooaa/cs_lab/cpu_ex/inst/n26_jalr_ds_ex.S:50
9fc0195c:	3c149fc0 	lui	s4,0x9fc0
9fc01960:	26941974 	addiu	s4,s4,6516
/home/chooaa/cs_lab/cpu_ex/inst/n26_jalr_ds_ex.S:51
9fc01964:	3c04ba03 	lui	a0,0xba03
9fc01968:	34844f60 	ori	a0,a0,0x4f60
/home/chooaa/cs_lab/cpu_ex/inst/n26_jalr_ds_ex.S:52
9fc0196c:	3c05b615 	lui	a1,0xb615
9fc01970:	34a5fd67 	ori	a1,a1,0xfd67
/home/chooaa/cs_lab/cpu_ex/inst/n26_jalr_ds_ex.S:53
9fc01974:	0240f809 	jalr	s2
/home/chooaa/cs_lab/cpu_ex/inst/n26_jalr_ds_ex.S:54
9fc01978:	0085b820 	add	s7,a0,a1
/home/chooaa/cs_lab/cpu_ex/inst/n26_jalr_ds_ex.S:55
9fc0197c:	16570099 	bne	s2,s7,9fc01be4 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n26_jalr_ds_ex.S:56
9fc01980:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n26_jalr_ds_ex.S:57
9fc01984:	3c12a000 	lui	s2,0xa000
9fc01988:	36520003 	ori	s2,s2,0x3
/home/chooaa/cs_lab/cpu_ex/inst/n26_jalr_ds_ex.S:58
9fc0198c:	3c149fc0 	lui	s4,0x9fc0
9fc01990:	26941994 	addiu	s4,s4,6548
/home/chooaa/cs_lab/cpu_ex/inst/n26_jalr_ds_ex.S:59
9fc01994:	0100f809 	jalr	t0
/home/chooaa/cs_lab/cpu_ex/inst/n26_jalr_ds_ex.S:60
9fc01998:	0085b820 	add	s7,a0,a1
/home/chooaa/cs_lab/cpu_ex/inst/n26_jalr_ds_ex.S:61
9fc0199c:	ad170000 	sw	s7,0(t0)
/home/chooaa/cs_lab/cpu_ex/inst/n26_jalr_ds_ex.S:62
9fc019a0:	16570090 	bne	s2,s7,9fc01be4 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n26_jalr_ds_ex.S:63
9fc019a4:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n26_jalr_ds_ex.S:64
9fc019a8:	3c12a000 	lui	s2,0xa000
9fc019ac:	36520003 	ori	s2,s2,0x3
/home/chooaa/cs_lab/cpu_ex/inst/n26_jalr_ds_ex.S:65
9fc019b0:	ad120000 	sw	s2,0(t0)
/home/chooaa/cs_lab/cpu_ex/inst/n26_jalr_ds_ex.S:66
9fc019b4:	3c149fc0 	lui	s4,0x9fc0
9fc019b8:	269419c4 	addiu	s4,s4,6596
/home/chooaa/cs_lab/cpu_ex/inst/n26_jalr_ds_ex.S:67
9fc019bc:	3c047fff 	lui	a0,0x7fff
9fc019c0:	3484c19e 	ori	a0,a0,0xc19e
/home/chooaa/cs_lab/cpu_ex/inst/n26_jalr_ds_ex.S:68
9fc019c4:	0240f809 	jalr	s2
/home/chooaa/cs_lab/cpu_ex/inst/n26_jalr_ds_ex.S:69
9fc019c8:	20976512 	addi	s7,a0,25874
/home/chooaa/cs_lab/cpu_ex/inst/n26_jalr_ds_ex.S:70
9fc019cc:	16570085 	bne	s2,s7,9fc01be4 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n26_jalr_ds_ex.S:71
9fc019d0:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n26_jalr_ds_ex.S:72
9fc019d4:	3c12a000 	lui	s2,0xa000
9fc019d8:	36520003 	ori	s2,s2,0x3
/home/chooaa/cs_lab/cpu_ex/inst/n26_jalr_ds_ex.S:73
9fc019dc:	3c149fc0 	lui	s4,0x9fc0
9fc019e0:	269419e4 	addiu	s4,s4,6628
/home/chooaa/cs_lab/cpu_ex/inst/n26_jalr_ds_ex.S:74
9fc019e4:	0100f809 	jalr	t0
/home/chooaa/cs_lab/cpu_ex/inst/n26_jalr_ds_ex.S:75
9fc019e8:	20976512 	addi	s7,a0,25874
/home/chooaa/cs_lab/cpu_ex/inst/n26_jalr_ds_ex.S:76
9fc019ec:	1657007d 	bne	s2,s7,9fc01be4 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n26_jalr_ds_ex.S:77
9fc019f0:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n26_jalr_ds_ex.S:78
9fc019f4:	3c12a000 	lui	s2,0xa000
9fc019f8:	36520003 	ori	s2,s2,0x3
/home/chooaa/cs_lab/cpu_ex/inst/n26_jalr_ds_ex.S:79
9fc019fc:	3c149fc0 	lui	s4,0x9fc0
9fc01a00:	26941a14 	addiu	s4,s4,6676
/home/chooaa/cs_lab/cpu_ex/inst/n26_jalr_ds_ex.S:80
9fc01a04:	3c04a85e 	lui	a0,0xa85e
9fc01a08:	34847d00 	ori	a0,a0,0x7d00
/home/chooaa/cs_lab/cpu_ex/inst/n26_jalr_ds_ex.S:81
9fc01a0c:	3c056b7e 	lui	a1,0x6b7e
9fc01a10:	34a58e36 	ori	a1,a1,0x8e36
/home/chooaa/cs_lab/cpu_ex/inst/n26_jalr_ds_ex.S:82
9fc01a14:	0240f809 	jalr	s2
/home/chooaa/cs_lab/cpu_ex/inst/n26_jalr_ds_ex.S:83
9fc01a18:	0085b822 	sub	s7,a0,a1
/home/chooaa/cs_lab/cpu_ex/inst/n26_jalr_ds_ex.S:84
9fc01a1c:	16570071 	bne	s2,s7,9fc01be4 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n26_jalr_ds_ex.S:85
9fc01a20:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n26_jalr_ds_ex.S:86
9fc01a24:	3c12a000 	lui	s2,0xa000
9fc01a28:	36520003 	ori	s2,s2,0x3
/home/chooaa/cs_lab/cpu_ex/inst/n26_jalr_ds_ex.S:87
9fc01a2c:	3c149fc0 	lui	s4,0x9fc0
9fc01a30:	26941a34 	addiu	s4,s4,6708
/home/chooaa/cs_lab/cpu_ex/inst/n26_jalr_ds_ex.S:88
9fc01a34:	0100f809 	jalr	t0
/home/chooaa/cs_lab/cpu_ex/inst/n26_jalr_ds_ex.S:89
9fc01a38:	0085b822 	sub	s7,a0,a1
/home/chooaa/cs_lab/cpu_ex/inst/n26_jalr_ds_ex.S:90
9fc01a3c:	16570069 	bne	s2,s7,9fc01be4 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n26_jalr_ds_ex.S:91
9fc01a40:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n26_jalr_ds_ex.S:93
9fc01a44:	3c12a000 	lui	s2,0xa000
9fc01a48:	36520004 	ori	s2,s2,0x4
/home/chooaa/cs_lab/cpu_ex/inst/n26_jalr_ds_ex.S:94
9fc01a4c:	3c170004 	lui	s7,0x4
/home/chooaa/cs_lab/cpu_ex/inst/n26_jalr_ds_ex.S:95
9fc01a50:	ad120000 	sw	s2,0(t0)
/home/chooaa/cs_lab/cpu_ex/inst/n26_jalr_ds_ex.S:96
9fc01a54:	3c149fc0 	lui	s4,0x9fc0
9fc01a58:	26941a5c 	addiu	s4,s4,6748
/home/chooaa/cs_lab/cpu_ex/inst/n26_jalr_ds_ex.S:97
9fc01a5c:	0240f809 	jalr	s2
/home/chooaa/cs_lab/cpu_ex/inst/n26_jalr_ds_ex.S:98
9fc01a60:	8d170002 	lw	s7,2(t0)
/home/chooaa/cs_lab/cpu_ex/inst/n26_jalr_ds_ex.S:99
9fc01a64:	1657005f 	bne	s2,s7,9fc01be4 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n26_jalr_ds_ex.S:100
9fc01a68:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n26_jalr_ds_ex.S:101
9fc01a6c:	3c12a000 	lui	s2,0xa000
9fc01a70:	36520004 	ori	s2,s2,0x4
/home/chooaa/cs_lab/cpu_ex/inst/n26_jalr_ds_ex.S:102
9fc01a74:	3c149fc0 	lui	s4,0x9fc0
9fc01a78:	26941a7c 	addiu	s4,s4,6780
/home/chooaa/cs_lab/cpu_ex/inst/n26_jalr_ds_ex.S:103
9fc01a7c:	0100f809 	jalr	t0
/home/chooaa/cs_lab/cpu_ex/inst/n26_jalr_ds_ex.S:104
9fc01a80:	8d170002 	lw	s7,2(t0)
/home/chooaa/cs_lab/cpu_ex/inst/n26_jalr_ds_ex.S:105
9fc01a84:	16570057 	bne	s2,s7,9fc01be4 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n26_jalr_ds_ex.S:106
9fc01a88:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n26_jalr_ds_ex.S:107
9fc01a8c:	3c12a000 	lui	s2,0xa000
9fc01a90:	36520004 	ori	s2,s2,0x4
/home/chooaa/cs_lab/cpu_ex/inst/n26_jalr_ds_ex.S:108
9fc01a94:	3c149fc0 	lui	s4,0x9fc0
9fc01a98:	26941a9c 	addiu	s4,s4,6812
/home/chooaa/cs_lab/cpu_ex/inst/n26_jalr_ds_ex.S:109
9fc01a9c:	0240f809 	jalr	s2
/home/chooaa/cs_lab/cpu_ex/inst/n26_jalr_ds_ex.S:110
9fc01aa0:	85170001 	lh	s7,1(t0)
/home/chooaa/cs_lab/cpu_ex/inst/n26_jalr_ds_ex.S:111
9fc01aa4:	02f2001b 	divu	zero,s7,s2
/home/chooaa/cs_lab/cpu_ex/inst/n26_jalr_ds_ex.S:112
9fc01aa8:	1657004e 	bne	s2,s7,9fc01be4 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n26_jalr_ds_ex.S:113
9fc01aac:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n26_jalr_ds_ex.S:114
9fc01ab0:	3c12a000 	lui	s2,0xa000
9fc01ab4:	36520004 	ori	s2,s2,0x4
/home/chooaa/cs_lab/cpu_ex/inst/n26_jalr_ds_ex.S:115
9fc01ab8:	3c149fc0 	lui	s4,0x9fc0
9fc01abc:	26941ac0 	addiu	s4,s4,6848
/home/chooaa/cs_lab/cpu_ex/inst/n26_jalr_ds_ex.S:116
9fc01ac0:	0240f809 	jalr	s2
/home/chooaa/cs_lab/cpu_ex/inst/n26_jalr_ds_ex.S:117
9fc01ac4:	85170001 	lh	s7,1(t0)
/home/chooaa/cs_lab/cpu_ex/inst/n26_jalr_ds_ex.S:118
9fc01ac8:	16570046 	bne	s2,s7,9fc01be4 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n26_jalr_ds_ex.S:119
9fc01acc:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n26_jalr_ds_ex.S:120
9fc01ad0:	3c149fc0 	lui	s4,0x9fc0
9fc01ad4:	26941ad8 	addiu	s4,s4,6872
/home/chooaa/cs_lab/cpu_ex/inst/n26_jalr_ds_ex.S:121
9fc01ad8:	0100f809 	jalr	t0
/home/chooaa/cs_lab/cpu_ex/inst/n26_jalr_ds_ex.S:122
9fc01adc:	95170003 	lhu	s7,3(t0)
/home/chooaa/cs_lab/cpu_ex/inst/n26_jalr_ds_ex.S:123
9fc01ae0:	16570040 	bne	s2,s7,9fc01be4 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n26_jalr_ds_ex.S:124
9fc01ae4:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n26_jalr_ds_ex.S:125
9fc01ae8:	3c12a000 	lui	s2,0xa000
9fc01aec:	36520004 	ori	s2,s2,0x4
/home/chooaa/cs_lab/cpu_ex/inst/n26_jalr_ds_ex.S:126
9fc01af0:	3c149fc0 	lui	s4,0x9fc0
9fc01af4:	26941af8 	addiu	s4,s4,6904
/home/chooaa/cs_lab/cpu_ex/inst/n26_jalr_ds_ex.S:127
9fc01af8:	0100f809 	jalr	t0
/home/chooaa/cs_lab/cpu_ex/inst/n26_jalr_ds_ex.S:128
9fc01afc:	95170003 	lhu	s7,3(t0)
/home/chooaa/cs_lab/cpu_ex/inst/n26_jalr_ds_ex.S:129
9fc01b00:	16570038 	bne	s2,s7,9fc01be4 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n26_jalr_ds_ex.S:130
9fc01b04:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n26_jalr_ds_ex.S:132
9fc01b08:	3c12a000 	lui	s2,0xa000
9fc01b0c:	36520005 	ori	s2,s2,0x5
/home/chooaa/cs_lab/cpu_ex/inst/n26_jalr_ds_ex.S:133
9fc01b10:	3c170005 	lui	s7,0x5
/home/chooaa/cs_lab/cpu_ex/inst/n26_jalr_ds_ex.S:134
9fc01b14:	ad120000 	sw	s2,0(t0)
/home/chooaa/cs_lab/cpu_ex/inst/n26_jalr_ds_ex.S:135
9fc01b18:	3c149fc0 	lui	s4,0x9fc0
9fc01b1c:	26941b20 	addiu	s4,s4,6944
/home/chooaa/cs_lab/cpu_ex/inst/n26_jalr_ds_ex.S:136
9fc01b20:	0240f809 	jalr	s2
/home/chooaa/cs_lab/cpu_ex/inst/n26_jalr_ds_ex.S:137
9fc01b24:	ad170002 	sw	s7,2(t0)
/home/chooaa/cs_lab/cpu_ex/inst/n26_jalr_ds_ex.S:138
9fc01b28:	1657002e 	bne	s2,s7,9fc01be4 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n26_jalr_ds_ex.S:139
9fc01b2c:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n26_jalr_ds_ex.S:140
9fc01b30:	3c12a000 	lui	s2,0xa000
9fc01b34:	36520005 	ori	s2,s2,0x5
/home/chooaa/cs_lab/cpu_ex/inst/n26_jalr_ds_ex.S:141
9fc01b38:	3c149fc0 	lui	s4,0x9fc0
9fc01b3c:	26941b40 	addiu	s4,s4,6976
/home/chooaa/cs_lab/cpu_ex/inst/n26_jalr_ds_ex.S:142
9fc01b40:	0240f809 	jalr	s2
/home/chooaa/cs_lab/cpu_ex/inst/n26_jalr_ds_ex.S:143
9fc01b44:	ad170002 	sw	s7,2(t0)
/home/chooaa/cs_lab/cpu_ex/inst/n26_jalr_ds_ex.S:144
9fc01b48:	16570026 	bne	s2,s7,9fc01be4 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n26_jalr_ds_ex.S:145
9fc01b4c:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n26_jalr_ds_ex.S:146
9fc01b50:	3c12a000 	lui	s2,0xa000
9fc01b54:	36520005 	ori	s2,s2,0x5
/home/chooaa/cs_lab/cpu_ex/inst/n26_jalr_ds_ex.S:147
9fc01b58:	3c149fc0 	lui	s4,0x9fc0
9fc01b5c:	26941b60 	addiu	s4,s4,7008
/home/chooaa/cs_lab/cpu_ex/inst/n26_jalr_ds_ex.S:148
9fc01b60:	0100f809 	jalr	t0
/home/chooaa/cs_lab/cpu_ex/inst/n26_jalr_ds_ex.S:149
9fc01b64:	a5170001 	sh	s7,1(t0)
/home/chooaa/cs_lab/cpu_ex/inst/n26_jalr_ds_ex.S:150
9fc01b68:	1657001e 	bne	s2,s7,9fc01be4 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n26_jalr_ds_ex.S:151
9fc01b6c:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n26_jalr_ds_ex.S:152
9fc01b70:	3c12a000 	lui	s2,0xa000
9fc01b74:	36520005 	ori	s2,s2,0x5
/home/chooaa/cs_lab/cpu_ex/inst/n26_jalr_ds_ex.S:153
9fc01b78:	3c149fc0 	lui	s4,0x9fc0
9fc01b7c:	26941b80 	addiu	s4,s4,7040
/home/chooaa/cs_lab/cpu_ex/inst/n26_jalr_ds_ex.S:154
9fc01b80:	0100f809 	jalr	t0
/home/chooaa/cs_lab/cpu_ex/inst/n26_jalr_ds_ex.S:155
9fc01b84:	a5170001 	sh	s7,1(t0)
/home/chooaa/cs_lab/cpu_ex/inst/n26_jalr_ds_ex.S:156
9fc01b88:	16570016 	bne	s2,s7,9fc01be4 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n26_jalr_ds_ex.S:157
9fc01b8c:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n26_jalr_ds_ex.S:160
9fc01b90:	3c12a000 	lui	s2,0xa000
9fc01b94:	36520007 	ori	s2,s2,0x7
/home/chooaa/cs_lab/cpu_ex/inst/n26_jalr_ds_ex.S:161
9fc01b98:	3c170007 	lui	s7,0x7
/home/chooaa/cs_lab/cpu_ex/inst/n26_jalr_ds_ex.S:162
9fc01b9c:	ad120000 	sw	s2,0(t0)
/home/chooaa/cs_lab/cpu_ex/inst/n26_jalr_ds_ex.S:163
9fc01ba0:	3c149fc0 	lui	s4,0x9fc0
9fc01ba4:	26941ba8 	addiu	s4,s4,7080
/home/chooaa/cs_lab/cpu_ex/inst/n26_jalr_ds_ex.S:164
9fc01ba8:	0240f809 	jalr	s2
9fc01bac:	9e3c56aa 	0x9e3c56aa
/home/chooaa/cs_lab/cpu_ex/inst/n26_jalr_ds_ex.S:166
9fc01bb0:	02f20018 	mult	s7,s2
/home/chooaa/cs_lab/cpu_ex/inst/n26_jalr_ds_ex.S:167
9fc01bb4:	1657000b 	bne	s2,s7,9fc01be4 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n26_jalr_ds_ex.S:168
9fc01bb8:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n26_jalr_ds_ex.S:169
9fc01bbc:	3c12a000 	lui	s2,0xa000
9fc01bc0:	36520007 	ori	s2,s2,0x7
/home/chooaa/cs_lab/cpu_ex/inst/n26_jalr_ds_ex.S:170
9fc01bc4:	3c149fc0 	lui	s4,0x9fc0
9fc01bc8:	26941bd0 	addiu	s4,s4,7120
/home/chooaa/cs_lab/cpu_ex/inst/n26_jalr_ds_ex.S:171
9fc01bcc:	02f20018 	mult	s7,s2
/home/chooaa/cs_lab/cpu_ex/inst/n26_jalr_ds_ex.S:172
9fc01bd0:	0100f809 	jalr	t0
9fc01bd4:	ec1ba960 	swc3	$27,-22176(zero)
/home/chooaa/cs_lab/cpu_ex/inst/n26_jalr_ds_ex.S:174
9fc01bd8:	16570002 	bne	s2,s7,9fc01be4 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n26_jalr_ds_ex.S:175
9fc01bdc:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n26_jalr_ds_ex.S:177
9fc01be0:	26730001 	addiu	s3,s3,1

9fc01be4 <inst_error>:
/home/chooaa/cs_lab/cpu_ex/inst/n26_jalr_ds_ex.S:180
9fc01be4:	00104e00 	sll	t1,s0,0x18
/home/chooaa/cs_lab/cpu_ex/inst/n26_jalr_ds_ex.S:181
9fc01be8:	01334025 	or	t0,t1,s3
/home/chooaa/cs_lab/cpu_ex/inst/n26_jalr_ds_ex.S:182
9fc01bec:	ae280000 	sw	t0,0(s1)
/home/chooaa/cs_lab/cpu_ex/inst/n26_jalr_ds_ex.S:183
9fc01bf0:	02c0f821 	move	ra,s6
/home/chooaa/cs_lab/cpu_ex/inst/n26_jalr_ds_ex.S:184
9fc01bf4:	03e00008 	jr	ra
/home/chooaa/cs_lab/cpu_ex/inst/n26_jalr_ds_ex.S:185
9fc01bf8:	00000000 	nop
9fc01bfc:	00000000 	nop

9fc01c00 <n17_bgez_ds_ex_test>:
/home/chooaa/cs_lab/cpu_ex/inst/n17_bgez_ds_ex.S:7
9fc01c00:	26100001 	addiu	s0,s0,1
/home/chooaa/cs_lab/cpu_ex/inst/n17_bgez_ds_ex.S:8
9fc01c04:	3c08800d 	lui	t0,0x800d
/home/chooaa/cs_lab/cpu_ex/inst/n17_bgez_ds_ex.S:10
9fc01c08:	40805800 	mtc0	zero,c0_compare
/home/chooaa/cs_lab/cpu_ex/inst/n17_bgez_ds_ex.S:11
9fc01c0c:	3c170040 	lui	s7,0x40
/home/chooaa/cs_lab/cpu_ex/inst/n17_bgez_ds_ex.S:12
9fc01c10:	40976000 	mtc0	s7,c0_status
/home/chooaa/cs_lab/cpu_ex/inst/n17_bgez_ds_ex.S:13
9fc01c14:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n17_bgez_ds_ex.S:16
9fc01c18:	24120001 	li	s2,1
/home/chooaa/cs_lab/cpu_ex/inst/n17_bgez_ds_ex.S:17
9fc01c1c:	3c170001 	lui	s7,0x1
/home/chooaa/cs_lab/cpu_ex/inst/n17_bgez_ds_ex.S:18
9fc01c20:	ad120000 	sw	s2,0(t0)
/home/chooaa/cs_lab/cpu_ex/inst/n17_bgez_ds_ex.S:19
9fc01c24:	3c149fc0 	lui	s4,0x9fc0
9fc01c28:	26941c2c 	addiu	s4,s4,7212
/home/chooaa/cs_lab/cpu_ex/inst/n17_bgez_ds_ex.S:20
9fc01c2c:	040100af 	b	9fc01eec <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n17_bgez_ds_ex.S:21
9fc01c30:	0000000c 	syscall
/home/chooaa/cs_lab/cpu_ex/inst/n17_bgez_ds_ex.S:22
9fc01c34:	165700ad 	bne	s2,s7,9fc01eec <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n17_bgez_ds_ex.S:23
9fc01c38:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n17_bgez_ds_ex.S:24
9fc01c3c:	24120001 	li	s2,1
/home/chooaa/cs_lab/cpu_ex/inst/n17_bgez_ds_ex.S:25
9fc01c40:	3c149fc0 	lui	s4,0x9fc0
9fc01c44:	26941c48 	addiu	s4,s4,7240
/home/chooaa/cs_lab/cpu_ex/inst/n17_bgez_ds_ex.S:26
9fc01c48:	050100a8 	bgez	t0,9fc01eec <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n17_bgez_ds_ex.S:27
9fc01c4c:	0000000c 	syscall
/home/chooaa/cs_lab/cpu_ex/inst/n17_bgez_ds_ex.S:28
9fc01c50:	165700a6 	bne	s2,s7,9fc01eec <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n17_bgez_ds_ex.S:29
9fc01c54:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n17_bgez_ds_ex.S:31
9fc01c58:	24120002 	li	s2,2
/home/chooaa/cs_lab/cpu_ex/inst/n17_bgez_ds_ex.S:32
9fc01c5c:	3c170002 	lui	s7,0x2
/home/chooaa/cs_lab/cpu_ex/inst/n17_bgez_ds_ex.S:33
9fc01c60:	ad120000 	sw	s2,0(t0)
/home/chooaa/cs_lab/cpu_ex/inst/n17_bgez_ds_ex.S:34
9fc01c64:	3c149fc0 	lui	s4,0x9fc0
9fc01c68:	26941c6c 	addiu	s4,s4,7276
/home/chooaa/cs_lab/cpu_ex/inst/n17_bgez_ds_ex.S:35
9fc01c6c:	0401009f 	b	9fc01eec <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n17_bgez_ds_ex.S:36
9fc01c70:	0000000d 	break
/home/chooaa/cs_lab/cpu_ex/inst/n17_bgez_ds_ex.S:37
9fc01c74:	1657009d 	bne	s2,s7,9fc01eec <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n17_bgez_ds_ex.S:38
9fc01c78:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n17_bgez_ds_ex.S:39
9fc01c7c:	24120002 	li	s2,2
/home/chooaa/cs_lab/cpu_ex/inst/n17_bgez_ds_ex.S:40
9fc01c80:	3c149fc0 	lui	s4,0x9fc0
9fc01c84:	26941c88 	addiu	s4,s4,7304
/home/chooaa/cs_lab/cpu_ex/inst/n17_bgez_ds_ex.S:41
9fc01c88:	05010098 	bgez	t0,9fc01eec <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n17_bgez_ds_ex.S:42
9fc01c8c:	0000000d 	break
/home/chooaa/cs_lab/cpu_ex/inst/n17_bgez_ds_ex.S:43
9fc01c90:	16570096 	bne	s2,s7,9fc01eec <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n17_bgez_ds_ex.S:44
9fc01c94:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n17_bgez_ds_ex.S:46
9fc01c98:	24120003 	li	s2,3
/home/chooaa/cs_lab/cpu_ex/inst/n17_bgez_ds_ex.S:47
9fc01c9c:	3c170003 	lui	s7,0x3
/home/chooaa/cs_lab/cpu_ex/inst/n17_bgez_ds_ex.S:48
9fc01ca0:	ad120000 	sw	s2,0(t0)
/home/chooaa/cs_lab/cpu_ex/inst/n17_bgez_ds_ex.S:49
9fc01ca4:	3c149fc0 	lui	s4,0x9fc0
9fc01ca8:	26941cbc 	addiu	s4,s4,7356
/home/chooaa/cs_lab/cpu_ex/inst/n17_bgez_ds_ex.S:50
9fc01cac:	3c04ba03 	lui	a0,0xba03
9fc01cb0:	34844f60 	ori	a0,a0,0x4f60
/home/chooaa/cs_lab/cpu_ex/inst/n17_bgez_ds_ex.S:51
9fc01cb4:	3c05b615 	lui	a1,0xb615
9fc01cb8:	34a5fd67 	ori	a1,a1,0xfd67
/home/chooaa/cs_lab/cpu_ex/inst/n17_bgez_ds_ex.S:52
9fc01cbc:	0401008b 	b	9fc01eec <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n17_bgez_ds_ex.S:53
9fc01cc0:	0085b820 	add	s7,a0,a1
/home/chooaa/cs_lab/cpu_ex/inst/n17_bgez_ds_ex.S:54
9fc01cc4:	16570089 	bne	s2,s7,9fc01eec <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n17_bgez_ds_ex.S:55
9fc01cc8:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n17_bgez_ds_ex.S:56
9fc01ccc:	24120003 	li	s2,3
/home/chooaa/cs_lab/cpu_ex/inst/n17_bgez_ds_ex.S:57
9fc01cd0:	3c149fc0 	lui	s4,0x9fc0
9fc01cd4:	26941cd8 	addiu	s4,s4,7384
/home/chooaa/cs_lab/cpu_ex/inst/n17_bgez_ds_ex.S:58
9fc01cd8:	05010084 	bgez	t0,9fc01eec <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n17_bgez_ds_ex.S:59
9fc01cdc:	0085b820 	add	s7,a0,a1
/home/chooaa/cs_lab/cpu_ex/inst/n17_bgez_ds_ex.S:60
9fc01ce0:	ad170000 	sw	s7,0(t0)
/home/chooaa/cs_lab/cpu_ex/inst/n17_bgez_ds_ex.S:61
9fc01ce4:	16570081 	bne	s2,s7,9fc01eec <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n17_bgez_ds_ex.S:62
9fc01ce8:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n17_bgez_ds_ex.S:63
9fc01cec:	24120003 	li	s2,3
/home/chooaa/cs_lab/cpu_ex/inst/n17_bgez_ds_ex.S:64
9fc01cf0:	ad120000 	sw	s2,0(t0)
/home/chooaa/cs_lab/cpu_ex/inst/n17_bgez_ds_ex.S:65
9fc01cf4:	3c149fc0 	lui	s4,0x9fc0
9fc01cf8:	26941d04 	addiu	s4,s4,7428
/home/chooaa/cs_lab/cpu_ex/inst/n17_bgez_ds_ex.S:66
9fc01cfc:	3c047fff 	lui	a0,0x7fff
9fc01d00:	3484c19e 	ori	a0,a0,0xc19e
/home/chooaa/cs_lab/cpu_ex/inst/n17_bgez_ds_ex.S:67
9fc01d04:	04010079 	b	9fc01eec <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n17_bgez_ds_ex.S:68
9fc01d08:	20976512 	addi	s7,a0,25874
/home/chooaa/cs_lab/cpu_ex/inst/n17_bgez_ds_ex.S:69
9fc01d0c:	16570077 	bne	s2,s7,9fc01eec <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n17_bgez_ds_ex.S:70
9fc01d10:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n17_bgez_ds_ex.S:71
9fc01d14:	24120003 	li	s2,3
/home/chooaa/cs_lab/cpu_ex/inst/n17_bgez_ds_ex.S:72
9fc01d18:	3c149fc0 	lui	s4,0x9fc0
9fc01d1c:	26941d20 	addiu	s4,s4,7456
/home/chooaa/cs_lab/cpu_ex/inst/n17_bgez_ds_ex.S:73
9fc01d20:	05010072 	bgez	t0,9fc01eec <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n17_bgez_ds_ex.S:74
9fc01d24:	20976512 	addi	s7,a0,25874
/home/chooaa/cs_lab/cpu_ex/inst/n17_bgez_ds_ex.S:75
9fc01d28:	16570070 	bne	s2,s7,9fc01eec <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n17_bgez_ds_ex.S:76
9fc01d2c:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n17_bgez_ds_ex.S:77
9fc01d30:	24120003 	li	s2,3
/home/chooaa/cs_lab/cpu_ex/inst/n17_bgez_ds_ex.S:78
9fc01d34:	3c149fc0 	lui	s4,0x9fc0
9fc01d38:	26941d4c 	addiu	s4,s4,7500
/home/chooaa/cs_lab/cpu_ex/inst/n17_bgez_ds_ex.S:79
9fc01d3c:	3c04a85e 	lui	a0,0xa85e
9fc01d40:	34847d00 	ori	a0,a0,0x7d00
/home/chooaa/cs_lab/cpu_ex/inst/n17_bgez_ds_ex.S:80
9fc01d44:	3c056b7e 	lui	a1,0x6b7e
9fc01d48:	34a58e36 	ori	a1,a1,0x8e36
/home/chooaa/cs_lab/cpu_ex/inst/n17_bgez_ds_ex.S:81
9fc01d4c:	04010067 	b	9fc01eec <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n17_bgez_ds_ex.S:82
9fc01d50:	0085b822 	sub	s7,a0,a1
/home/chooaa/cs_lab/cpu_ex/inst/n17_bgez_ds_ex.S:83
9fc01d54:	16570065 	bne	s2,s7,9fc01eec <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n17_bgez_ds_ex.S:84
9fc01d58:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n17_bgez_ds_ex.S:85
9fc01d5c:	24120003 	li	s2,3
/home/chooaa/cs_lab/cpu_ex/inst/n17_bgez_ds_ex.S:86
9fc01d60:	3c149fc0 	lui	s4,0x9fc0
9fc01d64:	26941d68 	addiu	s4,s4,7528
/home/chooaa/cs_lab/cpu_ex/inst/n17_bgez_ds_ex.S:87
9fc01d68:	05010060 	bgez	t0,9fc01eec <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n17_bgez_ds_ex.S:88
9fc01d6c:	0085b822 	sub	s7,a0,a1
/home/chooaa/cs_lab/cpu_ex/inst/n17_bgez_ds_ex.S:89
9fc01d70:	1657005e 	bne	s2,s7,9fc01eec <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n17_bgez_ds_ex.S:90
9fc01d74:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n17_bgez_ds_ex.S:92
9fc01d78:	24120004 	li	s2,4
/home/chooaa/cs_lab/cpu_ex/inst/n17_bgez_ds_ex.S:93
9fc01d7c:	3c170004 	lui	s7,0x4
/home/chooaa/cs_lab/cpu_ex/inst/n17_bgez_ds_ex.S:94
9fc01d80:	ad120000 	sw	s2,0(t0)
/home/chooaa/cs_lab/cpu_ex/inst/n17_bgez_ds_ex.S:95
9fc01d84:	3c149fc0 	lui	s4,0x9fc0
9fc01d88:	26941d8c 	addiu	s4,s4,7564
/home/chooaa/cs_lab/cpu_ex/inst/n17_bgez_ds_ex.S:96
9fc01d8c:	04010057 	b	9fc01eec <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n17_bgez_ds_ex.S:97
9fc01d90:	8d170002 	lw	s7,2(t0)
/home/chooaa/cs_lab/cpu_ex/inst/n17_bgez_ds_ex.S:98
9fc01d94:	16570055 	bne	s2,s7,9fc01eec <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n17_bgez_ds_ex.S:99
9fc01d98:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n17_bgez_ds_ex.S:100
9fc01d9c:	24120004 	li	s2,4
/home/chooaa/cs_lab/cpu_ex/inst/n17_bgez_ds_ex.S:101
9fc01da0:	3c149fc0 	lui	s4,0x9fc0
9fc01da4:	26941da8 	addiu	s4,s4,7592
/home/chooaa/cs_lab/cpu_ex/inst/n17_bgez_ds_ex.S:102
9fc01da8:	05010050 	bgez	t0,9fc01eec <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n17_bgez_ds_ex.S:103
9fc01dac:	8d170002 	lw	s7,2(t0)
/home/chooaa/cs_lab/cpu_ex/inst/n17_bgez_ds_ex.S:104
9fc01db0:	1657004e 	bne	s2,s7,9fc01eec <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n17_bgez_ds_ex.S:105
9fc01db4:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n17_bgez_ds_ex.S:106
9fc01db8:	24120004 	li	s2,4
/home/chooaa/cs_lab/cpu_ex/inst/n17_bgez_ds_ex.S:107
9fc01dbc:	3c149fc0 	lui	s4,0x9fc0
9fc01dc0:	26941dc4 	addiu	s4,s4,7620
/home/chooaa/cs_lab/cpu_ex/inst/n17_bgez_ds_ex.S:108
9fc01dc4:	04010049 	b	9fc01eec <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n17_bgez_ds_ex.S:109
9fc01dc8:	85170001 	lh	s7,1(t0)
/home/chooaa/cs_lab/cpu_ex/inst/n17_bgez_ds_ex.S:110
9fc01dcc:	02f2001b 	divu	zero,s7,s2
/home/chooaa/cs_lab/cpu_ex/inst/n17_bgez_ds_ex.S:111
9fc01dd0:	16570046 	bne	s2,s7,9fc01eec <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n17_bgez_ds_ex.S:112
9fc01dd4:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n17_bgez_ds_ex.S:113
9fc01dd8:	24120004 	li	s2,4
/home/chooaa/cs_lab/cpu_ex/inst/n17_bgez_ds_ex.S:114
9fc01ddc:	3c149fc0 	lui	s4,0x9fc0
9fc01de0:	26941de4 	addiu	s4,s4,7652
/home/chooaa/cs_lab/cpu_ex/inst/n17_bgez_ds_ex.S:115
9fc01de4:	05010041 	bgez	t0,9fc01eec <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n17_bgez_ds_ex.S:116
9fc01de8:	85170001 	lh	s7,1(t0)
/home/chooaa/cs_lab/cpu_ex/inst/n17_bgez_ds_ex.S:117
9fc01dec:	1657003f 	bne	s2,s7,9fc01eec <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n17_bgez_ds_ex.S:118
9fc01df0:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n17_bgez_ds_ex.S:119
9fc01df4:	3c149fc0 	lui	s4,0x9fc0
9fc01df8:	26941dfc 	addiu	s4,s4,7676
/home/chooaa/cs_lab/cpu_ex/inst/n17_bgez_ds_ex.S:120
9fc01dfc:	0401003b 	b	9fc01eec <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n17_bgez_ds_ex.S:121
9fc01e00:	95170003 	lhu	s7,3(t0)
/home/chooaa/cs_lab/cpu_ex/inst/n17_bgez_ds_ex.S:122
9fc01e04:	16570039 	bne	s2,s7,9fc01eec <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n17_bgez_ds_ex.S:123
9fc01e08:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n17_bgez_ds_ex.S:124
9fc01e0c:	24120004 	li	s2,4
/home/chooaa/cs_lab/cpu_ex/inst/n17_bgez_ds_ex.S:125
9fc01e10:	3c149fc0 	lui	s4,0x9fc0
9fc01e14:	26941e18 	addiu	s4,s4,7704
/home/chooaa/cs_lab/cpu_ex/inst/n17_bgez_ds_ex.S:126
9fc01e18:	05010034 	bgez	t0,9fc01eec <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n17_bgez_ds_ex.S:127
9fc01e1c:	95170003 	lhu	s7,3(t0)
/home/chooaa/cs_lab/cpu_ex/inst/n17_bgez_ds_ex.S:128
9fc01e20:	16570032 	bne	s2,s7,9fc01eec <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n17_bgez_ds_ex.S:129
9fc01e24:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n17_bgez_ds_ex.S:131
9fc01e28:	24120005 	li	s2,5
/home/chooaa/cs_lab/cpu_ex/inst/n17_bgez_ds_ex.S:132
9fc01e2c:	3c170005 	lui	s7,0x5
/home/chooaa/cs_lab/cpu_ex/inst/n17_bgez_ds_ex.S:133
9fc01e30:	ad120000 	sw	s2,0(t0)
/home/chooaa/cs_lab/cpu_ex/inst/n17_bgez_ds_ex.S:134
9fc01e34:	3c149fc0 	lui	s4,0x9fc0
9fc01e38:	26941e3c 	addiu	s4,s4,7740
/home/chooaa/cs_lab/cpu_ex/inst/n17_bgez_ds_ex.S:135
9fc01e3c:	0401002b 	b	9fc01eec <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n17_bgez_ds_ex.S:136
9fc01e40:	ad170002 	sw	s7,2(t0)
/home/chooaa/cs_lab/cpu_ex/inst/n17_bgez_ds_ex.S:137
9fc01e44:	16570029 	bne	s2,s7,9fc01eec <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n17_bgez_ds_ex.S:138
9fc01e48:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n17_bgez_ds_ex.S:139
9fc01e4c:	24120005 	li	s2,5
/home/chooaa/cs_lab/cpu_ex/inst/n17_bgez_ds_ex.S:140
9fc01e50:	3c149fc0 	lui	s4,0x9fc0
9fc01e54:	26941e58 	addiu	s4,s4,7768
/home/chooaa/cs_lab/cpu_ex/inst/n17_bgez_ds_ex.S:141
9fc01e58:	05010024 	bgez	t0,9fc01eec <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n17_bgez_ds_ex.S:142
9fc01e5c:	ad170002 	sw	s7,2(t0)
/home/chooaa/cs_lab/cpu_ex/inst/n17_bgez_ds_ex.S:143
9fc01e60:	16570022 	bne	s2,s7,9fc01eec <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n17_bgez_ds_ex.S:144
9fc01e64:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n17_bgez_ds_ex.S:145
9fc01e68:	24120005 	li	s2,5
/home/chooaa/cs_lab/cpu_ex/inst/n17_bgez_ds_ex.S:146
9fc01e6c:	3c149fc0 	lui	s4,0x9fc0
9fc01e70:	26941e74 	addiu	s4,s4,7796
/home/chooaa/cs_lab/cpu_ex/inst/n17_bgez_ds_ex.S:147
9fc01e74:	0401001d 	b	9fc01eec <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n17_bgez_ds_ex.S:148
9fc01e78:	a5170001 	sh	s7,1(t0)
/home/chooaa/cs_lab/cpu_ex/inst/n17_bgez_ds_ex.S:149
9fc01e7c:	1657001b 	bne	s2,s7,9fc01eec <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n17_bgez_ds_ex.S:150
9fc01e80:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n17_bgez_ds_ex.S:151
9fc01e84:	24120005 	li	s2,5
/home/chooaa/cs_lab/cpu_ex/inst/n17_bgez_ds_ex.S:152
9fc01e88:	3c149fc0 	lui	s4,0x9fc0
9fc01e8c:	26941e90 	addiu	s4,s4,7824
/home/chooaa/cs_lab/cpu_ex/inst/n17_bgez_ds_ex.S:153
9fc01e90:	05010016 	bgez	t0,9fc01eec <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n17_bgez_ds_ex.S:154
9fc01e94:	a5170001 	sh	s7,1(t0)
/home/chooaa/cs_lab/cpu_ex/inst/n17_bgez_ds_ex.S:155
9fc01e98:	16570014 	bne	s2,s7,9fc01eec <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n17_bgez_ds_ex.S:156
9fc01e9c:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n17_bgez_ds_ex.S:159
9fc01ea0:	24120007 	li	s2,7
/home/chooaa/cs_lab/cpu_ex/inst/n17_bgez_ds_ex.S:160
9fc01ea4:	3c170007 	lui	s7,0x7
/home/chooaa/cs_lab/cpu_ex/inst/n17_bgez_ds_ex.S:161
9fc01ea8:	ad120000 	sw	s2,0(t0)
/home/chooaa/cs_lab/cpu_ex/inst/n17_bgez_ds_ex.S:162
9fc01eac:	3c149fc0 	lui	s4,0x9fc0
9fc01eb0:	26941eb4 	addiu	s4,s4,7860
/home/chooaa/cs_lab/cpu_ex/inst/n17_bgez_ds_ex.S:163
9fc01eb4:	0401000d 	b	9fc01eec <inst_error>
9fc01eb8:	9e3c56aa 	0x9e3c56aa
/home/chooaa/cs_lab/cpu_ex/inst/n17_bgez_ds_ex.S:165
9fc01ebc:	02f20018 	mult	s7,s2
/home/chooaa/cs_lab/cpu_ex/inst/n17_bgez_ds_ex.S:166
9fc01ec0:	1657000a 	bne	s2,s7,9fc01eec <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n17_bgez_ds_ex.S:167
9fc01ec4:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n17_bgez_ds_ex.S:168
9fc01ec8:	24120007 	li	s2,7
/home/chooaa/cs_lab/cpu_ex/inst/n17_bgez_ds_ex.S:169
9fc01ecc:	3c149fc0 	lui	s4,0x9fc0
9fc01ed0:	26941ed8 	addiu	s4,s4,7896
/home/chooaa/cs_lab/cpu_ex/inst/n17_bgez_ds_ex.S:170
9fc01ed4:	02f20018 	mult	s7,s2
/home/chooaa/cs_lab/cpu_ex/inst/n17_bgez_ds_ex.S:171
9fc01ed8:	05010004 	bgez	t0,9fc01eec <inst_error>
9fc01edc:	ec1ba960 	swc3	$27,-22176(zero)
/home/chooaa/cs_lab/cpu_ex/inst/n17_bgez_ds_ex.S:173
9fc01ee0:	16570002 	bne	s2,s7,9fc01eec <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n17_bgez_ds_ex.S:174
9fc01ee4:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n17_bgez_ds_ex.S:176
9fc01ee8:	26730001 	addiu	s3,s3,1

9fc01eec <inst_error>:
/home/chooaa/cs_lab/cpu_ex/inst/n17_bgez_ds_ex.S:179
9fc01eec:	00104e00 	sll	t1,s0,0x18
/home/chooaa/cs_lab/cpu_ex/inst/n17_bgez_ds_ex.S:180
9fc01ef0:	01334025 	or	t0,t1,s3
/home/chooaa/cs_lab/cpu_ex/inst/n17_bgez_ds_ex.S:181
9fc01ef4:	ae280000 	sw	t0,0(s1)
/home/chooaa/cs_lab/cpu_ex/inst/n17_bgez_ds_ex.S:182
9fc01ef8:	03e00008 	jr	ra
/home/chooaa/cs_lab/cpu_ex/inst/n17_bgez_ds_ex.S:183
9fc01efc:	00000000 	nop

9fc01f00 <n2_break_ex_test>:
/home/chooaa/cs_lab/cpu_ex/inst/n2_break_ex.S:7
9fc01f00:	26100001 	addiu	s0,s0,1
/home/chooaa/cs_lab/cpu_ex/inst/n2_break_ex.S:8
9fc01f04:	3c08800d 	lui	t0,0x800d
/home/chooaa/cs_lab/cpu_ex/inst/n2_break_ex.S:9
9fc01f08:	24120002 	li	s2,2
/home/chooaa/cs_lab/cpu_ex/inst/n2_break_ex.S:10
9fc01f0c:	ad120000 	sw	s2,0(t0)
/home/chooaa/cs_lab/cpu_ex/inst/n2_break_ex.S:12
9fc01f10:	40805800 	mtc0	zero,c0_compare
/home/chooaa/cs_lab/cpu_ex/inst/n2_break_ex.S:13
9fc01f14:	3c170040 	lui	s7,0x40
/home/chooaa/cs_lab/cpu_ex/inst/n2_break_ex.S:14
9fc01f18:	40976000 	mtc0	s7,c0_status
/home/chooaa/cs_lab/cpu_ex/inst/n2_break_ex.S:15
9fc01f1c:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n2_break_ex.S:16
9fc01f20:	3c170002 	lui	s7,0x2
/home/chooaa/cs_lab/cpu_ex/inst/n2_break_ex.S:19
9fc01f24:	3c149fc0 	lui	s4,0x9fc0
9fc01f28:	26941f2c 	addiu	s4,s4,7980

9fc01f2c <break_pc1>:
/home/chooaa/cs_lab/cpu_ex/inst/n2_break_ex.S:21
9fc01f2c:	0000000d 	break
/home/chooaa/cs_lab/cpu_ex/inst/n2_break_ex.S:22
9fc01f30:	1657003c 	bne	s2,s7,9fc02024 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n2_break_ex.S:23
9fc01f34:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n2_break_ex.S:25
9fc01f38:	24120002 	li	s2,2
/home/chooaa/cs_lab/cpu_ex/inst/n2_break_ex.S:26
9fc01f3c:	3c149fc0 	lui	s4,0x9fc0
9fc01f40:	26941f4c 	addiu	s4,s4,8012
/home/chooaa/cs_lab/cpu_ex/inst/n2_break_ex.S:27
9fc01f44:	ad080004 	sw	t0,4(t0)
/home/chooaa/cs_lab/cpu_ex/inst/n2_break_ex.S:28
9fc01f48:	ad140004 	sw	s4,4(t0)

9fc01f4c <break_pc2>:
/home/chooaa/cs_lab/cpu_ex/inst/n2_break_ex.S:30
9fc01f4c:	0000000d 	break
/home/chooaa/cs_lab/cpu_ex/inst/n2_break_ex.S:31
9fc01f50:	ad140000 	sw	s4,0(t0)
/home/chooaa/cs_lab/cpu_ex/inst/n2_break_ex.S:32
9fc01f54:	8d090004 	lw	t1,4(t0)
/home/chooaa/cs_lab/cpu_ex/inst/n2_break_ex.S:33
9fc01f58:	15340032 	bne	t1,s4,9fc02024 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n2_break_ex.S:34
9fc01f5c:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n2_break_ex.S:35
9fc01f60:	16570030 	bne	s2,s7,9fc02024 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n2_break_ex.S:36
9fc01f64:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n2_break_ex.S:37
9fc01f68:	24120002 	li	s2,2
/home/chooaa/cs_lab/cpu_ex/inst/n2_break_ex.S:38
9fc01f6c:	ad120000 	sw	s2,0(t0)
/home/chooaa/cs_lab/cpu_ex/inst/n2_break_ex.S:40
9fc01f70:	24120002 	li	s2,2
/home/chooaa/cs_lab/cpu_ex/inst/n2_break_ex.S:41
9fc01f74:	3c149fc0 	lui	s4,0x9fc0
9fc01f78:	26941f84 	addiu	s4,s4,8068
/home/chooaa/cs_lab/cpu_ex/inst/n2_break_ex.S:42
9fc01f7c:	01000011 	mthi	t0
/home/chooaa/cs_lab/cpu_ex/inst/n2_break_ex.S:43
9fc01f80:	0110001b 	divu	zero,t0,s0

9fc01f84 <break_pc3>:
/home/chooaa/cs_lab/cpu_ex/inst/n2_break_ex.S:45
9fc01f84:	0000000d 	break
/home/chooaa/cs_lab/cpu_ex/inst/n2_break_ex.S:46
9fc01f88:	00004810 	mfhi	t1
/home/chooaa/cs_lab/cpu_ex/inst/n2_break_ex.S:47
9fc01f8c:	11280025 	beq	t1,t0,9fc02024 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n2_break_ex.S:48
9fc01f90:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n2_break_ex.S:49
9fc01f94:	16570023 	bne	s2,s7,9fc02024 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n2_break_ex.S:50
9fc01f98:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n2_break_ex.S:52
9fc01f9c:	24120002 	li	s2,2
/home/chooaa/cs_lab/cpu_ex/inst/n2_break_ex.S:53
9fc01fa0:	3c149fc0 	lui	s4,0x9fc0
9fc01fa4:	26941fa8 	addiu	s4,s4,8104

9fc01fa8 <break_pc4>:
/home/chooaa/cs_lab/cpu_ex/inst/n2_break_ex.S:55
9fc01fa8:	0000000d 	break
/home/chooaa/cs_lab/cpu_ex/inst/n2_break_ex.S:56
9fc01fac:	0208001b 	divu	zero,s0,t0
/home/chooaa/cs_lab/cpu_ex/inst/n2_break_ex.S:57
9fc01fb0:	1657001c 	bne	s2,s7,9fc02024 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n2_break_ex.S:58
9fc01fb4:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n2_break_ex.S:60
9fc01fb8:	24120002 	li	s2,2
/home/chooaa/cs_lab/cpu_ex/inst/n2_break_ex.S:61
9fc01fbc:	3c149fc0 	lui	s4,0x9fc0
9fc01fc0:	26941fcc 	addiu	s4,s4,8140
/home/chooaa/cs_lab/cpu_ex/inst/n2_break_ex.S:62
9fc01fc4:	01000013 	mtlo	t0
/home/chooaa/cs_lab/cpu_ex/inst/n2_break_ex.S:63
9fc01fc8:	01100019 	multu	t0,s0

9fc01fcc <break_pc5>:
/home/chooaa/cs_lab/cpu_ex/inst/n2_break_ex.S:65
9fc01fcc:	0000000d 	break
/home/chooaa/cs_lab/cpu_ex/inst/n2_break_ex.S:66
9fc01fd0:	00004810 	mfhi	t1
/home/chooaa/cs_lab/cpu_ex/inst/n2_break_ex.S:67
9fc01fd4:	11280013 	beq	t1,t0,9fc02024 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n2_break_ex.S:68
9fc01fd8:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n2_break_ex.S:69
9fc01fdc:	16570011 	bne	s2,s7,9fc02024 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n2_break_ex.S:70
9fc01fe0:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n2_break_ex.S:72
9fc01fe4:	24120002 	li	s2,2
/home/chooaa/cs_lab/cpu_ex/inst/n2_break_ex.S:73
9fc01fe8:	3c149fc0 	lui	s4,0x9fc0
9fc01fec:	26941ff0 	addiu	s4,s4,8176

9fc01ff0 <break_pc6>:
/home/chooaa/cs_lab/cpu_ex/inst/n2_break_ex.S:75
9fc01ff0:	0000000d 	break
/home/chooaa/cs_lab/cpu_ex/inst/n2_break_ex.S:76
9fc01ff4:	01120019 	multu	t0,s2
/home/chooaa/cs_lab/cpu_ex/inst/n2_break_ex.S:77
9fc01ff8:	1657000a 	bne	s2,s7,9fc02024 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n2_break_ex.S:78
9fc01ffc:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n2_break_ex.S:80
9fc02000:	24120002 	li	s2,2
/home/chooaa/cs_lab/cpu_ex/inst/n2_break_ex.S:81
9fc02004:	3c149fc0 	lui	s4,0x9fc0
9fc02008:	26942010 	addiu	s4,s4,8208
/home/chooaa/cs_lab/cpu_ex/inst/n2_break_ex.S:82
9fc0200c:	40927000 	mtc0	s2,c0_epc

9fc02010 <break_pc7>:
/home/chooaa/cs_lab/cpu_ex/inst/n2_break_ex.S:84
9fc02010:	0000000d 	break
/home/chooaa/cs_lab/cpu_ex/inst/n2_break_ex.S:85
9fc02014:	40887000 	mtc0	t0,c0_epc
/home/chooaa/cs_lab/cpu_ex/inst/n2_break_ex.S:86
9fc02018:	16570002 	bne	s2,s7,9fc02024 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n2_break_ex.S:87
9fc0201c:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n2_break_ex.S:89
9fc02020:	26730001 	addiu	s3,s3,1

9fc02024 <inst_error>:
/home/chooaa/cs_lab/cpu_ex/inst/n2_break_ex.S:92
9fc02024:	00104e00 	sll	t1,s0,0x18
/home/chooaa/cs_lab/cpu_ex/inst/n2_break_ex.S:93
9fc02028:	01334025 	or	t0,t1,s3
/home/chooaa/cs_lab/cpu_ex/inst/n2_break_ex.S:94
9fc0202c:	ae280000 	sw	t0,0(s1)
/home/chooaa/cs_lab/cpu_ex/inst/n2_break_ex.S:95
9fc02030:	03e00008 	jr	ra
/home/chooaa/cs_lab/cpu_ex/inst/n2_break_ex.S:96
9fc02034:	00000000 	nop
	...

9fc02040 <n8_lhu_adel_ex_test>:
/home/chooaa/cs_lab/cpu_ex/inst/n8_lhu_adel_ex.S:7
9fc02040:	26100001 	addiu	s0,s0,1
/home/chooaa/cs_lab/cpu_ex/inst/n8_lhu_adel_ex.S:8
9fc02044:	3c08800d 	lui	t0,0x800d
/home/chooaa/cs_lab/cpu_ex/inst/n8_lhu_adel_ex.S:9
9fc02048:	24120004 	li	s2,4
/home/chooaa/cs_lab/cpu_ex/inst/n8_lhu_adel_ex.S:10
9fc0204c:	ad120000 	sw	s2,0(t0)
/home/chooaa/cs_lab/cpu_ex/inst/n8_lhu_adel_ex.S:12
9fc02050:	40805800 	mtc0	zero,c0_compare
/home/chooaa/cs_lab/cpu_ex/inst/n8_lhu_adel_ex.S:13
9fc02054:	3c170040 	lui	s7,0x40
/home/chooaa/cs_lab/cpu_ex/inst/n8_lhu_adel_ex.S:14
9fc02058:	40976000 	mtc0	s7,c0_status
/home/chooaa/cs_lab/cpu_ex/inst/n8_lhu_adel_ex.S:15
9fc0205c:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n8_lhu_adel_ex.S:16
9fc02060:	3c170004 	lui	s7,0x4
/home/chooaa/cs_lab/cpu_ex/inst/n8_lhu_adel_ex.S:19
9fc02064:	3c028003 	lui	v0,0x8003
9fc02068:	34420514 	ori	v0,v0,0x514
9fc0206c:	3c038003 	lui	v1,0x8003
9fc02070:	34630514 	ori	v1,v1,0x514
9fc02074:	3c04800d 	lui	a0,0x800d
9fc02078:	34840514 	ori	a0,a0,0x514
9fc0207c:	3c050dc5 	lui	a1,0xdc5
9fc02080:	34a5e542 	ori	a1,a1,0xe542
9fc02084:	2487b239 	addiu	a3,a0,-19911
9fc02088:	3c010001 	lui	at,0x1
9fc0208c:	00240821 	addu	at,at,a0
9fc02090:	ac25b238 	sw	a1,-19912(at)
/home/chooaa/cs_lab/cpu_ex/inst/n8_lhu_adel_ex.S:20
9fc02094:	3c149fc0 	lui	s4,0x9fc0
9fc02098:	2694209c 	addiu	s4,s4,8348
/home/chooaa/cs_lab/cpu_ex/inst/n8_lhu_adel_ex.S:21
9fc0209c:	9482b239 	lhu	v0,-19911(a0)
/home/chooaa/cs_lab/cpu_ex/inst/n8_lhu_adel_ex.S:22
9fc020a0:	1657009f 	bne	s2,s7,9fc02320 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n8_lhu_adel_ex.S:23
9fc020a4:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n8_lhu_adel_ex.S:24
9fc020a8:	1443009d 	bne	v0,v1,9fc02320 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n8_lhu_adel_ex.S:25
9fc020ac:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n8_lhu_adel_ex.S:26
9fc020b0:	40164000 	mfc0	s6,c0_badvaddr
/home/chooaa/cs_lab/cpu_ex/inst/n8_lhu_adel_ex.S:27
9fc020b4:	14f6009a 	bne	a3,s6,9fc02320 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n8_lhu_adel_ex.S:28
9fc020b8:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n8_lhu_adel_ex.S:30
9fc020bc:	24120004 	li	s2,4
/home/chooaa/cs_lab/cpu_ex/inst/n8_lhu_adel_ex.S:31
9fc020c0:	3c028003 	lui	v0,0x8003
9fc020c4:	34422fbc 	ori	v0,v0,0x2fbc
9fc020c8:	3c038003 	lui	v1,0x8003
9fc020cc:	34632fbc 	ori	v1,v1,0x2fbc
9fc020d0:	3c04800d 	lui	a0,0x800d
9fc020d4:	34842fbc 	ori	a0,a0,0x2fbc
9fc020d8:	3c05f781 	lui	a1,0xf781
9fc020dc:	34a52ae2 	ori	a1,a1,0x2ae2
9fc020e0:	24879c35 	addiu	a3,a0,-25547
9fc020e4:	3c010001 	lui	at,0x1
9fc020e8:	00240821 	addu	at,at,a0
9fc020ec:	ac259c34 	sw	a1,-25548(at)
/home/chooaa/cs_lab/cpu_ex/inst/n8_lhu_adel_ex.S:32
9fc020f0:	3c149fc0 	lui	s4,0x9fc0
9fc020f4:	26942100 	addiu	s4,s4,8448
/home/chooaa/cs_lab/cpu_ex/inst/n8_lhu_adel_ex.S:33
9fc020f8:	ad080004 	sw	t0,4(t0)
/home/chooaa/cs_lab/cpu_ex/inst/n8_lhu_adel_ex.S:34
9fc020fc:	ad140004 	sw	s4,4(t0)
/home/chooaa/cs_lab/cpu_ex/inst/n8_lhu_adel_ex.S:35
9fc02100:	94829c35 	lhu	v0,-25547(a0)
/home/chooaa/cs_lab/cpu_ex/inst/n8_lhu_adel_ex.S:36
9fc02104:	ad140000 	sw	s4,0(t0)
/home/chooaa/cs_lab/cpu_ex/inst/n8_lhu_adel_ex.S:37
9fc02108:	8d090004 	lw	t1,4(t0)
/home/chooaa/cs_lab/cpu_ex/inst/n8_lhu_adel_ex.S:38
9fc0210c:	15340084 	bne	t1,s4,9fc02320 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n8_lhu_adel_ex.S:39
9fc02110:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n8_lhu_adel_ex.S:40
9fc02114:	16570082 	bne	s2,s7,9fc02320 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n8_lhu_adel_ex.S:41
9fc02118:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n8_lhu_adel_ex.S:42
9fc0211c:	14430080 	bne	v0,v1,9fc02320 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n8_lhu_adel_ex.S:43
9fc02120:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n8_lhu_adel_ex.S:44
9fc02124:	40164000 	mfc0	s6,c0_badvaddr
/home/chooaa/cs_lab/cpu_ex/inst/n8_lhu_adel_ex.S:45
9fc02128:	14f6007d 	bne	a3,s6,9fc02320 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n8_lhu_adel_ex.S:46
9fc0212c:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n8_lhu_adel_ex.S:47
9fc02130:	24120004 	li	s2,4
/home/chooaa/cs_lab/cpu_ex/inst/n8_lhu_adel_ex.S:48
9fc02134:	ad120000 	sw	s2,0(t0)
/home/chooaa/cs_lab/cpu_ex/inst/n8_lhu_adel_ex.S:50
9fc02138:	24120004 	li	s2,4
/home/chooaa/cs_lab/cpu_ex/inst/n8_lhu_adel_ex.S:51
9fc0213c:	3c029134 	lui	v0,0x9134
9fc02140:	3442bbd0 	ori	v0,v0,0xbbd0
9fc02144:	3c039134 	lui	v1,0x9134
9fc02148:	3463bbd0 	ori	v1,v1,0xbbd0
9fc0214c:	3c04800d 	lui	a0,0x800d
9fc02150:	34847fa6 	ori	a0,a0,0x7fa6
9fc02154:	3c059ef6 	lui	a1,0x9ef6
9fc02158:	34a55910 	ori	a1,a1,0x5910
9fc0215c:	2487537f 	addiu	a3,a0,21375
9fc02160:	ac85537e 	sw	a1,21374(a0)
/home/chooaa/cs_lab/cpu_ex/inst/n8_lhu_adel_ex.S:52
9fc02164:	3c149fc0 	lui	s4,0x9fc0
9fc02168:	26942174 	addiu	s4,s4,8564
/home/chooaa/cs_lab/cpu_ex/inst/n8_lhu_adel_ex.S:53
9fc0216c:	01000011 	mthi	t0
/home/chooaa/cs_lab/cpu_ex/inst/n8_lhu_adel_ex.S:54
9fc02170:	0110001b 	divu	zero,t0,s0
/home/chooaa/cs_lab/cpu_ex/inst/n8_lhu_adel_ex.S:55
9fc02174:	9482537f 	lhu	v0,21375(a0)
/home/chooaa/cs_lab/cpu_ex/inst/n8_lhu_adel_ex.S:56
9fc02178:	00004810 	mfhi	t1
/home/chooaa/cs_lab/cpu_ex/inst/n8_lhu_adel_ex.S:57
9fc0217c:	11280068 	beq	t1,t0,9fc02320 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n8_lhu_adel_ex.S:58
9fc02180:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n8_lhu_adel_ex.S:59
9fc02184:	16570066 	bne	s2,s7,9fc02320 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n8_lhu_adel_ex.S:60
9fc02188:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n8_lhu_adel_ex.S:61
9fc0218c:	14430064 	bne	v0,v1,9fc02320 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n8_lhu_adel_ex.S:62
9fc02190:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n8_lhu_adel_ex.S:63
9fc02194:	40164000 	mfc0	s6,c0_badvaddr
/home/chooaa/cs_lab/cpu_ex/inst/n8_lhu_adel_ex.S:64
9fc02198:	14f60061 	bne	a3,s6,9fc02320 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n8_lhu_adel_ex.S:65
9fc0219c:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n8_lhu_adel_ex.S:67
9fc021a0:	24120004 	li	s2,4
/home/chooaa/cs_lab/cpu_ex/inst/n8_lhu_adel_ex.S:68
9fc021a4:	3c02fe29 	lui	v0,0xfe29
9fc021a8:	3442b934 	ori	v0,v0,0xb934
9fc021ac:	3c03fe29 	lui	v1,0xfe29
9fc021b0:	3463b934 	ori	v1,v1,0xb934
9fc021b4:	3c04800d 	lui	a0,0x800d
9fc021b8:	3484628c 	ori	a0,a0,0x628c
9fc021bc:	3c05a15a 	lui	a1,0xa15a
9fc021c0:	34a50146 	ori	a1,a1,0x146
9fc021c4:	248756cf 	addiu	a3,a0,22223
9fc021c8:	ac8556cc 	sw	a1,22220(a0)
/home/chooaa/cs_lab/cpu_ex/inst/n8_lhu_adel_ex.S:69
9fc021cc:	3c149fc0 	lui	s4,0x9fc0
9fc021d0:	269421d4 	addiu	s4,s4,8660
/home/chooaa/cs_lab/cpu_ex/inst/n8_lhu_adel_ex.S:70
9fc021d4:	948256cf 	lhu	v0,22223(a0)
/home/chooaa/cs_lab/cpu_ex/inst/n8_lhu_adel_ex.S:71
9fc021d8:	0208001b 	divu	zero,s0,t0
/home/chooaa/cs_lab/cpu_ex/inst/n8_lhu_adel_ex.S:72
9fc021dc:	16570050 	bne	s2,s7,9fc02320 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n8_lhu_adel_ex.S:73
9fc021e0:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n8_lhu_adel_ex.S:74
9fc021e4:	1443004e 	bne	v0,v1,9fc02320 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n8_lhu_adel_ex.S:75
9fc021e8:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n8_lhu_adel_ex.S:76
9fc021ec:	40164000 	mfc0	s6,c0_badvaddr
/home/chooaa/cs_lab/cpu_ex/inst/n8_lhu_adel_ex.S:77
9fc021f0:	14f6004b 	bne	a3,s6,9fc02320 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n8_lhu_adel_ex.S:78
9fc021f4:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n8_lhu_adel_ex.S:80
9fc021f8:	24120004 	li	s2,4
/home/chooaa/cs_lab/cpu_ex/inst/n8_lhu_adel_ex.S:81
9fc021fc:	3c028003 	lui	v0,0x8003
9fc02200:	344224b4 	ori	v0,v0,0x24b4
9fc02204:	3c038003 	lui	v1,0x8003
9fc02208:	346324b4 	ori	v1,v1,0x24b4
9fc0220c:	3c04800d 	lui	a0,0x800d
9fc02210:	348424b4 	ori	a0,a0,0x24b4
9fc02214:	3c05566d 	lui	a1,0x566d
9fc02218:	34a5adc2 	ori	a1,a1,0xadc2
9fc0221c:	2487d5c3 	addiu	a3,a0,-10813
9fc02220:	3c010001 	lui	at,0x1
9fc02224:	00240821 	addu	at,at,a0
9fc02228:	ac25d5c0 	sw	a1,-10816(at)
/home/chooaa/cs_lab/cpu_ex/inst/n8_lhu_adel_ex.S:82
9fc0222c:	3c149fc0 	lui	s4,0x9fc0
9fc02230:	2694223c 	addiu	s4,s4,8764
/home/chooaa/cs_lab/cpu_ex/inst/n8_lhu_adel_ex.S:83
9fc02234:	01000013 	mtlo	t0
/home/chooaa/cs_lab/cpu_ex/inst/n8_lhu_adel_ex.S:84
9fc02238:	01100019 	multu	t0,s0
/home/chooaa/cs_lab/cpu_ex/inst/n8_lhu_adel_ex.S:85
9fc0223c:	9482d5c3 	lhu	v0,-10813(a0)
/home/chooaa/cs_lab/cpu_ex/inst/n8_lhu_adel_ex.S:86
9fc02240:	00004810 	mfhi	t1
/home/chooaa/cs_lab/cpu_ex/inst/n8_lhu_adel_ex.S:87
9fc02244:	11280036 	beq	t1,t0,9fc02320 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n8_lhu_adel_ex.S:88
9fc02248:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n8_lhu_adel_ex.S:89
9fc0224c:	16570034 	bne	s2,s7,9fc02320 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n8_lhu_adel_ex.S:90
9fc02250:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n8_lhu_adel_ex.S:91
9fc02254:	14430032 	bne	v0,v1,9fc02320 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n8_lhu_adel_ex.S:92
9fc02258:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n8_lhu_adel_ex.S:93
9fc0225c:	40164000 	mfc0	s6,c0_badvaddr
/home/chooaa/cs_lab/cpu_ex/inst/n8_lhu_adel_ex.S:94
9fc02260:	14f6002f 	bne	a3,s6,9fc02320 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n8_lhu_adel_ex.S:95
9fc02264:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n8_lhu_adel_ex.S:97
9fc02268:	24120004 	li	s2,4
/home/chooaa/cs_lab/cpu_ex/inst/n8_lhu_adel_ex.S:98
9fc0226c:	3c0252b9 	lui	v0,0x52b9
9fc02270:	3442c98a 	ori	v0,v0,0xc98a
9fc02274:	3c0352b9 	lui	v1,0x52b9
9fc02278:	3463c98a 	ori	v1,v1,0xc98a
9fc0227c:	3c04800d 	lui	a0,0x800d
9fc02280:	34846024 	ori	a0,a0,0x6024
9fc02284:	3c05038f 	lui	a1,0x38f
9fc02288:	34a518a2 	ori	a1,a1,0x18a2
9fc0228c:	24870765 	addiu	a3,a0,1893
9fc02290:	ac850764 	sw	a1,1892(a0)
/home/chooaa/cs_lab/cpu_ex/inst/n8_lhu_adel_ex.S:99
9fc02294:	3c149fc0 	lui	s4,0x9fc0
9fc02298:	2694229c 	addiu	s4,s4,8860
/home/chooaa/cs_lab/cpu_ex/inst/n8_lhu_adel_ex.S:100
9fc0229c:	94820765 	lhu	v0,1893(a0)
/home/chooaa/cs_lab/cpu_ex/inst/n8_lhu_adel_ex.S:101
9fc022a0:	01120019 	multu	t0,s2
/home/chooaa/cs_lab/cpu_ex/inst/n8_lhu_adel_ex.S:102
9fc022a4:	1657001e 	bne	s2,s7,9fc02320 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n8_lhu_adel_ex.S:103
9fc022a8:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n8_lhu_adel_ex.S:104
9fc022ac:	1443001c 	bne	v0,v1,9fc02320 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n8_lhu_adel_ex.S:105
9fc022b0:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n8_lhu_adel_ex.S:106
9fc022b4:	40164000 	mfc0	s6,c0_badvaddr
/home/chooaa/cs_lab/cpu_ex/inst/n8_lhu_adel_ex.S:107
9fc022b8:	14f60019 	bne	a3,s6,9fc02320 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n8_lhu_adel_ex.S:108
9fc022bc:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n8_lhu_adel_ex.S:110
9fc022c0:	24120004 	li	s2,4
/home/chooaa/cs_lab/cpu_ex/inst/n8_lhu_adel_ex.S:111
9fc022c4:	3c022b77 	lui	v0,0x2b77
9fc022c8:	34421238 	ori	v0,v0,0x1238
9fc022cc:	3c032b77 	lui	v1,0x2b77
9fc022d0:	34631238 	ori	v1,v1,0x1238
9fc022d4:	3c04800d 	lui	a0,0x800d
9fc022d8:	34848294 	ori	a0,a0,0x8294
9fc022dc:	3c05cd7a 	lui	a1,0xcd7a
9fc022e0:	34a5b654 	ori	a1,a1,0xb654
9fc022e4:	248779f5 	addiu	a3,a0,31221
9fc022e8:	ac8579f4 	sw	a1,31220(a0)
/home/chooaa/cs_lab/cpu_ex/inst/n8_lhu_adel_ex.S:112
9fc022ec:	3c149fc0 	lui	s4,0x9fc0
9fc022f0:	269422f8 	addiu	s4,s4,8952
/home/chooaa/cs_lab/cpu_ex/inst/n8_lhu_adel_ex.S:113
9fc022f4:	40927000 	mtc0	s2,c0_epc
/home/chooaa/cs_lab/cpu_ex/inst/n8_lhu_adel_ex.S:114
9fc022f8:	948279f5 	lhu	v0,31221(a0)
/home/chooaa/cs_lab/cpu_ex/inst/n8_lhu_adel_ex.S:115
9fc022fc:	40887000 	mtc0	t0,c0_epc
/home/chooaa/cs_lab/cpu_ex/inst/n8_lhu_adel_ex.S:116
9fc02300:	16570007 	bne	s2,s7,9fc02320 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n8_lhu_adel_ex.S:117
9fc02304:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n8_lhu_adel_ex.S:118
9fc02308:	14430005 	bne	v0,v1,9fc02320 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n8_lhu_adel_ex.S:119
9fc0230c:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n8_lhu_adel_ex.S:120
9fc02310:	40164000 	mfc0	s6,c0_badvaddr
/home/chooaa/cs_lab/cpu_ex/inst/n8_lhu_adel_ex.S:121
9fc02314:	14f60002 	bne	a3,s6,9fc02320 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n8_lhu_adel_ex.S:122
9fc02318:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n8_lhu_adel_ex.S:124
9fc0231c:	26730001 	addiu	s3,s3,1

9fc02320 <inst_error>:
/home/chooaa/cs_lab/cpu_ex/inst/n8_lhu_adel_ex.S:127
9fc02320:	00104e00 	sll	t1,s0,0x18
/home/chooaa/cs_lab/cpu_ex/inst/n8_lhu_adel_ex.S:128
9fc02324:	01334025 	or	t0,t1,s3
/home/chooaa/cs_lab/cpu_ex/inst/n8_lhu_adel_ex.S:129
9fc02328:	ae280000 	sw	t0,0(s1)
/home/chooaa/cs_lab/cpu_ex/inst/n8_lhu_adel_ex.S:130
9fc0232c:	03e00008 	jr	ra
/home/chooaa/cs_lab/cpu_ex/inst/n8_lhu_adel_ex.S:131
9fc02330:	00000000 	nop
	...

9fc02340 <n3_add_ov_ex_test>:
/home/chooaa/cs_lab/cpu_ex/inst/n3_add_ov_ex.S:7
9fc02340:	26100001 	addiu	s0,s0,1
/home/chooaa/cs_lab/cpu_ex/inst/n3_add_ov_ex.S:8
9fc02344:	3c08800d 	lui	t0,0x800d
/home/chooaa/cs_lab/cpu_ex/inst/n3_add_ov_ex.S:9
9fc02348:	24120003 	li	s2,3
/home/chooaa/cs_lab/cpu_ex/inst/n3_add_ov_ex.S:10
9fc0234c:	ad120000 	sw	s2,0(t0)
/home/chooaa/cs_lab/cpu_ex/inst/n3_add_ov_ex.S:12
9fc02350:	40805800 	mtc0	zero,c0_compare
/home/chooaa/cs_lab/cpu_ex/inst/n3_add_ov_ex.S:13
9fc02354:	3c170040 	lui	s7,0x40
/home/chooaa/cs_lab/cpu_ex/inst/n3_add_ov_ex.S:14
9fc02358:	40976000 	mtc0	s7,c0_status
/home/chooaa/cs_lab/cpu_ex/inst/n3_add_ov_ex.S:15
9fc0235c:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n3_add_ov_ex.S:16
9fc02360:	3c170003 	lui	s7,0x3
/home/chooaa/cs_lab/cpu_ex/inst/n3_add_ov_ex.S:19
9fc02364:	3c0273b2 	lui	v0,0x73b2
9fc02368:	3442cf92 	ori	v0,v0,0xcf92
9fc0236c:	3c0373b2 	lui	v1,0x73b2
9fc02370:	3463cf92 	ori	v1,v1,0xcf92
9fc02374:	3c0490a5 	lui	a0,0x90a5
9fc02378:	3484f39c 	ori	a0,a0,0xf39c
9fc0237c:	3c05d421 	lui	a1,0xd421
9fc02380:	34a579e0 	ori	a1,a1,0x79e0
/home/chooaa/cs_lab/cpu_ex/inst/n3_add_ov_ex.S:20
9fc02384:	3c149fc0 	lui	s4,0x9fc0
9fc02388:	2694238c 	addiu	s4,s4,9100
/home/chooaa/cs_lab/cpu_ex/inst/n3_add_ov_ex.S:21
9fc0238c:	00851020 	add	v0,a0,a1
/home/chooaa/cs_lab/cpu_ex/inst/n3_add_ov_ex.S:22
9fc02390:	1657007a 	bne	s2,s7,9fc0257c <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n3_add_ov_ex.S:23
9fc02394:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n3_add_ov_ex.S:24
9fc02398:	14430078 	bne	v0,v1,9fc0257c <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n3_add_ov_ex.S:25
9fc0239c:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n3_add_ov_ex.S:27
9fc023a0:	24120003 	li	s2,3
/home/chooaa/cs_lab/cpu_ex/inst/n3_add_ov_ex.S:28
9fc023a4:	3c021a37 	lui	v0,0x1a37
9fc023a8:	34426500 	ori	v0,v0,0x6500
9fc023ac:	3c031a37 	lui	v1,0x1a37
9fc023b0:	34636500 	ori	v1,v1,0x6500
9fc023b4:	3c042a3c 	lui	a0,0x2a3c
9fc023b8:	3484a166 	ori	a0,a0,0xa166
9fc023bc:	3c05797f 	lui	a1,0x797f
9fc023c0:	34a530b9 	ori	a1,a1,0x30b9
/home/chooaa/cs_lab/cpu_ex/inst/n3_add_ov_ex.S:29
9fc023c4:	3c149fc0 	lui	s4,0x9fc0
9fc023c8:	269423d4 	addiu	s4,s4,9172
/home/chooaa/cs_lab/cpu_ex/inst/n3_add_ov_ex.S:30
9fc023cc:	ad080004 	sw	t0,4(t0)
/home/chooaa/cs_lab/cpu_ex/inst/n3_add_ov_ex.S:31
9fc023d0:	ad140004 	sw	s4,4(t0)
/home/chooaa/cs_lab/cpu_ex/inst/n3_add_ov_ex.S:32
9fc023d4:	00851020 	add	v0,a0,a1
/home/chooaa/cs_lab/cpu_ex/inst/n3_add_ov_ex.S:33
9fc023d8:	ad140000 	sw	s4,0(t0)
/home/chooaa/cs_lab/cpu_ex/inst/n3_add_ov_ex.S:34
9fc023dc:	8d090004 	lw	t1,4(t0)
/home/chooaa/cs_lab/cpu_ex/inst/n3_add_ov_ex.S:35
9fc023e0:	15340066 	bne	t1,s4,9fc0257c <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n3_add_ov_ex.S:36
9fc023e4:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n3_add_ov_ex.S:37
9fc023e8:	16570064 	bne	s2,s7,9fc0257c <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n3_add_ov_ex.S:38
9fc023ec:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n3_add_ov_ex.S:39
9fc023f0:	14430062 	bne	v0,v1,9fc0257c <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n3_add_ov_ex.S:40
9fc023f4:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n3_add_ov_ex.S:41
9fc023f8:	24120003 	li	s2,3
/home/chooaa/cs_lab/cpu_ex/inst/n3_add_ov_ex.S:42
9fc023fc:	ad120000 	sw	s2,0(t0)
/home/chooaa/cs_lab/cpu_ex/inst/n3_add_ov_ex.S:44
9fc02400:	24120003 	li	s2,3
/home/chooaa/cs_lab/cpu_ex/inst/n3_add_ov_ex.S:45
9fc02404:	3c149fc0 	lui	s4,0x9fc0
9fc02408:	26942434 	addiu	s4,s4,9268
/home/chooaa/cs_lab/cpu_ex/inst/n3_add_ov_ex.S:46
9fc0240c:	01000011 	mthi	t0
/home/chooaa/cs_lab/cpu_ex/inst/n3_add_ov_ex.S:47
9fc02410:	3c0257b9 	lui	v0,0x57b9
9fc02414:	3442e040 	ori	v0,v0,0xe040
9fc02418:	3c0357b9 	lui	v1,0x57b9
9fc0241c:	3463e040 	ori	v1,v1,0xe040
9fc02420:	3c048054 	lui	a0,0x8054
9fc02424:	348413c0 	ori	a0,a0,0x13c0
9fc02428:	3c05dea0 	lui	a1,0xdea0
9fc0242c:	34a5e60a 	ori	a1,a1,0xe60a
/home/chooaa/cs_lab/cpu_ex/inst/n3_add_ov_ex.S:48
9fc02430:	0110001b 	divu	zero,t0,s0
/home/chooaa/cs_lab/cpu_ex/inst/n3_add_ov_ex.S:49
9fc02434:	00851020 	add	v0,a0,a1
/home/chooaa/cs_lab/cpu_ex/inst/n3_add_ov_ex.S:50
9fc02438:	00004810 	mfhi	t1
/home/chooaa/cs_lab/cpu_ex/inst/n3_add_ov_ex.S:51
9fc0243c:	1128004f 	beq	t1,t0,9fc0257c <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n3_add_ov_ex.S:52
9fc02440:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n3_add_ov_ex.S:53
9fc02444:	1657004d 	bne	s2,s7,9fc0257c <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n3_add_ov_ex.S:54
9fc02448:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n3_add_ov_ex.S:55
9fc0244c:	1443004b 	bne	v0,v1,9fc0257c <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n3_add_ov_ex.S:56
9fc02450:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n3_add_ov_ex.S:58
9fc02454:	24120003 	li	s2,3
/home/chooaa/cs_lab/cpu_ex/inst/n3_add_ov_ex.S:59
9fc02458:	3c0289a0 	lui	v0,0x89a0
9fc0245c:	3442a980 	ori	v0,v0,0xa980
9fc02460:	3c0389a0 	lui	v1,0x89a0
9fc02464:	3463a980 	ori	v1,v1,0xa980
9fc02468:	3c04474d 	lui	a0,0x474d
9fc0246c:	3484b690 	ori	a0,a0,0xb690
9fc02470:	3c054d4c 	lui	a1,0x4d4c
9fc02474:	34a5bef8 	ori	a1,a1,0xbef8
/home/chooaa/cs_lab/cpu_ex/inst/n3_add_ov_ex.S:60
9fc02478:	3c149fc0 	lui	s4,0x9fc0
9fc0247c:	26942480 	addiu	s4,s4,9344
/home/chooaa/cs_lab/cpu_ex/inst/n3_add_ov_ex.S:61
9fc02480:	00851020 	add	v0,a0,a1
/home/chooaa/cs_lab/cpu_ex/inst/n3_add_ov_ex.S:62
9fc02484:	0208001b 	divu	zero,s0,t0
/home/chooaa/cs_lab/cpu_ex/inst/n3_add_ov_ex.S:63
9fc02488:	1657003c 	bne	s2,s7,9fc0257c <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n3_add_ov_ex.S:64
9fc0248c:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n3_add_ov_ex.S:65
9fc02490:	1443003a 	bne	v0,v1,9fc0257c <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n3_add_ov_ex.S:66
9fc02494:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n3_add_ov_ex.S:68
9fc02498:	24120003 	li	s2,3
/home/chooaa/cs_lab/cpu_ex/inst/n3_add_ov_ex.S:69
9fc0249c:	3c020f29 	lui	v0,0xf29
9fc024a0:	3442c5e0 	ori	v0,v0,0xc5e0
9fc024a4:	3c030f29 	lui	v1,0xf29
9fc024a8:	3463c5e0 	ori	v1,v1,0xc5e0
9fc024ac:	3c046818 	lui	a0,0x6818
9fc024b0:	3484e272 	ori	a0,a0,0xe272
9fc024b4:	3c056f6d 	lui	a1,0x6f6d
9fc024b8:	34a52620 	ori	a1,a1,0x2620
/home/chooaa/cs_lab/cpu_ex/inst/n3_add_ov_ex.S:70
9fc024bc:	3c149fc0 	lui	s4,0x9fc0
9fc024c0:	269424cc 	addiu	s4,s4,9420
/home/chooaa/cs_lab/cpu_ex/inst/n3_add_ov_ex.S:71
9fc024c4:	01000013 	mtlo	t0
/home/chooaa/cs_lab/cpu_ex/inst/n3_add_ov_ex.S:72
9fc024c8:	01100019 	multu	t0,s0
/home/chooaa/cs_lab/cpu_ex/inst/n3_add_ov_ex.S:73
9fc024cc:	00851020 	add	v0,a0,a1
/home/chooaa/cs_lab/cpu_ex/inst/n3_add_ov_ex.S:74
9fc024d0:	00004810 	mfhi	t1
/home/chooaa/cs_lab/cpu_ex/inst/n3_add_ov_ex.S:75
9fc024d4:	11280029 	beq	t1,t0,9fc0257c <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n3_add_ov_ex.S:76
9fc024d8:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n3_add_ov_ex.S:77
9fc024dc:	16570027 	bne	s2,s7,9fc0257c <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n3_add_ov_ex.S:78
9fc024e0:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n3_add_ov_ex.S:79
9fc024e4:	14430025 	bne	v0,v1,9fc0257c <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n3_add_ov_ex.S:80
9fc024e8:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n3_add_ov_ex.S:82
9fc024ec:	24120003 	li	s2,3
/home/chooaa/cs_lab/cpu_ex/inst/n3_add_ov_ex.S:83
9fc024f0:	3c029f1c 	lui	v0,0x9f1c
9fc024f4:	34425870 	ori	v0,v0,0x5870
9fc024f8:	3c039f1c 	lui	v1,0x9f1c
9fc024fc:	34635870 	ori	v1,v1,0x5870
9fc02500:	3c04a7b7 	lui	a0,0xa7b7
9fc02504:	3484a764 	ori	a0,a0,0xa764
9fc02508:	3c05c2d6 	lui	a1,0xc2d6
9fc0250c:	34a51d9c 	ori	a1,a1,0x1d9c
/home/chooaa/cs_lab/cpu_ex/inst/n3_add_ov_ex.S:84
9fc02510:	3c149fc0 	lui	s4,0x9fc0
9fc02514:	26942518 	addiu	s4,s4,9496
/home/chooaa/cs_lab/cpu_ex/inst/n3_add_ov_ex.S:85
9fc02518:	00851020 	add	v0,a0,a1
/home/chooaa/cs_lab/cpu_ex/inst/n3_add_ov_ex.S:86
9fc0251c:	01120019 	multu	t0,s2
/home/chooaa/cs_lab/cpu_ex/inst/n3_add_ov_ex.S:87
9fc02520:	16570016 	bne	s2,s7,9fc0257c <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n3_add_ov_ex.S:88
9fc02524:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n3_add_ov_ex.S:89
9fc02528:	14430014 	bne	v0,v1,9fc0257c <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n3_add_ov_ex.S:90
9fc0252c:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n3_add_ov_ex.S:92
9fc02530:	24120003 	li	s2,3
/home/chooaa/cs_lab/cpu_ex/inst/n3_add_ov_ex.S:93
9fc02534:	3c0231e6 	lui	v0,0x31e6
9fc02538:	3442699f 	ori	v0,v0,0x699f
9fc0253c:	3c0331e6 	lui	v1,0x31e6
9fc02540:	3463699f 	ori	v1,v1,0x699f
9fc02544:	3c048a78 	lui	a0,0x8a78
9fc02548:	3484cc40 	ori	a0,a0,0xcc40
9fc0254c:	3c05ab72 	lui	a1,0xab72
9fc02550:	34a584da 	ori	a1,a1,0x84da
/home/chooaa/cs_lab/cpu_ex/inst/n3_add_ov_ex.S:94
9fc02554:	3c149fc0 	lui	s4,0x9fc0
9fc02558:	26942560 	addiu	s4,s4,9568
/home/chooaa/cs_lab/cpu_ex/inst/n3_add_ov_ex.S:95
9fc0255c:	40927000 	mtc0	s2,c0_epc
/home/chooaa/cs_lab/cpu_ex/inst/n3_add_ov_ex.S:96
9fc02560:	00851020 	add	v0,a0,a1
/home/chooaa/cs_lab/cpu_ex/inst/n3_add_ov_ex.S:97
9fc02564:	40887000 	mtc0	t0,c0_epc
/home/chooaa/cs_lab/cpu_ex/inst/n3_add_ov_ex.S:98
9fc02568:	16570004 	bne	s2,s7,9fc0257c <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n3_add_ov_ex.S:99
9fc0256c:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n3_add_ov_ex.S:100
9fc02570:	14430002 	bne	v0,v1,9fc0257c <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n3_add_ov_ex.S:101
9fc02574:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n3_add_ov_ex.S:103
9fc02578:	26730001 	addiu	s3,s3,1

9fc0257c <inst_error>:
/home/chooaa/cs_lab/cpu_ex/inst/n3_add_ov_ex.S:106
9fc0257c:	00104e00 	sll	t1,s0,0x18
/home/chooaa/cs_lab/cpu_ex/inst/n3_add_ov_ex.S:107
9fc02580:	01334025 	or	t0,t1,s3
/home/chooaa/cs_lab/cpu_ex/inst/n3_add_ov_ex.S:108
9fc02584:	ae280000 	sw	t0,0(s1)
/home/chooaa/cs_lab/cpu_ex/inst/n3_add_ov_ex.S:109
9fc02588:	03e00008 	jr	ra
/home/chooaa/cs_lab/cpu_ex/inst/n3_add_ov_ex.S:110
9fc0258c:	00000000 	nop

9fc02590 <n27_trap_ex_test>:
/home/chooaa/cs_lab/cpu_ex/inst/n27_trap_ex.S:7
9fc02590:	26100001 	addiu	s0,s0,1
/home/chooaa/cs_lab/cpu_ex/inst/n27_trap_ex.S:8
9fc02594:	3c08800d 	lui	t0,0x800d
/home/chooaa/cs_lab/cpu_ex/inst/n27_trap_ex.S:9
9fc02598:	3c120000 	lui	s2,0x0
9fc0259c:	26520009 	addiu	s2,s2,9
/home/chooaa/cs_lab/cpu_ex/inst/n27_trap_ex.S:10
9fc025a0:	ad120000 	sw	s2,0(t0)
/home/chooaa/cs_lab/cpu_ex/inst/n27_trap_ex.S:12
9fc025a4:	40805800 	mtc0	zero,c0_compare
/home/chooaa/cs_lab/cpu_ex/inst/n27_trap_ex.S:13
9fc025a8:	3c170040 	lui	s7,0x40
/home/chooaa/cs_lab/cpu_ex/inst/n27_trap_ex.S:14
9fc025ac:	40976000 	mtc0	s7,c0_status
/home/chooaa/cs_lab/cpu_ex/inst/n27_trap_ex.S:15
9fc025b0:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n27_trap_ex.S:16
9fc025b4:	3c170000 	lui	s7,0x0
9fc025b8:	26f70009 	addiu	s7,s7,9
/home/chooaa/cs_lab/cpu_ex/inst/n27_trap_ex.S:18
9fc025bc:	3c120000 	lui	s2,0x0
9fc025c0:	26520000 	addiu	s2,s2,0
/home/chooaa/cs_lab/cpu_ex/inst/n27_trap_ex.S:19
9fc025c4:	34041000 	li	a0,0x1000
/home/chooaa/cs_lab/cpu_ex/inst/n27_trap_ex.S:20
9fc025c8:	34051000 	li	a1,0x1000
/home/chooaa/cs_lab/cpu_ex/inst/n27_trap_ex.S:21
9fc025cc:	3c149fc0 	lui	s4,0x9fc0
9fc025d0:	269425d4 	addiu	s4,s4,9684
/home/chooaa/cs_lab/cpu_ex/inst/n27_trap_ex.S:22
9fc025d4:	00850034 	teq	a0,a1
/home/chooaa/cs_lab/cpu_ex/inst/n27_trap_ex.S:23
9fc025d8:	16570148 	bne	s2,s7,9fc02afc <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n27_trap_ex.S:24
9fc025dc:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n27_trap_ex.S:26
9fc025e0:	3c120000 	lui	s2,0x0
9fc025e4:	26520009 	addiu	s2,s2,9
/home/chooaa/cs_lab/cpu_ex/inst/n27_trap_ex.S:27
9fc025e8:	34041000 	li	a0,0x1000
/home/chooaa/cs_lab/cpu_ex/inst/n27_trap_ex.S:28
9fc025ec:	34051110 	li	a1,0x1110
/home/chooaa/cs_lab/cpu_ex/inst/n27_trap_ex.S:29
9fc025f0:	3c149fc0 	lui	s4,0x9fc0
9fc025f4:	269425f8 	addiu	s4,s4,9720
/home/chooaa/cs_lab/cpu_ex/inst/n27_trap_ex.S:30
9fc025f8:	00850034 	teq	a0,a1
/home/chooaa/cs_lab/cpu_ex/inst/n27_trap_ex.S:31
9fc025fc:	1657013f 	bne	s2,s7,9fc02afc <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n27_trap_ex.S:32
9fc02600:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n27_trap_ex.S:34
9fc02604:	3c120000 	lui	s2,0x0
9fc02608:	26520009 	addiu	s2,s2,9
/home/chooaa/cs_lab/cpu_ex/inst/n27_trap_ex.S:35
9fc0260c:	34041000 	li	a0,0x1000
/home/chooaa/cs_lab/cpu_ex/inst/n27_trap_ex.S:36
9fc02610:	34051000 	li	a1,0x1000
/home/chooaa/cs_lab/cpu_ex/inst/n27_trap_ex.S:37
9fc02614:	3c149fc0 	lui	s4,0x9fc0
9fc02618:	2694261c 	addiu	s4,s4,9756
/home/chooaa/cs_lab/cpu_ex/inst/n27_trap_ex.S:38
9fc0261c:	00850036 	tne	a0,a1
/home/chooaa/cs_lab/cpu_ex/inst/n27_trap_ex.S:39
9fc02620:	16570136 	bne	s2,s7,9fc02afc <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n27_trap_ex.S:40
9fc02624:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n27_trap_ex.S:42
9fc02628:	3c120000 	lui	s2,0x0
9fc0262c:	26520000 	addiu	s2,s2,0
/home/chooaa/cs_lab/cpu_ex/inst/n27_trap_ex.S:43
9fc02630:	34041000 	li	a0,0x1000
/home/chooaa/cs_lab/cpu_ex/inst/n27_trap_ex.S:44
9fc02634:	34051110 	li	a1,0x1110
/home/chooaa/cs_lab/cpu_ex/inst/n27_trap_ex.S:45
9fc02638:	3c149fc0 	lui	s4,0x9fc0
9fc0263c:	26942640 	addiu	s4,s4,9792
/home/chooaa/cs_lab/cpu_ex/inst/n27_trap_ex.S:46
9fc02640:	00850036 	tne	a0,a1
/home/chooaa/cs_lab/cpu_ex/inst/n27_trap_ex.S:47
9fc02644:	1657012d 	bne	s2,s7,9fc02afc <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n27_trap_ex.S:48
9fc02648:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n27_trap_ex.S:50
9fc0264c:	3c120000 	lui	s2,0x0
9fc02650:	26520000 	addiu	s2,s2,0
/home/chooaa/cs_lab/cpu_ex/inst/n27_trap_ex.S:51
9fc02654:	34041000 	li	a0,0x1000
/home/chooaa/cs_lab/cpu_ex/inst/n27_trap_ex.S:52
9fc02658:	3c149fc0 	lui	s4,0x9fc0
9fc0265c:	26942660 	addiu	s4,s4,9824
/home/chooaa/cs_lab/cpu_ex/inst/n27_trap_ex.S:53
9fc02660:	048e1110 	tnei	a0,4368
/home/chooaa/cs_lab/cpu_ex/inst/n27_trap_ex.S:54
9fc02664:	16570125 	bne	s2,s7,9fc02afc <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n27_trap_ex.S:55
9fc02668:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n27_trap_ex.S:57
9fc0266c:	3c120000 	lui	s2,0x0
9fc02670:	26520009 	addiu	s2,s2,9
/home/chooaa/cs_lab/cpu_ex/inst/n27_trap_ex.S:58
9fc02674:	34041110 	li	a0,0x1110
/home/chooaa/cs_lab/cpu_ex/inst/n27_trap_ex.S:59
9fc02678:	3c149fc0 	lui	s4,0x9fc0
9fc0267c:	26942680 	addiu	s4,s4,9856
/home/chooaa/cs_lab/cpu_ex/inst/n27_trap_ex.S:60
9fc02680:	048e1110 	tnei	a0,4368
/home/chooaa/cs_lab/cpu_ex/inst/n27_trap_ex.S:61
9fc02684:	1657011d 	bne	s2,s7,9fc02afc <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n27_trap_ex.S:62
9fc02688:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n27_trap_ex.S:64
9fc0268c:	3c120000 	lui	s2,0x0
9fc02690:	26520000 	addiu	s2,s2,0
/home/chooaa/cs_lab/cpu_ex/inst/n27_trap_ex.S:65
9fc02694:	3c040000 	lui	a0,0x0
9fc02698:	24848000 	addiu	a0,a0,-32768
/home/chooaa/cs_lab/cpu_ex/inst/n27_trap_ex.S:66
9fc0269c:	3c149fc0 	lui	s4,0x9fc0
9fc026a0:	269426a4 	addiu	s4,s4,9892
/home/chooaa/cs_lab/cpu_ex/inst/n27_trap_ex.S:67
9fc026a4:	048c8000 	teqi	a0,-32768
/home/chooaa/cs_lab/cpu_ex/inst/n27_trap_ex.S:68
9fc026a8:	16570114 	bne	s2,s7,9fc02afc <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n27_trap_ex.S:69
9fc026ac:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n27_trap_ex.S:71
9fc026b0:	3c120000 	lui	s2,0x0
9fc026b4:	26520009 	addiu	s2,s2,9
/home/chooaa/cs_lab/cpu_ex/inst/n27_trap_ex.S:72
9fc026b8:	3c04ffff 	lui	a0,0xffff
9fc026bc:	24847fff 	addiu	a0,a0,32767
/home/chooaa/cs_lab/cpu_ex/inst/n27_trap_ex.S:73
9fc026c0:	048c7fff 	teqi	a0,32767
/home/chooaa/cs_lab/cpu_ex/inst/n27_trap_ex.S:74
9fc026c4:	3c149fc0 	lui	s4,0x9fc0
9fc026c8:	269426cc 	addiu	s4,s4,9932
/home/chooaa/cs_lab/cpu_ex/inst/n27_trap_ex.S:75
9fc026cc:	1657010b 	bne	s2,s7,9fc02afc <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n27_trap_ex.S:76
9fc026d0:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n27_trap_ex.S:78
9fc026d4:	3c120000 	lui	s2,0x0
9fc026d8:	26520000 	addiu	s2,s2,0
/home/chooaa/cs_lab/cpu_ex/inst/n27_trap_ex.S:79
9fc026dc:	3c040000 	lui	a0,0x0
9fc026e0:	24847fff 	addiu	a0,a0,32767
/home/chooaa/cs_lab/cpu_ex/inst/n27_trap_ex.S:80
9fc026e4:	3c149fc0 	lui	s4,0x9fc0
9fc026e8:	269426ec 	addiu	s4,s4,9964
/home/chooaa/cs_lab/cpu_ex/inst/n27_trap_ex.S:81
9fc026ec:	048c7fff 	teqi	a0,32767
/home/chooaa/cs_lab/cpu_ex/inst/n27_trap_ex.S:82
9fc026f0:	16570102 	bne	s2,s7,9fc02afc <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n27_trap_ex.S:83
9fc026f4:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n27_trap_ex.S:85
9fc026f8:	3c120000 	lui	s2,0x0
9fc026fc:	26520000 	addiu	s2,s2,0
/home/chooaa/cs_lab/cpu_ex/inst/n27_trap_ex.S:86
9fc02700:	34044000 	li	a0,0x4000
/home/chooaa/cs_lab/cpu_ex/inst/n27_trap_ex.S:87
9fc02704:	34051000 	li	a1,0x1000
/home/chooaa/cs_lab/cpu_ex/inst/n27_trap_ex.S:88
9fc02708:	3c149fc0 	lui	s4,0x9fc0
9fc0270c:	26942710 	addiu	s4,s4,10000
/home/chooaa/cs_lab/cpu_ex/inst/n27_trap_ex.S:89
9fc02710:	00850030 	tge	a0,a1
/home/chooaa/cs_lab/cpu_ex/inst/n27_trap_ex.S:90
9fc02714:	165700f9 	bne	s2,s7,9fc02afc <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n27_trap_ex.S:91
9fc02718:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n27_trap_ex.S:93
9fc0271c:	3c120000 	lui	s2,0x0
9fc02720:	26520009 	addiu	s2,s2,9
/home/chooaa/cs_lab/cpu_ex/inst/n27_trap_ex.S:94
9fc02724:	3c04ffff 	lui	a0,0xffff
9fc02728:	24844000 	addiu	a0,a0,16384
/home/chooaa/cs_lab/cpu_ex/inst/n27_trap_ex.S:95
9fc0272c:	34051000 	li	a1,0x1000
/home/chooaa/cs_lab/cpu_ex/inst/n27_trap_ex.S:96
9fc02730:	3c149fc0 	lui	s4,0x9fc0
9fc02734:	26942738 	addiu	s4,s4,10040
/home/chooaa/cs_lab/cpu_ex/inst/n27_trap_ex.S:97
9fc02738:	00850030 	tge	a0,a1
/home/chooaa/cs_lab/cpu_ex/inst/n27_trap_ex.S:98
9fc0273c:	165700ef 	bne	s2,s7,9fc02afc <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n27_trap_ex.S:99
9fc02740:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n27_trap_ex.S:101
9fc02744:	3c120000 	lui	s2,0x0
9fc02748:	26520009 	addiu	s2,s2,9
/home/chooaa/cs_lab/cpu_ex/inst/n27_trap_ex.S:102
9fc0274c:	34041000 	li	a0,0x1000
/home/chooaa/cs_lab/cpu_ex/inst/n27_trap_ex.S:103
9fc02750:	34054000 	li	a1,0x4000
/home/chooaa/cs_lab/cpu_ex/inst/n27_trap_ex.S:104
9fc02754:	3c149fc0 	lui	s4,0x9fc0
9fc02758:	2694275c 	addiu	s4,s4,10076
/home/chooaa/cs_lab/cpu_ex/inst/n27_trap_ex.S:105
9fc0275c:	00850030 	tge	a0,a1
/home/chooaa/cs_lab/cpu_ex/inst/n27_trap_ex.S:106
9fc02760:	165700e6 	bne	s2,s7,9fc02afc <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n27_trap_ex.S:107
9fc02764:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n27_trap_ex.S:109
9fc02768:	3c120000 	lui	s2,0x0
9fc0276c:	26520000 	addiu	s2,s2,0
/home/chooaa/cs_lab/cpu_ex/inst/n27_trap_ex.S:110
9fc02770:	34041000 	li	a0,0x1000
/home/chooaa/cs_lab/cpu_ex/inst/n27_trap_ex.S:111
9fc02774:	34051000 	li	a1,0x1000
/home/chooaa/cs_lab/cpu_ex/inst/n27_trap_ex.S:112
9fc02778:	3c149fc0 	lui	s4,0x9fc0
9fc0277c:	26942780 	addiu	s4,s4,10112
/home/chooaa/cs_lab/cpu_ex/inst/n27_trap_ex.S:113
9fc02780:	00850030 	tge	a0,a1
/home/chooaa/cs_lab/cpu_ex/inst/n27_trap_ex.S:114
9fc02784:	165700dd 	bne	s2,s7,9fc02afc <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n27_trap_ex.S:115
9fc02788:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n27_trap_ex.S:117
9fc0278c:	3c120000 	lui	s2,0x0
9fc02790:	26520000 	addiu	s2,s2,0
/home/chooaa/cs_lab/cpu_ex/inst/n27_trap_ex.S:118
9fc02794:	34044000 	li	a0,0x4000
/home/chooaa/cs_lab/cpu_ex/inst/n27_trap_ex.S:119
9fc02798:	34051000 	li	a1,0x1000
/home/chooaa/cs_lab/cpu_ex/inst/n27_trap_ex.S:120
9fc0279c:	3c149fc0 	lui	s4,0x9fc0
9fc027a0:	269427a4 	addiu	s4,s4,10148
/home/chooaa/cs_lab/cpu_ex/inst/n27_trap_ex.S:121
9fc027a4:	00850031 	tgeu	a0,a1
/home/chooaa/cs_lab/cpu_ex/inst/n27_trap_ex.S:122
9fc027a8:	165700d4 	bne	s2,s7,9fc02afc <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n27_trap_ex.S:123
9fc027ac:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n27_trap_ex.S:125
9fc027b0:	3c120000 	lui	s2,0x0
9fc027b4:	26520000 	addiu	s2,s2,0
/home/chooaa/cs_lab/cpu_ex/inst/n27_trap_ex.S:126
9fc027b8:	3c04ffff 	lui	a0,0xffff
9fc027bc:	24844000 	addiu	a0,a0,16384
/home/chooaa/cs_lab/cpu_ex/inst/n27_trap_ex.S:127
9fc027c0:	34051000 	li	a1,0x1000
/home/chooaa/cs_lab/cpu_ex/inst/n27_trap_ex.S:128
9fc027c4:	3c149fc0 	lui	s4,0x9fc0
9fc027c8:	269427cc 	addiu	s4,s4,10188
/home/chooaa/cs_lab/cpu_ex/inst/n27_trap_ex.S:129
9fc027cc:	00850031 	tgeu	a0,a1
/home/chooaa/cs_lab/cpu_ex/inst/n27_trap_ex.S:130
9fc027d0:	165700ca 	bne	s2,s7,9fc02afc <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n27_trap_ex.S:131
9fc027d4:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n27_trap_ex.S:133
9fc027d8:	3c120000 	lui	s2,0x0
9fc027dc:	26520009 	addiu	s2,s2,9
/home/chooaa/cs_lab/cpu_ex/inst/n27_trap_ex.S:134
9fc027e0:	34041000 	li	a0,0x1000
/home/chooaa/cs_lab/cpu_ex/inst/n27_trap_ex.S:135
9fc027e4:	34054000 	li	a1,0x4000
/home/chooaa/cs_lab/cpu_ex/inst/n27_trap_ex.S:136
9fc027e8:	3c149fc0 	lui	s4,0x9fc0
9fc027ec:	269427f0 	addiu	s4,s4,10224
/home/chooaa/cs_lab/cpu_ex/inst/n27_trap_ex.S:137
9fc027f0:	00850031 	tgeu	a0,a1
/home/chooaa/cs_lab/cpu_ex/inst/n27_trap_ex.S:138
9fc027f4:	165700c1 	bne	s2,s7,9fc02afc <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n27_trap_ex.S:139
9fc027f8:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n27_trap_ex.S:141
9fc027fc:	3c120000 	lui	s2,0x0
9fc02800:	26520000 	addiu	s2,s2,0
/home/chooaa/cs_lab/cpu_ex/inst/n27_trap_ex.S:142
9fc02804:	34041000 	li	a0,0x1000
/home/chooaa/cs_lab/cpu_ex/inst/n27_trap_ex.S:143
9fc02808:	34051000 	li	a1,0x1000
/home/chooaa/cs_lab/cpu_ex/inst/n27_trap_ex.S:144
9fc0280c:	3c149fc0 	lui	s4,0x9fc0
9fc02810:	26942814 	addiu	s4,s4,10260
/home/chooaa/cs_lab/cpu_ex/inst/n27_trap_ex.S:145
9fc02814:	00850031 	tgeu	a0,a1
/home/chooaa/cs_lab/cpu_ex/inst/n27_trap_ex.S:146
9fc02818:	165700b8 	bne	s2,s7,9fc02afc <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n27_trap_ex.S:147
9fc0281c:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n27_trap_ex.S:149
9fc02820:	3c120000 	lui	s2,0x0
9fc02824:	26520000 	addiu	s2,s2,0
/home/chooaa/cs_lab/cpu_ex/inst/n27_trap_ex.S:150
9fc02828:	3c040000 	lui	a0,0x0
9fc0282c:	24848000 	addiu	a0,a0,-32768
/home/chooaa/cs_lab/cpu_ex/inst/n27_trap_ex.S:151
9fc02830:	3c149fc0 	lui	s4,0x9fc0
9fc02834:	26942838 	addiu	s4,s4,10296
/home/chooaa/cs_lab/cpu_ex/inst/n27_trap_ex.S:152
9fc02838:	04888000 	tgei	a0,-32768
/home/chooaa/cs_lab/cpu_ex/inst/n27_trap_ex.S:153
9fc0283c:	165700af 	bne	s2,s7,9fc02afc <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n27_trap_ex.S:154
9fc02840:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n27_trap_ex.S:156
9fc02844:	3c120000 	lui	s2,0x0
9fc02848:	26520009 	addiu	s2,s2,9
/home/chooaa/cs_lab/cpu_ex/inst/n27_trap_ex.S:157
9fc0284c:	3c04ffff 	lui	a0,0xffff
9fc02850:	24847f00 	addiu	a0,a0,32512
/home/chooaa/cs_lab/cpu_ex/inst/n27_trap_ex.S:158
9fc02854:	3c149fc0 	lui	s4,0x9fc0
9fc02858:	2694285c 	addiu	s4,s4,10332
/home/chooaa/cs_lab/cpu_ex/inst/n27_trap_ex.S:159
9fc0285c:	04887f00 	tgei	a0,32512
/home/chooaa/cs_lab/cpu_ex/inst/n27_trap_ex.S:160
9fc02860:	165700a6 	bne	s2,s7,9fc02afc <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n27_trap_ex.S:161
9fc02864:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n27_trap_ex.S:163
9fc02868:	3c120000 	lui	s2,0x0
9fc0286c:	26520000 	addiu	s2,s2,0
/home/chooaa/cs_lab/cpu_ex/inst/n27_trap_ex.S:164
9fc02870:	3c040000 	lui	a0,0x0
9fc02874:	24847f00 	addiu	a0,a0,32512
/home/chooaa/cs_lab/cpu_ex/inst/n27_trap_ex.S:165
9fc02878:	3c149fc0 	lui	s4,0x9fc0
9fc0287c:	26942880 	addiu	s4,s4,10368
/home/chooaa/cs_lab/cpu_ex/inst/n27_trap_ex.S:166
9fc02880:	04887f00 	tgei	a0,32512
/home/chooaa/cs_lab/cpu_ex/inst/n27_trap_ex.S:167
9fc02884:	1657009d 	bne	s2,s7,9fc02afc <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n27_trap_ex.S:168
9fc02888:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n27_trap_ex.S:170
9fc0288c:	3c120000 	lui	s2,0x0
9fc02890:	26520000 	addiu	s2,s2,0
/home/chooaa/cs_lab/cpu_ex/inst/n27_trap_ex.S:171
9fc02894:	3c040000 	lui	a0,0x0
9fc02898:	24848000 	addiu	a0,a0,-32768
/home/chooaa/cs_lab/cpu_ex/inst/n27_trap_ex.S:172
9fc0289c:	3c149fc0 	lui	s4,0x9fc0
9fc028a0:	269428a4 	addiu	s4,s4,10404
/home/chooaa/cs_lab/cpu_ex/inst/n27_trap_ex.S:173
9fc028a4:	04898000 	tgeiu	a0,-32768
/home/chooaa/cs_lab/cpu_ex/inst/n27_trap_ex.S:174
9fc028a8:	16570094 	bne	s2,s7,9fc02afc <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n27_trap_ex.S:175
9fc028ac:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n27_trap_ex.S:177
9fc028b0:	3c120000 	lui	s2,0x0
9fc028b4:	26520000 	addiu	s2,s2,0
/home/chooaa/cs_lab/cpu_ex/inst/n27_trap_ex.S:178
9fc028b8:	3c04ffff 	lui	a0,0xffff
9fc028bc:	24847f00 	addiu	a0,a0,32512
/home/chooaa/cs_lab/cpu_ex/inst/n27_trap_ex.S:179
9fc028c0:	3c149fc0 	lui	s4,0x9fc0
9fc028c4:	269428c8 	addiu	s4,s4,10440
/home/chooaa/cs_lab/cpu_ex/inst/n27_trap_ex.S:180
9fc028c8:	04897f00 	tgeiu	a0,32512
/home/chooaa/cs_lab/cpu_ex/inst/n27_trap_ex.S:181
9fc028cc:	1657008b 	bne	s2,s7,9fc02afc <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n27_trap_ex.S:182
9fc028d0:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n27_trap_ex.S:184
9fc028d4:	3c120000 	lui	s2,0x0
9fc028d8:	26520000 	addiu	s2,s2,0
/home/chooaa/cs_lab/cpu_ex/inst/n27_trap_ex.S:185
9fc028dc:	3c040000 	lui	a0,0x0
9fc028e0:	24847f00 	addiu	a0,a0,32512
/home/chooaa/cs_lab/cpu_ex/inst/n27_trap_ex.S:186
9fc028e4:	3c149fc0 	lui	s4,0x9fc0
9fc028e8:	269428ec 	addiu	s4,s4,10476
/home/chooaa/cs_lab/cpu_ex/inst/n27_trap_ex.S:187
9fc028ec:	04897f00 	tgeiu	a0,32512
/home/chooaa/cs_lab/cpu_ex/inst/n27_trap_ex.S:188
9fc028f0:	16570082 	bne	s2,s7,9fc02afc <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n27_trap_ex.S:189
9fc028f4:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n27_trap_ex.S:191
9fc028f8:	3c120000 	lui	s2,0x0
9fc028fc:	26520009 	addiu	s2,s2,9
/home/chooaa/cs_lab/cpu_ex/inst/n27_trap_ex.S:192
9fc02900:	34044000 	li	a0,0x4000
/home/chooaa/cs_lab/cpu_ex/inst/n27_trap_ex.S:193
9fc02904:	34051000 	li	a1,0x1000
/home/chooaa/cs_lab/cpu_ex/inst/n27_trap_ex.S:194
9fc02908:	3c149fc0 	lui	s4,0x9fc0
9fc0290c:	26942910 	addiu	s4,s4,10512
/home/chooaa/cs_lab/cpu_ex/inst/n27_trap_ex.S:195
9fc02910:	00850032 	tlt	a0,a1
/home/chooaa/cs_lab/cpu_ex/inst/n27_trap_ex.S:196
9fc02914:	16570079 	bne	s2,s7,9fc02afc <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n27_trap_ex.S:197
9fc02918:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n27_trap_ex.S:199
9fc0291c:	3c120000 	lui	s2,0x0
9fc02920:	26520000 	addiu	s2,s2,0
/home/chooaa/cs_lab/cpu_ex/inst/n27_trap_ex.S:200
9fc02924:	3c04ffff 	lui	a0,0xffff
9fc02928:	24844000 	addiu	a0,a0,16384
/home/chooaa/cs_lab/cpu_ex/inst/n27_trap_ex.S:201
9fc0292c:	34051000 	li	a1,0x1000
/home/chooaa/cs_lab/cpu_ex/inst/n27_trap_ex.S:202
9fc02930:	3c149fc0 	lui	s4,0x9fc0
9fc02934:	26942938 	addiu	s4,s4,10552
/home/chooaa/cs_lab/cpu_ex/inst/n27_trap_ex.S:203
9fc02938:	00850032 	tlt	a0,a1
/home/chooaa/cs_lab/cpu_ex/inst/n27_trap_ex.S:204
9fc0293c:	1657006f 	bne	s2,s7,9fc02afc <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n27_trap_ex.S:205
9fc02940:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n27_trap_ex.S:207
9fc02944:	3c120000 	lui	s2,0x0
9fc02948:	26520000 	addiu	s2,s2,0
/home/chooaa/cs_lab/cpu_ex/inst/n27_trap_ex.S:208
9fc0294c:	34041000 	li	a0,0x1000
/home/chooaa/cs_lab/cpu_ex/inst/n27_trap_ex.S:209
9fc02950:	34054000 	li	a1,0x4000
/home/chooaa/cs_lab/cpu_ex/inst/n27_trap_ex.S:210
9fc02954:	3c149fc0 	lui	s4,0x9fc0
9fc02958:	2694295c 	addiu	s4,s4,10588
/home/chooaa/cs_lab/cpu_ex/inst/n27_trap_ex.S:211
9fc0295c:	00850032 	tlt	a0,a1
/home/chooaa/cs_lab/cpu_ex/inst/n27_trap_ex.S:212
9fc02960:	16570066 	bne	s2,s7,9fc02afc <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n27_trap_ex.S:213
9fc02964:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n27_trap_ex.S:215
9fc02968:	3c120000 	lui	s2,0x0
9fc0296c:	26520009 	addiu	s2,s2,9
/home/chooaa/cs_lab/cpu_ex/inst/n27_trap_ex.S:216
9fc02970:	34041000 	li	a0,0x1000
/home/chooaa/cs_lab/cpu_ex/inst/n27_trap_ex.S:217
9fc02974:	34051000 	li	a1,0x1000
/home/chooaa/cs_lab/cpu_ex/inst/n27_trap_ex.S:218
9fc02978:	3c149fc0 	lui	s4,0x9fc0
9fc0297c:	26942980 	addiu	s4,s4,10624
/home/chooaa/cs_lab/cpu_ex/inst/n27_trap_ex.S:219
9fc02980:	00850032 	tlt	a0,a1
/home/chooaa/cs_lab/cpu_ex/inst/n27_trap_ex.S:220
9fc02984:	1657005d 	bne	s2,s7,9fc02afc <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n27_trap_ex.S:221
9fc02988:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n27_trap_ex.S:223
9fc0298c:	3c120000 	lui	s2,0x0
9fc02990:	26520009 	addiu	s2,s2,9
/home/chooaa/cs_lab/cpu_ex/inst/n27_trap_ex.S:224
9fc02994:	34044000 	li	a0,0x4000
/home/chooaa/cs_lab/cpu_ex/inst/n27_trap_ex.S:225
9fc02998:	34051000 	li	a1,0x1000
/home/chooaa/cs_lab/cpu_ex/inst/n27_trap_ex.S:226
9fc0299c:	3c149fc0 	lui	s4,0x9fc0
9fc029a0:	269429a4 	addiu	s4,s4,10660
/home/chooaa/cs_lab/cpu_ex/inst/n27_trap_ex.S:227
9fc029a4:	00850033 	tltu	a0,a1
/home/chooaa/cs_lab/cpu_ex/inst/n27_trap_ex.S:228
9fc029a8:	16570054 	bne	s2,s7,9fc02afc <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n27_trap_ex.S:229
9fc029ac:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n27_trap_ex.S:231
9fc029b0:	3c120000 	lui	s2,0x0
9fc029b4:	26520009 	addiu	s2,s2,9
/home/chooaa/cs_lab/cpu_ex/inst/n27_trap_ex.S:232
9fc029b8:	3c04ffff 	lui	a0,0xffff
9fc029bc:	24844000 	addiu	a0,a0,16384
/home/chooaa/cs_lab/cpu_ex/inst/n27_trap_ex.S:233
9fc029c0:	34051000 	li	a1,0x1000
/home/chooaa/cs_lab/cpu_ex/inst/n27_trap_ex.S:234
9fc029c4:	3c149fc0 	lui	s4,0x9fc0
9fc029c8:	269429cc 	addiu	s4,s4,10700
/home/chooaa/cs_lab/cpu_ex/inst/n27_trap_ex.S:235
9fc029cc:	00850033 	tltu	a0,a1
/home/chooaa/cs_lab/cpu_ex/inst/n27_trap_ex.S:236
9fc029d0:	1657004a 	bne	s2,s7,9fc02afc <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n27_trap_ex.S:237
9fc029d4:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n27_trap_ex.S:239
9fc029d8:	3c120000 	lui	s2,0x0
9fc029dc:	26520000 	addiu	s2,s2,0
/home/chooaa/cs_lab/cpu_ex/inst/n27_trap_ex.S:240
9fc029e0:	34041000 	li	a0,0x1000
/home/chooaa/cs_lab/cpu_ex/inst/n27_trap_ex.S:241
9fc029e4:	34054000 	li	a1,0x4000
/home/chooaa/cs_lab/cpu_ex/inst/n27_trap_ex.S:242
9fc029e8:	3c149fc0 	lui	s4,0x9fc0
9fc029ec:	269429f0 	addiu	s4,s4,10736
/home/chooaa/cs_lab/cpu_ex/inst/n27_trap_ex.S:243
9fc029f0:	00850033 	tltu	a0,a1
/home/chooaa/cs_lab/cpu_ex/inst/n27_trap_ex.S:244
9fc029f4:	16570041 	bne	s2,s7,9fc02afc <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n27_trap_ex.S:245
9fc029f8:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n27_trap_ex.S:247
9fc029fc:	3c120000 	lui	s2,0x0
9fc02a00:	26520009 	addiu	s2,s2,9
/home/chooaa/cs_lab/cpu_ex/inst/n27_trap_ex.S:248
9fc02a04:	34041000 	li	a0,0x1000
/home/chooaa/cs_lab/cpu_ex/inst/n27_trap_ex.S:249
9fc02a08:	34051000 	li	a1,0x1000
/home/chooaa/cs_lab/cpu_ex/inst/n27_trap_ex.S:250
9fc02a0c:	3c149fc0 	lui	s4,0x9fc0
9fc02a10:	26942a14 	addiu	s4,s4,10772
/home/chooaa/cs_lab/cpu_ex/inst/n27_trap_ex.S:251
9fc02a14:	00850033 	tltu	a0,a1
/home/chooaa/cs_lab/cpu_ex/inst/n27_trap_ex.S:252
9fc02a18:	16570038 	bne	s2,s7,9fc02afc <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n27_trap_ex.S:253
9fc02a1c:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n27_trap_ex.S:255
9fc02a20:	3c120000 	lui	s2,0x0
9fc02a24:	26520009 	addiu	s2,s2,9
/home/chooaa/cs_lab/cpu_ex/inst/n27_trap_ex.S:256
9fc02a28:	3c040000 	lui	a0,0x0
9fc02a2c:	24848000 	addiu	a0,a0,-32768
/home/chooaa/cs_lab/cpu_ex/inst/n27_trap_ex.S:257
9fc02a30:	3c149fc0 	lui	s4,0x9fc0
9fc02a34:	26942a38 	addiu	s4,s4,10808
/home/chooaa/cs_lab/cpu_ex/inst/n27_trap_ex.S:258
9fc02a38:	048a8000 	tlti	a0,-32768
/home/chooaa/cs_lab/cpu_ex/inst/n27_trap_ex.S:259
9fc02a3c:	1657002f 	bne	s2,s7,9fc02afc <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n27_trap_ex.S:260
9fc02a40:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n27_trap_ex.S:262
9fc02a44:	3c120000 	lui	s2,0x0
9fc02a48:	26520000 	addiu	s2,s2,0
/home/chooaa/cs_lab/cpu_ex/inst/n27_trap_ex.S:263
9fc02a4c:	3c04ffff 	lui	a0,0xffff
9fc02a50:	24847f00 	addiu	a0,a0,32512
/home/chooaa/cs_lab/cpu_ex/inst/n27_trap_ex.S:264
9fc02a54:	3c149fc0 	lui	s4,0x9fc0
9fc02a58:	26942a5c 	addiu	s4,s4,10844
/home/chooaa/cs_lab/cpu_ex/inst/n27_trap_ex.S:265
9fc02a5c:	048a7f00 	tlti	a0,32512
/home/chooaa/cs_lab/cpu_ex/inst/n27_trap_ex.S:266
9fc02a60:	16570026 	bne	s2,s7,9fc02afc <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n27_trap_ex.S:267
9fc02a64:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n27_trap_ex.S:269
9fc02a68:	3c120000 	lui	s2,0x0
9fc02a6c:	26520009 	addiu	s2,s2,9
/home/chooaa/cs_lab/cpu_ex/inst/n27_trap_ex.S:270
9fc02a70:	3c040000 	lui	a0,0x0
9fc02a74:	24847f00 	addiu	a0,a0,32512
/home/chooaa/cs_lab/cpu_ex/inst/n27_trap_ex.S:271
9fc02a78:	3c149fc0 	lui	s4,0x9fc0
9fc02a7c:	26942a80 	addiu	s4,s4,10880
/home/chooaa/cs_lab/cpu_ex/inst/n27_trap_ex.S:272
9fc02a80:	048a7f00 	tlti	a0,32512
/home/chooaa/cs_lab/cpu_ex/inst/n27_trap_ex.S:273
9fc02a84:	1657001d 	bne	s2,s7,9fc02afc <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n27_trap_ex.S:274
9fc02a88:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n27_trap_ex.S:276
9fc02a8c:	3c120000 	lui	s2,0x0
9fc02a90:	26520009 	addiu	s2,s2,9
/home/chooaa/cs_lab/cpu_ex/inst/n27_trap_ex.S:277
9fc02a94:	3c040000 	lui	a0,0x0
9fc02a98:	24848000 	addiu	a0,a0,-32768
/home/chooaa/cs_lab/cpu_ex/inst/n27_trap_ex.S:278
9fc02a9c:	3c149fc0 	lui	s4,0x9fc0
9fc02aa0:	26942aa4 	addiu	s4,s4,10916
/home/chooaa/cs_lab/cpu_ex/inst/n27_trap_ex.S:279
9fc02aa4:	048b8000 	tltiu	a0,-32768
/home/chooaa/cs_lab/cpu_ex/inst/n27_trap_ex.S:280
9fc02aa8:	16570014 	bne	s2,s7,9fc02afc <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n27_trap_ex.S:281
9fc02aac:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n27_trap_ex.S:283
9fc02ab0:	3c120000 	lui	s2,0x0
9fc02ab4:	26520009 	addiu	s2,s2,9
/home/chooaa/cs_lab/cpu_ex/inst/n27_trap_ex.S:284
9fc02ab8:	3c04ffff 	lui	a0,0xffff
9fc02abc:	24847f00 	addiu	a0,a0,32512
/home/chooaa/cs_lab/cpu_ex/inst/n27_trap_ex.S:285
9fc02ac0:	3c149fc0 	lui	s4,0x9fc0
9fc02ac4:	26942ac8 	addiu	s4,s4,10952
/home/chooaa/cs_lab/cpu_ex/inst/n27_trap_ex.S:286
9fc02ac8:	048b7f00 	tltiu	a0,32512
/home/chooaa/cs_lab/cpu_ex/inst/n27_trap_ex.S:287
9fc02acc:	1657000b 	bne	s2,s7,9fc02afc <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n27_trap_ex.S:288
9fc02ad0:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n27_trap_ex.S:290
9fc02ad4:	3c120000 	lui	s2,0x0
9fc02ad8:	26520009 	addiu	s2,s2,9
/home/chooaa/cs_lab/cpu_ex/inst/n27_trap_ex.S:291
9fc02adc:	3c040000 	lui	a0,0x0
9fc02ae0:	24847f00 	addiu	a0,a0,32512
/home/chooaa/cs_lab/cpu_ex/inst/n27_trap_ex.S:292
9fc02ae4:	3c149fc0 	lui	s4,0x9fc0
9fc02ae8:	26942aec 	addiu	s4,s4,10988
/home/chooaa/cs_lab/cpu_ex/inst/n27_trap_ex.S:293
9fc02aec:	048b7f00 	tltiu	a0,32512
/home/chooaa/cs_lab/cpu_ex/inst/n27_trap_ex.S:294
9fc02af0:	16570002 	bne	s2,s7,9fc02afc <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n27_trap_ex.S:295
9fc02af4:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n27_trap_ex.S:297
9fc02af8:	26730001 	addiu	s3,s3,1

9fc02afc <inst_error>:
/home/chooaa/cs_lab/cpu_ex/inst/n27_trap_ex.S:300
9fc02afc:	00104e00 	sll	t1,s0,0x18
/home/chooaa/cs_lab/cpu_ex/inst/n27_trap_ex.S:301
9fc02b00:	01334025 	or	t0,t1,s3
/home/chooaa/cs_lab/cpu_ex/inst/n27_trap_ex.S:302
9fc02b04:	ae280000 	sw	t0,0(s1)
/home/chooaa/cs_lab/cpu_ex/inst/n27_trap_ex.S:303
9fc02b08:	03e00008 	jr	ra
/home/chooaa/cs_lab/cpu_ex/inst/n27_trap_ex.S:304
9fc02b0c:	00000000 	nop

9fc02b10 <n24_jal_ds_ex_test>:
/home/chooaa/cs_lab/cpu_ex/inst/n24_jal_ds_ex.S:7
9fc02b10:	03e0b021 	move	s6,ra
/home/chooaa/cs_lab/cpu_ex/inst/n24_jal_ds_ex.S:8
9fc02b14:	26100001 	addiu	s0,s0,1
/home/chooaa/cs_lab/cpu_ex/inst/n24_jal_ds_ex.S:9
9fc02b18:	3c08800d 	lui	t0,0x800d
/home/chooaa/cs_lab/cpu_ex/inst/n24_jal_ds_ex.S:11
9fc02b1c:	40805800 	mtc0	zero,c0_compare
/home/chooaa/cs_lab/cpu_ex/inst/n24_jal_ds_ex.S:12
9fc02b20:	3c170040 	lui	s7,0x40
/home/chooaa/cs_lab/cpu_ex/inst/n24_jal_ds_ex.S:13
9fc02b24:	40976000 	mtc0	s7,c0_status
/home/chooaa/cs_lab/cpu_ex/inst/n24_jal_ds_ex.S:14
9fc02b28:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n24_jal_ds_ex.S:17
9fc02b2c:	24120001 	li	s2,1
/home/chooaa/cs_lab/cpu_ex/inst/n24_jal_ds_ex.S:18
9fc02b30:	3c170001 	lui	s7,0x1
/home/chooaa/cs_lab/cpu_ex/inst/n24_jal_ds_ex.S:19
9fc02b34:	ad120000 	sw	s2,0(t0)
/home/chooaa/cs_lab/cpu_ex/inst/n24_jal_ds_ex.S:20
9fc02b38:	3c149fc0 	lui	s4,0x9fc0
9fc02b3c:	26942b40 	addiu	s4,s4,11072
/home/chooaa/cs_lab/cpu_ex/inst/n24_jal_ds_ex.S:21
9fc02b40:	0ff00b80 	jal	9fc02e00 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n24_jal_ds_ex.S:22
9fc02b44:	0000000c 	syscall
/home/chooaa/cs_lab/cpu_ex/inst/n24_jal_ds_ex.S:23
9fc02b48:	165700ad 	bne	s2,s7,9fc02e00 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n24_jal_ds_ex.S:24
9fc02b4c:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n24_jal_ds_ex.S:25
9fc02b50:	24120001 	li	s2,1
/home/chooaa/cs_lab/cpu_ex/inst/n24_jal_ds_ex.S:26
9fc02b54:	3c149fc0 	lui	s4,0x9fc0
9fc02b58:	26942b5c 	addiu	s4,s4,11100
/home/chooaa/cs_lab/cpu_ex/inst/n24_jal_ds_ex.S:27
9fc02b5c:	0ff00b80 	jal	9fc02e00 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n24_jal_ds_ex.S:28
9fc02b60:	0000000c 	syscall
/home/chooaa/cs_lab/cpu_ex/inst/n24_jal_ds_ex.S:29
9fc02b64:	165700a6 	bne	s2,s7,9fc02e00 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n24_jal_ds_ex.S:30
9fc02b68:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n24_jal_ds_ex.S:32
9fc02b6c:	24120002 	li	s2,2
/home/chooaa/cs_lab/cpu_ex/inst/n24_jal_ds_ex.S:33
9fc02b70:	3c170002 	lui	s7,0x2
/home/chooaa/cs_lab/cpu_ex/inst/n24_jal_ds_ex.S:34
9fc02b74:	ad120000 	sw	s2,0(t0)
/home/chooaa/cs_lab/cpu_ex/inst/n24_jal_ds_ex.S:35
9fc02b78:	3c149fc0 	lui	s4,0x9fc0
9fc02b7c:	26942b80 	addiu	s4,s4,11136
/home/chooaa/cs_lab/cpu_ex/inst/n24_jal_ds_ex.S:36
9fc02b80:	0ff00b80 	jal	9fc02e00 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n24_jal_ds_ex.S:37
9fc02b84:	0000000d 	break
/home/chooaa/cs_lab/cpu_ex/inst/n24_jal_ds_ex.S:38
9fc02b88:	1657009d 	bne	s2,s7,9fc02e00 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n24_jal_ds_ex.S:39
9fc02b8c:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n24_jal_ds_ex.S:40
9fc02b90:	24120002 	li	s2,2
/home/chooaa/cs_lab/cpu_ex/inst/n24_jal_ds_ex.S:41
9fc02b94:	3c149fc0 	lui	s4,0x9fc0
9fc02b98:	26942b9c 	addiu	s4,s4,11164
/home/chooaa/cs_lab/cpu_ex/inst/n24_jal_ds_ex.S:42
9fc02b9c:	0ff00b80 	jal	9fc02e00 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n24_jal_ds_ex.S:43
9fc02ba0:	0000000d 	break
/home/chooaa/cs_lab/cpu_ex/inst/n24_jal_ds_ex.S:44
9fc02ba4:	16570096 	bne	s2,s7,9fc02e00 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n24_jal_ds_ex.S:45
9fc02ba8:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n24_jal_ds_ex.S:47
9fc02bac:	24120003 	li	s2,3
/home/chooaa/cs_lab/cpu_ex/inst/n24_jal_ds_ex.S:48
9fc02bb0:	3c170003 	lui	s7,0x3
/home/chooaa/cs_lab/cpu_ex/inst/n24_jal_ds_ex.S:49
9fc02bb4:	ad120000 	sw	s2,0(t0)
/home/chooaa/cs_lab/cpu_ex/inst/n24_jal_ds_ex.S:50
9fc02bb8:	3c149fc0 	lui	s4,0x9fc0
9fc02bbc:	26942bd0 	addiu	s4,s4,11216
/home/chooaa/cs_lab/cpu_ex/inst/n24_jal_ds_ex.S:51
9fc02bc0:	3c04ba03 	lui	a0,0xba03
9fc02bc4:	34844f60 	ori	a0,a0,0x4f60
/home/chooaa/cs_lab/cpu_ex/inst/n24_jal_ds_ex.S:52
9fc02bc8:	3c05b615 	lui	a1,0xb615
9fc02bcc:	34a5fd67 	ori	a1,a1,0xfd67
/home/chooaa/cs_lab/cpu_ex/inst/n24_jal_ds_ex.S:53
9fc02bd0:	0ff00b80 	jal	9fc02e00 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n24_jal_ds_ex.S:54
9fc02bd4:	0085b820 	add	s7,a0,a1
/home/chooaa/cs_lab/cpu_ex/inst/n24_jal_ds_ex.S:55
9fc02bd8:	16570089 	bne	s2,s7,9fc02e00 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n24_jal_ds_ex.S:56
9fc02bdc:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n24_jal_ds_ex.S:57
9fc02be0:	24120003 	li	s2,3
/home/chooaa/cs_lab/cpu_ex/inst/n24_jal_ds_ex.S:58
9fc02be4:	3c149fc0 	lui	s4,0x9fc0
9fc02be8:	26942bec 	addiu	s4,s4,11244
/home/chooaa/cs_lab/cpu_ex/inst/n24_jal_ds_ex.S:59
9fc02bec:	0ff00b80 	jal	9fc02e00 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n24_jal_ds_ex.S:60
9fc02bf0:	0085b820 	add	s7,a0,a1
/home/chooaa/cs_lab/cpu_ex/inst/n24_jal_ds_ex.S:61
9fc02bf4:	ad170000 	sw	s7,0(t0)
/home/chooaa/cs_lab/cpu_ex/inst/n24_jal_ds_ex.S:62
9fc02bf8:	16570081 	bne	s2,s7,9fc02e00 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n24_jal_ds_ex.S:63
9fc02bfc:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n24_jal_ds_ex.S:64
9fc02c00:	24120003 	li	s2,3
/home/chooaa/cs_lab/cpu_ex/inst/n24_jal_ds_ex.S:65
9fc02c04:	ad120000 	sw	s2,0(t0)
/home/chooaa/cs_lab/cpu_ex/inst/n24_jal_ds_ex.S:66
9fc02c08:	3c149fc0 	lui	s4,0x9fc0
9fc02c0c:	26942c18 	addiu	s4,s4,11288
/home/chooaa/cs_lab/cpu_ex/inst/n24_jal_ds_ex.S:67
9fc02c10:	3c047fff 	lui	a0,0x7fff
9fc02c14:	3484c19e 	ori	a0,a0,0xc19e
/home/chooaa/cs_lab/cpu_ex/inst/n24_jal_ds_ex.S:68
9fc02c18:	0ff00b80 	jal	9fc02e00 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n24_jal_ds_ex.S:69
9fc02c1c:	20976512 	addi	s7,a0,25874
/home/chooaa/cs_lab/cpu_ex/inst/n24_jal_ds_ex.S:70
9fc02c20:	16570077 	bne	s2,s7,9fc02e00 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n24_jal_ds_ex.S:71
9fc02c24:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n24_jal_ds_ex.S:72
9fc02c28:	24120003 	li	s2,3
/home/chooaa/cs_lab/cpu_ex/inst/n24_jal_ds_ex.S:73
9fc02c2c:	3c149fc0 	lui	s4,0x9fc0
9fc02c30:	26942c34 	addiu	s4,s4,11316
/home/chooaa/cs_lab/cpu_ex/inst/n24_jal_ds_ex.S:74
9fc02c34:	0ff00b80 	jal	9fc02e00 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n24_jal_ds_ex.S:75
9fc02c38:	20976512 	addi	s7,a0,25874
/home/chooaa/cs_lab/cpu_ex/inst/n24_jal_ds_ex.S:76
9fc02c3c:	16570070 	bne	s2,s7,9fc02e00 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n24_jal_ds_ex.S:77
9fc02c40:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n24_jal_ds_ex.S:78
9fc02c44:	24120003 	li	s2,3
/home/chooaa/cs_lab/cpu_ex/inst/n24_jal_ds_ex.S:79
9fc02c48:	3c149fc0 	lui	s4,0x9fc0
9fc02c4c:	26942c60 	addiu	s4,s4,11360
/home/chooaa/cs_lab/cpu_ex/inst/n24_jal_ds_ex.S:80
9fc02c50:	3c04a85e 	lui	a0,0xa85e
9fc02c54:	34847d00 	ori	a0,a0,0x7d00
/home/chooaa/cs_lab/cpu_ex/inst/n24_jal_ds_ex.S:81
9fc02c58:	3c056b7e 	lui	a1,0x6b7e
9fc02c5c:	34a58e36 	ori	a1,a1,0x8e36
/home/chooaa/cs_lab/cpu_ex/inst/n24_jal_ds_ex.S:82
9fc02c60:	0ff00b80 	jal	9fc02e00 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n24_jal_ds_ex.S:83
9fc02c64:	0085b822 	sub	s7,a0,a1
/home/chooaa/cs_lab/cpu_ex/inst/n24_jal_ds_ex.S:84
9fc02c68:	16570065 	bne	s2,s7,9fc02e00 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n24_jal_ds_ex.S:85
9fc02c6c:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n24_jal_ds_ex.S:86
9fc02c70:	24120003 	li	s2,3
/home/chooaa/cs_lab/cpu_ex/inst/n24_jal_ds_ex.S:87
9fc02c74:	3c149fc0 	lui	s4,0x9fc0
9fc02c78:	26942c7c 	addiu	s4,s4,11388
/home/chooaa/cs_lab/cpu_ex/inst/n24_jal_ds_ex.S:88
9fc02c7c:	0ff00b80 	jal	9fc02e00 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n24_jal_ds_ex.S:89
9fc02c80:	0085b822 	sub	s7,a0,a1
/home/chooaa/cs_lab/cpu_ex/inst/n24_jal_ds_ex.S:90
9fc02c84:	1657005e 	bne	s2,s7,9fc02e00 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n24_jal_ds_ex.S:91
9fc02c88:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n24_jal_ds_ex.S:93
9fc02c8c:	24120004 	li	s2,4
/home/chooaa/cs_lab/cpu_ex/inst/n24_jal_ds_ex.S:94
9fc02c90:	3c170004 	lui	s7,0x4
/home/chooaa/cs_lab/cpu_ex/inst/n24_jal_ds_ex.S:95
9fc02c94:	ad120000 	sw	s2,0(t0)
/home/chooaa/cs_lab/cpu_ex/inst/n24_jal_ds_ex.S:96
9fc02c98:	3c149fc0 	lui	s4,0x9fc0
9fc02c9c:	26942ca0 	addiu	s4,s4,11424
/home/chooaa/cs_lab/cpu_ex/inst/n24_jal_ds_ex.S:97
9fc02ca0:	0ff00b80 	jal	9fc02e00 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n24_jal_ds_ex.S:98
9fc02ca4:	8d170002 	lw	s7,2(t0)
/home/chooaa/cs_lab/cpu_ex/inst/n24_jal_ds_ex.S:99
9fc02ca8:	16570055 	bne	s2,s7,9fc02e00 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n24_jal_ds_ex.S:100
9fc02cac:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n24_jal_ds_ex.S:101
9fc02cb0:	24120004 	li	s2,4
/home/chooaa/cs_lab/cpu_ex/inst/n24_jal_ds_ex.S:102
9fc02cb4:	3c149fc0 	lui	s4,0x9fc0
9fc02cb8:	26942cbc 	addiu	s4,s4,11452
/home/chooaa/cs_lab/cpu_ex/inst/n24_jal_ds_ex.S:103
9fc02cbc:	0ff00b80 	jal	9fc02e00 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n24_jal_ds_ex.S:104
9fc02cc0:	8d170002 	lw	s7,2(t0)
/home/chooaa/cs_lab/cpu_ex/inst/n24_jal_ds_ex.S:105
9fc02cc4:	1657004e 	bne	s2,s7,9fc02e00 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n24_jal_ds_ex.S:106
9fc02cc8:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n24_jal_ds_ex.S:107
9fc02ccc:	24120004 	li	s2,4
/home/chooaa/cs_lab/cpu_ex/inst/n24_jal_ds_ex.S:108
9fc02cd0:	3c149fc0 	lui	s4,0x9fc0
9fc02cd4:	26942cd8 	addiu	s4,s4,11480
/home/chooaa/cs_lab/cpu_ex/inst/n24_jal_ds_ex.S:109
9fc02cd8:	0ff00b80 	jal	9fc02e00 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n24_jal_ds_ex.S:110
9fc02cdc:	85170001 	lh	s7,1(t0)
/home/chooaa/cs_lab/cpu_ex/inst/n24_jal_ds_ex.S:111
9fc02ce0:	02f2001b 	divu	zero,s7,s2
/home/chooaa/cs_lab/cpu_ex/inst/n24_jal_ds_ex.S:112
9fc02ce4:	16570046 	bne	s2,s7,9fc02e00 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n24_jal_ds_ex.S:113
9fc02ce8:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n24_jal_ds_ex.S:114
9fc02cec:	24120004 	li	s2,4
/home/chooaa/cs_lab/cpu_ex/inst/n24_jal_ds_ex.S:115
9fc02cf0:	3c149fc0 	lui	s4,0x9fc0
9fc02cf4:	26942cf8 	addiu	s4,s4,11512
/home/chooaa/cs_lab/cpu_ex/inst/n24_jal_ds_ex.S:116
9fc02cf8:	0ff00b80 	jal	9fc02e00 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n24_jal_ds_ex.S:117
9fc02cfc:	85170001 	lh	s7,1(t0)
/home/chooaa/cs_lab/cpu_ex/inst/n24_jal_ds_ex.S:118
9fc02d00:	1657003f 	bne	s2,s7,9fc02e00 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n24_jal_ds_ex.S:119
9fc02d04:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n24_jal_ds_ex.S:120
9fc02d08:	3c149fc0 	lui	s4,0x9fc0
9fc02d0c:	26942d10 	addiu	s4,s4,11536
/home/chooaa/cs_lab/cpu_ex/inst/n24_jal_ds_ex.S:121
9fc02d10:	0ff00b80 	jal	9fc02e00 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n24_jal_ds_ex.S:122
9fc02d14:	95170003 	lhu	s7,3(t0)
/home/chooaa/cs_lab/cpu_ex/inst/n24_jal_ds_ex.S:123
9fc02d18:	16570039 	bne	s2,s7,9fc02e00 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n24_jal_ds_ex.S:124
9fc02d1c:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n24_jal_ds_ex.S:125
9fc02d20:	24120004 	li	s2,4
/home/chooaa/cs_lab/cpu_ex/inst/n24_jal_ds_ex.S:126
9fc02d24:	3c149fc0 	lui	s4,0x9fc0
9fc02d28:	26942d2c 	addiu	s4,s4,11564
/home/chooaa/cs_lab/cpu_ex/inst/n24_jal_ds_ex.S:127
9fc02d2c:	0ff00b80 	jal	9fc02e00 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n24_jal_ds_ex.S:128
9fc02d30:	95170003 	lhu	s7,3(t0)
/home/chooaa/cs_lab/cpu_ex/inst/n24_jal_ds_ex.S:129
9fc02d34:	16570032 	bne	s2,s7,9fc02e00 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n24_jal_ds_ex.S:130
9fc02d38:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n24_jal_ds_ex.S:132
9fc02d3c:	24120005 	li	s2,5
/home/chooaa/cs_lab/cpu_ex/inst/n24_jal_ds_ex.S:133
9fc02d40:	3c170005 	lui	s7,0x5
/home/chooaa/cs_lab/cpu_ex/inst/n24_jal_ds_ex.S:134
9fc02d44:	ad120000 	sw	s2,0(t0)
/home/chooaa/cs_lab/cpu_ex/inst/n24_jal_ds_ex.S:135
9fc02d48:	3c149fc0 	lui	s4,0x9fc0
9fc02d4c:	26942d50 	addiu	s4,s4,11600
/home/chooaa/cs_lab/cpu_ex/inst/n24_jal_ds_ex.S:136
9fc02d50:	0ff00b80 	jal	9fc02e00 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n24_jal_ds_ex.S:137
9fc02d54:	ad170002 	sw	s7,2(t0)
/home/chooaa/cs_lab/cpu_ex/inst/n24_jal_ds_ex.S:138
9fc02d58:	16570029 	bne	s2,s7,9fc02e00 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n24_jal_ds_ex.S:139
9fc02d5c:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n24_jal_ds_ex.S:140
9fc02d60:	24120005 	li	s2,5
/home/chooaa/cs_lab/cpu_ex/inst/n24_jal_ds_ex.S:141
9fc02d64:	3c149fc0 	lui	s4,0x9fc0
9fc02d68:	26942d6c 	addiu	s4,s4,11628
/home/chooaa/cs_lab/cpu_ex/inst/n24_jal_ds_ex.S:142
9fc02d6c:	0ff00b80 	jal	9fc02e00 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n24_jal_ds_ex.S:143
9fc02d70:	ad170002 	sw	s7,2(t0)
/home/chooaa/cs_lab/cpu_ex/inst/n24_jal_ds_ex.S:144
9fc02d74:	16570022 	bne	s2,s7,9fc02e00 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n24_jal_ds_ex.S:145
9fc02d78:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n24_jal_ds_ex.S:146
9fc02d7c:	24120005 	li	s2,5
/home/chooaa/cs_lab/cpu_ex/inst/n24_jal_ds_ex.S:147
9fc02d80:	3c149fc0 	lui	s4,0x9fc0
9fc02d84:	26942d88 	addiu	s4,s4,11656
/home/chooaa/cs_lab/cpu_ex/inst/n24_jal_ds_ex.S:148
9fc02d88:	0ff00b80 	jal	9fc02e00 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n24_jal_ds_ex.S:149
9fc02d8c:	a5170001 	sh	s7,1(t0)
/home/chooaa/cs_lab/cpu_ex/inst/n24_jal_ds_ex.S:150
9fc02d90:	1657001b 	bne	s2,s7,9fc02e00 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n24_jal_ds_ex.S:151
9fc02d94:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n24_jal_ds_ex.S:152
9fc02d98:	24120005 	li	s2,5
/home/chooaa/cs_lab/cpu_ex/inst/n24_jal_ds_ex.S:153
9fc02d9c:	3c149fc0 	lui	s4,0x9fc0
9fc02da0:	26942da4 	addiu	s4,s4,11684
/home/chooaa/cs_lab/cpu_ex/inst/n24_jal_ds_ex.S:154
9fc02da4:	0ff00b80 	jal	9fc02e00 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n24_jal_ds_ex.S:155
9fc02da8:	a5170001 	sh	s7,1(t0)
/home/chooaa/cs_lab/cpu_ex/inst/n24_jal_ds_ex.S:156
9fc02dac:	16570014 	bne	s2,s7,9fc02e00 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n24_jal_ds_ex.S:157
9fc02db0:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n24_jal_ds_ex.S:160
9fc02db4:	24120007 	li	s2,7
/home/chooaa/cs_lab/cpu_ex/inst/n24_jal_ds_ex.S:161
9fc02db8:	3c170007 	lui	s7,0x7
/home/chooaa/cs_lab/cpu_ex/inst/n24_jal_ds_ex.S:162
9fc02dbc:	ad120000 	sw	s2,0(t0)
/home/chooaa/cs_lab/cpu_ex/inst/n24_jal_ds_ex.S:163
9fc02dc0:	3c149fc0 	lui	s4,0x9fc0
9fc02dc4:	26942dc8 	addiu	s4,s4,11720
/home/chooaa/cs_lab/cpu_ex/inst/n24_jal_ds_ex.S:164
9fc02dc8:	0ff00b80 	jal	9fc02e00 <inst_error>
9fc02dcc:	9e3c56aa 	0x9e3c56aa
/home/chooaa/cs_lab/cpu_ex/inst/n24_jal_ds_ex.S:166
9fc02dd0:	02f20018 	mult	s7,s2
/home/chooaa/cs_lab/cpu_ex/inst/n24_jal_ds_ex.S:167
9fc02dd4:	1657000a 	bne	s2,s7,9fc02e00 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n24_jal_ds_ex.S:168
9fc02dd8:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n24_jal_ds_ex.S:169
9fc02ddc:	24120007 	li	s2,7
/home/chooaa/cs_lab/cpu_ex/inst/n24_jal_ds_ex.S:170
9fc02de0:	3c149fc0 	lui	s4,0x9fc0
9fc02de4:	26942dec 	addiu	s4,s4,11756
/home/chooaa/cs_lab/cpu_ex/inst/n24_jal_ds_ex.S:171
9fc02de8:	02f20018 	mult	s7,s2
/home/chooaa/cs_lab/cpu_ex/inst/n24_jal_ds_ex.S:172
9fc02dec:	0ff00b80 	jal	9fc02e00 <inst_error>
9fc02df0:	ec1ba960 	swc3	$27,-22176(zero)
/home/chooaa/cs_lab/cpu_ex/inst/n24_jal_ds_ex.S:174
9fc02df4:	16570002 	bne	s2,s7,9fc02e00 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n24_jal_ds_ex.S:175
9fc02df8:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n24_jal_ds_ex.S:177
9fc02dfc:	26730001 	addiu	s3,s3,1

9fc02e00 <inst_error>:
/home/chooaa/cs_lab/cpu_ex/inst/n24_jal_ds_ex.S:180
9fc02e00:	00104e00 	sll	t1,s0,0x18
/home/chooaa/cs_lab/cpu_ex/inst/n24_jal_ds_ex.S:181
9fc02e04:	01334025 	or	t0,t1,s3
/home/chooaa/cs_lab/cpu_ex/inst/n24_jal_ds_ex.S:182
9fc02e08:	ae280000 	sw	t0,0(s1)
/home/chooaa/cs_lab/cpu_ex/inst/n24_jal_ds_ex.S:183
9fc02e0c:	02c0f821 	move	ra,s6
/home/chooaa/cs_lab/cpu_ex/inst/n24_jal_ds_ex.S:184
9fc02e10:	03e00008 	jr	ra
/home/chooaa/cs_lab/cpu_ex/inst/n24_jal_ds_ex.S:185
9fc02e14:	00000000 	nop
	...

9fc02e20 <n20_bltz_ds_ex_test>:
/home/chooaa/cs_lab/cpu_ex/inst/n20_bltz_ds_ex.S:7
9fc02e20:	26100001 	addiu	s0,s0,1
/home/chooaa/cs_lab/cpu_ex/inst/n20_bltz_ds_ex.S:8
9fc02e24:	3c08800d 	lui	t0,0x800d
/home/chooaa/cs_lab/cpu_ex/inst/n20_bltz_ds_ex.S:10
9fc02e28:	40805800 	mtc0	zero,c0_compare
/home/chooaa/cs_lab/cpu_ex/inst/n20_bltz_ds_ex.S:11
9fc02e2c:	3c170040 	lui	s7,0x40
/home/chooaa/cs_lab/cpu_ex/inst/n20_bltz_ds_ex.S:12
9fc02e30:	40976000 	mtc0	s7,c0_status
/home/chooaa/cs_lab/cpu_ex/inst/n20_bltz_ds_ex.S:13
9fc02e34:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n20_bltz_ds_ex.S:16
9fc02e38:	24120001 	li	s2,1
/home/chooaa/cs_lab/cpu_ex/inst/n20_bltz_ds_ex.S:17
9fc02e3c:	3c170001 	lui	s7,0x1
/home/chooaa/cs_lab/cpu_ex/inst/n20_bltz_ds_ex.S:18
9fc02e40:	ad120000 	sw	s2,0(t0)
/home/chooaa/cs_lab/cpu_ex/inst/n20_bltz_ds_ex.S:19
9fc02e44:	3c149fc0 	lui	s4,0x9fc0
9fc02e48:	26942e4c 	addiu	s4,s4,11852
/home/chooaa/cs_lab/cpu_ex/inst/n20_bltz_ds_ex.S:20
9fc02e4c:	050000af 	bltz	t0,9fc0310c <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n20_bltz_ds_ex.S:21
9fc02e50:	0000000c 	syscall
/home/chooaa/cs_lab/cpu_ex/inst/n20_bltz_ds_ex.S:22
9fc02e54:	165700ad 	bne	s2,s7,9fc0310c <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n20_bltz_ds_ex.S:23
9fc02e58:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n20_bltz_ds_ex.S:24
9fc02e5c:	24120001 	li	s2,1
/home/chooaa/cs_lab/cpu_ex/inst/n20_bltz_ds_ex.S:25
9fc02e60:	3c149fc0 	lui	s4,0x9fc0
9fc02e64:	26942e68 	addiu	s4,s4,11880
/home/chooaa/cs_lab/cpu_ex/inst/n20_bltz_ds_ex.S:26
9fc02e68:	064000a8 	bltz	s2,9fc0310c <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n20_bltz_ds_ex.S:27
9fc02e6c:	0000000c 	syscall
/home/chooaa/cs_lab/cpu_ex/inst/n20_bltz_ds_ex.S:28
9fc02e70:	165700a6 	bne	s2,s7,9fc0310c <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n20_bltz_ds_ex.S:29
9fc02e74:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n20_bltz_ds_ex.S:31
9fc02e78:	24120002 	li	s2,2
/home/chooaa/cs_lab/cpu_ex/inst/n20_bltz_ds_ex.S:32
9fc02e7c:	3c170002 	lui	s7,0x2
/home/chooaa/cs_lab/cpu_ex/inst/n20_bltz_ds_ex.S:33
9fc02e80:	ad120000 	sw	s2,0(t0)
/home/chooaa/cs_lab/cpu_ex/inst/n20_bltz_ds_ex.S:34
9fc02e84:	3c149fc0 	lui	s4,0x9fc0
9fc02e88:	26942e8c 	addiu	s4,s4,11916
/home/chooaa/cs_lab/cpu_ex/inst/n20_bltz_ds_ex.S:35
9fc02e8c:	0500009f 	bltz	t0,9fc0310c <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n20_bltz_ds_ex.S:36
9fc02e90:	0000000d 	break
/home/chooaa/cs_lab/cpu_ex/inst/n20_bltz_ds_ex.S:37
9fc02e94:	1657009d 	bne	s2,s7,9fc0310c <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n20_bltz_ds_ex.S:38
9fc02e98:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n20_bltz_ds_ex.S:39
9fc02e9c:	24120002 	li	s2,2
/home/chooaa/cs_lab/cpu_ex/inst/n20_bltz_ds_ex.S:40
9fc02ea0:	3c149fc0 	lui	s4,0x9fc0
9fc02ea4:	26942ea8 	addiu	s4,s4,11944
/home/chooaa/cs_lab/cpu_ex/inst/n20_bltz_ds_ex.S:41
9fc02ea8:	06400098 	bltz	s2,9fc0310c <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n20_bltz_ds_ex.S:42
9fc02eac:	0000000d 	break
/home/chooaa/cs_lab/cpu_ex/inst/n20_bltz_ds_ex.S:43
9fc02eb0:	16570096 	bne	s2,s7,9fc0310c <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n20_bltz_ds_ex.S:44
9fc02eb4:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n20_bltz_ds_ex.S:46
9fc02eb8:	24120003 	li	s2,3
/home/chooaa/cs_lab/cpu_ex/inst/n20_bltz_ds_ex.S:47
9fc02ebc:	3c170003 	lui	s7,0x3
/home/chooaa/cs_lab/cpu_ex/inst/n20_bltz_ds_ex.S:48
9fc02ec0:	ad120000 	sw	s2,0(t0)
/home/chooaa/cs_lab/cpu_ex/inst/n20_bltz_ds_ex.S:49
9fc02ec4:	3c149fc0 	lui	s4,0x9fc0
9fc02ec8:	26942edc 	addiu	s4,s4,11996
/home/chooaa/cs_lab/cpu_ex/inst/n20_bltz_ds_ex.S:50
9fc02ecc:	3c04ba03 	lui	a0,0xba03
9fc02ed0:	34844f60 	ori	a0,a0,0x4f60
/home/chooaa/cs_lab/cpu_ex/inst/n20_bltz_ds_ex.S:51
9fc02ed4:	3c05b615 	lui	a1,0xb615
9fc02ed8:	34a5fd67 	ori	a1,a1,0xfd67
/home/chooaa/cs_lab/cpu_ex/inst/n20_bltz_ds_ex.S:52
9fc02edc:	0500008b 	bltz	t0,9fc0310c <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n20_bltz_ds_ex.S:53
9fc02ee0:	0085b820 	add	s7,a0,a1
/home/chooaa/cs_lab/cpu_ex/inst/n20_bltz_ds_ex.S:54
9fc02ee4:	16570089 	bne	s2,s7,9fc0310c <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n20_bltz_ds_ex.S:55
9fc02ee8:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n20_bltz_ds_ex.S:56
9fc02eec:	24120003 	li	s2,3
/home/chooaa/cs_lab/cpu_ex/inst/n20_bltz_ds_ex.S:57
9fc02ef0:	3c149fc0 	lui	s4,0x9fc0
9fc02ef4:	26942ef8 	addiu	s4,s4,12024
/home/chooaa/cs_lab/cpu_ex/inst/n20_bltz_ds_ex.S:58
9fc02ef8:	06400084 	bltz	s2,9fc0310c <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n20_bltz_ds_ex.S:59
9fc02efc:	0085b820 	add	s7,a0,a1
/home/chooaa/cs_lab/cpu_ex/inst/n20_bltz_ds_ex.S:60
9fc02f00:	ad170000 	sw	s7,0(t0)
/home/chooaa/cs_lab/cpu_ex/inst/n20_bltz_ds_ex.S:61
9fc02f04:	16570081 	bne	s2,s7,9fc0310c <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n20_bltz_ds_ex.S:62
9fc02f08:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n20_bltz_ds_ex.S:63
9fc02f0c:	24120003 	li	s2,3
/home/chooaa/cs_lab/cpu_ex/inst/n20_bltz_ds_ex.S:64
9fc02f10:	ad120000 	sw	s2,0(t0)
/home/chooaa/cs_lab/cpu_ex/inst/n20_bltz_ds_ex.S:65
9fc02f14:	3c149fc0 	lui	s4,0x9fc0
9fc02f18:	26942f24 	addiu	s4,s4,12068
/home/chooaa/cs_lab/cpu_ex/inst/n20_bltz_ds_ex.S:66
9fc02f1c:	3c047fff 	lui	a0,0x7fff
9fc02f20:	3484c19e 	ori	a0,a0,0xc19e
/home/chooaa/cs_lab/cpu_ex/inst/n20_bltz_ds_ex.S:67
9fc02f24:	05000079 	bltz	t0,9fc0310c <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n20_bltz_ds_ex.S:68
9fc02f28:	20976512 	addi	s7,a0,25874
/home/chooaa/cs_lab/cpu_ex/inst/n20_bltz_ds_ex.S:69
9fc02f2c:	16570077 	bne	s2,s7,9fc0310c <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n20_bltz_ds_ex.S:70
9fc02f30:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n20_bltz_ds_ex.S:71
9fc02f34:	24120003 	li	s2,3
/home/chooaa/cs_lab/cpu_ex/inst/n20_bltz_ds_ex.S:72
9fc02f38:	3c149fc0 	lui	s4,0x9fc0
9fc02f3c:	26942f40 	addiu	s4,s4,12096
/home/chooaa/cs_lab/cpu_ex/inst/n20_bltz_ds_ex.S:73
9fc02f40:	06400072 	bltz	s2,9fc0310c <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n20_bltz_ds_ex.S:74
9fc02f44:	20976512 	addi	s7,a0,25874
/home/chooaa/cs_lab/cpu_ex/inst/n20_bltz_ds_ex.S:75
9fc02f48:	16570070 	bne	s2,s7,9fc0310c <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n20_bltz_ds_ex.S:76
9fc02f4c:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n20_bltz_ds_ex.S:77
9fc02f50:	24120003 	li	s2,3
/home/chooaa/cs_lab/cpu_ex/inst/n20_bltz_ds_ex.S:78
9fc02f54:	3c149fc0 	lui	s4,0x9fc0
9fc02f58:	26942f6c 	addiu	s4,s4,12140
/home/chooaa/cs_lab/cpu_ex/inst/n20_bltz_ds_ex.S:79
9fc02f5c:	3c04a85e 	lui	a0,0xa85e
9fc02f60:	34847d00 	ori	a0,a0,0x7d00
/home/chooaa/cs_lab/cpu_ex/inst/n20_bltz_ds_ex.S:80
9fc02f64:	3c056b7e 	lui	a1,0x6b7e
9fc02f68:	34a58e36 	ori	a1,a1,0x8e36
/home/chooaa/cs_lab/cpu_ex/inst/n20_bltz_ds_ex.S:81
9fc02f6c:	05000067 	bltz	t0,9fc0310c <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n20_bltz_ds_ex.S:82
9fc02f70:	0085b822 	sub	s7,a0,a1
/home/chooaa/cs_lab/cpu_ex/inst/n20_bltz_ds_ex.S:83
9fc02f74:	16570065 	bne	s2,s7,9fc0310c <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n20_bltz_ds_ex.S:84
9fc02f78:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n20_bltz_ds_ex.S:85
9fc02f7c:	24120003 	li	s2,3
/home/chooaa/cs_lab/cpu_ex/inst/n20_bltz_ds_ex.S:86
9fc02f80:	3c149fc0 	lui	s4,0x9fc0
9fc02f84:	26942f88 	addiu	s4,s4,12168
/home/chooaa/cs_lab/cpu_ex/inst/n20_bltz_ds_ex.S:87
9fc02f88:	06400060 	bltz	s2,9fc0310c <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n20_bltz_ds_ex.S:88
9fc02f8c:	0085b822 	sub	s7,a0,a1
/home/chooaa/cs_lab/cpu_ex/inst/n20_bltz_ds_ex.S:89
9fc02f90:	1657005e 	bne	s2,s7,9fc0310c <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n20_bltz_ds_ex.S:90
9fc02f94:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n20_bltz_ds_ex.S:92
9fc02f98:	24120004 	li	s2,4
/home/chooaa/cs_lab/cpu_ex/inst/n20_bltz_ds_ex.S:93
9fc02f9c:	3c170004 	lui	s7,0x4
/home/chooaa/cs_lab/cpu_ex/inst/n20_bltz_ds_ex.S:94
9fc02fa0:	ad120000 	sw	s2,0(t0)
/home/chooaa/cs_lab/cpu_ex/inst/n20_bltz_ds_ex.S:95
9fc02fa4:	3c149fc0 	lui	s4,0x9fc0
9fc02fa8:	26942fac 	addiu	s4,s4,12204
/home/chooaa/cs_lab/cpu_ex/inst/n20_bltz_ds_ex.S:96
9fc02fac:	05000057 	bltz	t0,9fc0310c <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n20_bltz_ds_ex.S:97
9fc02fb0:	8d170002 	lw	s7,2(t0)
/home/chooaa/cs_lab/cpu_ex/inst/n20_bltz_ds_ex.S:98
9fc02fb4:	16570055 	bne	s2,s7,9fc0310c <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n20_bltz_ds_ex.S:99
9fc02fb8:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n20_bltz_ds_ex.S:100
9fc02fbc:	24120004 	li	s2,4
/home/chooaa/cs_lab/cpu_ex/inst/n20_bltz_ds_ex.S:101
9fc02fc0:	3c149fc0 	lui	s4,0x9fc0
9fc02fc4:	26942fc8 	addiu	s4,s4,12232
/home/chooaa/cs_lab/cpu_ex/inst/n20_bltz_ds_ex.S:102
9fc02fc8:	06400050 	bltz	s2,9fc0310c <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n20_bltz_ds_ex.S:103
9fc02fcc:	8d170002 	lw	s7,2(t0)
/home/chooaa/cs_lab/cpu_ex/inst/n20_bltz_ds_ex.S:104
9fc02fd0:	1657004e 	bne	s2,s7,9fc0310c <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n20_bltz_ds_ex.S:105
9fc02fd4:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n20_bltz_ds_ex.S:106
9fc02fd8:	24120004 	li	s2,4
/home/chooaa/cs_lab/cpu_ex/inst/n20_bltz_ds_ex.S:107
9fc02fdc:	3c149fc0 	lui	s4,0x9fc0
9fc02fe0:	26942fe4 	addiu	s4,s4,12260
/home/chooaa/cs_lab/cpu_ex/inst/n20_bltz_ds_ex.S:108
9fc02fe4:	05000049 	bltz	t0,9fc0310c <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n20_bltz_ds_ex.S:109
9fc02fe8:	85170001 	lh	s7,1(t0)
/home/chooaa/cs_lab/cpu_ex/inst/n20_bltz_ds_ex.S:110
9fc02fec:	02f2001b 	divu	zero,s7,s2
/home/chooaa/cs_lab/cpu_ex/inst/n20_bltz_ds_ex.S:111
9fc02ff0:	16570046 	bne	s2,s7,9fc0310c <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n20_bltz_ds_ex.S:112
9fc02ff4:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n20_bltz_ds_ex.S:113
9fc02ff8:	24120004 	li	s2,4
/home/chooaa/cs_lab/cpu_ex/inst/n20_bltz_ds_ex.S:114
9fc02ffc:	3c149fc0 	lui	s4,0x9fc0
9fc03000:	26943004 	addiu	s4,s4,12292
/home/chooaa/cs_lab/cpu_ex/inst/n20_bltz_ds_ex.S:115
9fc03004:	06400041 	bltz	s2,9fc0310c <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n20_bltz_ds_ex.S:116
9fc03008:	85170001 	lh	s7,1(t0)
/home/chooaa/cs_lab/cpu_ex/inst/n20_bltz_ds_ex.S:117
9fc0300c:	1657003f 	bne	s2,s7,9fc0310c <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n20_bltz_ds_ex.S:118
9fc03010:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n20_bltz_ds_ex.S:119
9fc03014:	3c149fc0 	lui	s4,0x9fc0
9fc03018:	2694301c 	addiu	s4,s4,12316
/home/chooaa/cs_lab/cpu_ex/inst/n20_bltz_ds_ex.S:120
9fc0301c:	0500003b 	bltz	t0,9fc0310c <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n20_bltz_ds_ex.S:121
9fc03020:	95170003 	lhu	s7,3(t0)
/home/chooaa/cs_lab/cpu_ex/inst/n20_bltz_ds_ex.S:122
9fc03024:	16570039 	bne	s2,s7,9fc0310c <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n20_bltz_ds_ex.S:123
9fc03028:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n20_bltz_ds_ex.S:124
9fc0302c:	24120004 	li	s2,4
/home/chooaa/cs_lab/cpu_ex/inst/n20_bltz_ds_ex.S:125
9fc03030:	3c149fc0 	lui	s4,0x9fc0
9fc03034:	26943038 	addiu	s4,s4,12344
/home/chooaa/cs_lab/cpu_ex/inst/n20_bltz_ds_ex.S:126
9fc03038:	06400034 	bltz	s2,9fc0310c <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n20_bltz_ds_ex.S:127
9fc0303c:	95170003 	lhu	s7,3(t0)
/home/chooaa/cs_lab/cpu_ex/inst/n20_bltz_ds_ex.S:128
9fc03040:	16570032 	bne	s2,s7,9fc0310c <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n20_bltz_ds_ex.S:129
9fc03044:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n20_bltz_ds_ex.S:131
9fc03048:	24120005 	li	s2,5
/home/chooaa/cs_lab/cpu_ex/inst/n20_bltz_ds_ex.S:132
9fc0304c:	3c170005 	lui	s7,0x5
/home/chooaa/cs_lab/cpu_ex/inst/n20_bltz_ds_ex.S:133
9fc03050:	ad120000 	sw	s2,0(t0)
/home/chooaa/cs_lab/cpu_ex/inst/n20_bltz_ds_ex.S:134
9fc03054:	3c149fc0 	lui	s4,0x9fc0
9fc03058:	2694305c 	addiu	s4,s4,12380
/home/chooaa/cs_lab/cpu_ex/inst/n20_bltz_ds_ex.S:135
9fc0305c:	0500002b 	bltz	t0,9fc0310c <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n20_bltz_ds_ex.S:136
9fc03060:	ad170002 	sw	s7,2(t0)
/home/chooaa/cs_lab/cpu_ex/inst/n20_bltz_ds_ex.S:137
9fc03064:	16570029 	bne	s2,s7,9fc0310c <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n20_bltz_ds_ex.S:138
9fc03068:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n20_bltz_ds_ex.S:139
9fc0306c:	24120005 	li	s2,5
/home/chooaa/cs_lab/cpu_ex/inst/n20_bltz_ds_ex.S:140
9fc03070:	3c149fc0 	lui	s4,0x9fc0
9fc03074:	26943078 	addiu	s4,s4,12408
/home/chooaa/cs_lab/cpu_ex/inst/n20_bltz_ds_ex.S:141
9fc03078:	06400024 	bltz	s2,9fc0310c <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n20_bltz_ds_ex.S:142
9fc0307c:	ad170002 	sw	s7,2(t0)
/home/chooaa/cs_lab/cpu_ex/inst/n20_bltz_ds_ex.S:143
9fc03080:	16570022 	bne	s2,s7,9fc0310c <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n20_bltz_ds_ex.S:144
9fc03084:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n20_bltz_ds_ex.S:145
9fc03088:	24120005 	li	s2,5
/home/chooaa/cs_lab/cpu_ex/inst/n20_bltz_ds_ex.S:146
9fc0308c:	3c149fc0 	lui	s4,0x9fc0
9fc03090:	26943094 	addiu	s4,s4,12436
/home/chooaa/cs_lab/cpu_ex/inst/n20_bltz_ds_ex.S:147
9fc03094:	0500001d 	bltz	t0,9fc0310c <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n20_bltz_ds_ex.S:148
9fc03098:	a5170001 	sh	s7,1(t0)
/home/chooaa/cs_lab/cpu_ex/inst/n20_bltz_ds_ex.S:149
9fc0309c:	1657001b 	bne	s2,s7,9fc0310c <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n20_bltz_ds_ex.S:150
9fc030a0:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n20_bltz_ds_ex.S:151
9fc030a4:	24120005 	li	s2,5
/home/chooaa/cs_lab/cpu_ex/inst/n20_bltz_ds_ex.S:152
9fc030a8:	3c149fc0 	lui	s4,0x9fc0
9fc030ac:	269430b0 	addiu	s4,s4,12464
/home/chooaa/cs_lab/cpu_ex/inst/n20_bltz_ds_ex.S:153
9fc030b0:	06400016 	bltz	s2,9fc0310c <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n20_bltz_ds_ex.S:154
9fc030b4:	a5170001 	sh	s7,1(t0)
/home/chooaa/cs_lab/cpu_ex/inst/n20_bltz_ds_ex.S:155
9fc030b8:	16570014 	bne	s2,s7,9fc0310c <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n20_bltz_ds_ex.S:156
9fc030bc:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n20_bltz_ds_ex.S:159
9fc030c0:	24120007 	li	s2,7
/home/chooaa/cs_lab/cpu_ex/inst/n20_bltz_ds_ex.S:160
9fc030c4:	3c170007 	lui	s7,0x7
/home/chooaa/cs_lab/cpu_ex/inst/n20_bltz_ds_ex.S:161
9fc030c8:	ad120000 	sw	s2,0(t0)
/home/chooaa/cs_lab/cpu_ex/inst/n20_bltz_ds_ex.S:162
9fc030cc:	3c149fc0 	lui	s4,0x9fc0
9fc030d0:	269430d4 	addiu	s4,s4,12500
/home/chooaa/cs_lab/cpu_ex/inst/n20_bltz_ds_ex.S:163
9fc030d4:	0500000d 	bltz	t0,9fc0310c <inst_error>
9fc030d8:	9e3c56aa 	0x9e3c56aa
/home/chooaa/cs_lab/cpu_ex/inst/n20_bltz_ds_ex.S:165
9fc030dc:	02f20018 	mult	s7,s2
/home/chooaa/cs_lab/cpu_ex/inst/n20_bltz_ds_ex.S:166
9fc030e0:	1657000a 	bne	s2,s7,9fc0310c <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n20_bltz_ds_ex.S:167
9fc030e4:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n20_bltz_ds_ex.S:168
9fc030e8:	24120007 	li	s2,7
/home/chooaa/cs_lab/cpu_ex/inst/n20_bltz_ds_ex.S:169
9fc030ec:	3c149fc0 	lui	s4,0x9fc0
9fc030f0:	269430f8 	addiu	s4,s4,12536
/home/chooaa/cs_lab/cpu_ex/inst/n20_bltz_ds_ex.S:170
9fc030f4:	02f20018 	mult	s7,s2
/home/chooaa/cs_lab/cpu_ex/inst/n20_bltz_ds_ex.S:171
9fc030f8:	06400004 	bltz	s2,9fc0310c <inst_error>
9fc030fc:	ec1ba960 	swc3	$27,-22176(zero)
/home/chooaa/cs_lab/cpu_ex/inst/n20_bltz_ds_ex.S:173
9fc03100:	16570002 	bne	s2,s7,9fc0310c <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n20_bltz_ds_ex.S:174
9fc03104:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n20_bltz_ds_ex.S:176
9fc03108:	26730001 	addiu	s3,s3,1

9fc0310c <inst_error>:
/home/chooaa/cs_lab/cpu_ex/inst/n20_bltz_ds_ex.S:179
9fc0310c:	00104e00 	sll	t1,s0,0x18
/home/chooaa/cs_lab/cpu_ex/inst/n20_bltz_ds_ex.S:180
9fc03110:	01334025 	or	t0,t1,s3
/home/chooaa/cs_lab/cpu_ex/inst/n20_bltz_ds_ex.S:181
9fc03114:	ae280000 	sw	t0,0(s1)
/home/chooaa/cs_lab/cpu_ex/inst/n20_bltz_ds_ex.S:182
9fc03118:	03e00008 	jr	ra
/home/chooaa/cs_lab/cpu_ex/inst/n20_bltz_ds_ex.S:183
9fc0311c:	00000000 	nop

9fc03120 <n23_j_ds_ex_test>:
/home/chooaa/cs_lab/cpu_ex/inst/n23_j_ds_ex.S:7
9fc03120:	26100001 	addiu	s0,s0,1
/home/chooaa/cs_lab/cpu_ex/inst/n23_j_ds_ex.S:8
9fc03124:	3c08800d 	lui	t0,0x800d
/home/chooaa/cs_lab/cpu_ex/inst/n23_j_ds_ex.S:10
9fc03128:	40805800 	mtc0	zero,c0_compare
/home/chooaa/cs_lab/cpu_ex/inst/n23_j_ds_ex.S:11
9fc0312c:	3c170040 	lui	s7,0x40
/home/chooaa/cs_lab/cpu_ex/inst/n23_j_ds_ex.S:12
9fc03130:	40976000 	mtc0	s7,c0_status
/home/chooaa/cs_lab/cpu_ex/inst/n23_j_ds_ex.S:13
9fc03134:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n23_j_ds_ex.S:16
9fc03138:	24120001 	li	s2,1
/home/chooaa/cs_lab/cpu_ex/inst/n23_j_ds_ex.S:17
9fc0313c:	3c170001 	lui	s7,0x1
/home/chooaa/cs_lab/cpu_ex/inst/n23_j_ds_ex.S:18
9fc03140:	ad120000 	sw	s2,0(t0)
/home/chooaa/cs_lab/cpu_ex/inst/n23_j_ds_ex.S:19
9fc03144:	3c149fc0 	lui	s4,0x9fc0
9fc03148:	2694314c 	addiu	s4,s4,12620
/home/chooaa/cs_lab/cpu_ex/inst/n23_j_ds_ex.S:20
9fc0314c:	0bf00d03 	j	9fc0340c <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n23_j_ds_ex.S:21
9fc03150:	0000000c 	syscall
/home/chooaa/cs_lab/cpu_ex/inst/n23_j_ds_ex.S:22
9fc03154:	165700ad 	bne	s2,s7,9fc0340c <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n23_j_ds_ex.S:23
9fc03158:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n23_j_ds_ex.S:24
9fc0315c:	24120001 	li	s2,1
/home/chooaa/cs_lab/cpu_ex/inst/n23_j_ds_ex.S:25
9fc03160:	3c149fc0 	lui	s4,0x9fc0
9fc03164:	26943168 	addiu	s4,s4,12648
/home/chooaa/cs_lab/cpu_ex/inst/n23_j_ds_ex.S:26
9fc03168:	0bf00d03 	j	9fc0340c <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n23_j_ds_ex.S:27
9fc0316c:	0000000c 	syscall
/home/chooaa/cs_lab/cpu_ex/inst/n23_j_ds_ex.S:28
9fc03170:	165700a6 	bne	s2,s7,9fc0340c <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n23_j_ds_ex.S:29
9fc03174:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n23_j_ds_ex.S:31
9fc03178:	24120002 	li	s2,2
/home/chooaa/cs_lab/cpu_ex/inst/n23_j_ds_ex.S:32
9fc0317c:	3c170002 	lui	s7,0x2
/home/chooaa/cs_lab/cpu_ex/inst/n23_j_ds_ex.S:33
9fc03180:	ad120000 	sw	s2,0(t0)
/home/chooaa/cs_lab/cpu_ex/inst/n23_j_ds_ex.S:34
9fc03184:	3c149fc0 	lui	s4,0x9fc0
9fc03188:	2694318c 	addiu	s4,s4,12684
/home/chooaa/cs_lab/cpu_ex/inst/n23_j_ds_ex.S:35
9fc0318c:	0bf00d03 	j	9fc0340c <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n23_j_ds_ex.S:36
9fc03190:	0000000d 	break
/home/chooaa/cs_lab/cpu_ex/inst/n23_j_ds_ex.S:37
9fc03194:	1657009d 	bne	s2,s7,9fc0340c <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n23_j_ds_ex.S:38
9fc03198:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n23_j_ds_ex.S:39
9fc0319c:	24120002 	li	s2,2
/home/chooaa/cs_lab/cpu_ex/inst/n23_j_ds_ex.S:40
9fc031a0:	3c149fc0 	lui	s4,0x9fc0
9fc031a4:	269431a8 	addiu	s4,s4,12712
/home/chooaa/cs_lab/cpu_ex/inst/n23_j_ds_ex.S:41
9fc031a8:	0bf00d03 	j	9fc0340c <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n23_j_ds_ex.S:42
9fc031ac:	0000000d 	break
/home/chooaa/cs_lab/cpu_ex/inst/n23_j_ds_ex.S:43
9fc031b0:	16570096 	bne	s2,s7,9fc0340c <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n23_j_ds_ex.S:44
9fc031b4:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n23_j_ds_ex.S:46
9fc031b8:	24120003 	li	s2,3
/home/chooaa/cs_lab/cpu_ex/inst/n23_j_ds_ex.S:47
9fc031bc:	3c170003 	lui	s7,0x3
/home/chooaa/cs_lab/cpu_ex/inst/n23_j_ds_ex.S:48
9fc031c0:	ad120000 	sw	s2,0(t0)
/home/chooaa/cs_lab/cpu_ex/inst/n23_j_ds_ex.S:49
9fc031c4:	3c149fc0 	lui	s4,0x9fc0
9fc031c8:	269431dc 	addiu	s4,s4,12764
/home/chooaa/cs_lab/cpu_ex/inst/n23_j_ds_ex.S:50
9fc031cc:	3c04ba03 	lui	a0,0xba03
9fc031d0:	34844f60 	ori	a0,a0,0x4f60
/home/chooaa/cs_lab/cpu_ex/inst/n23_j_ds_ex.S:51
9fc031d4:	3c05b615 	lui	a1,0xb615
9fc031d8:	34a5fd67 	ori	a1,a1,0xfd67
/home/chooaa/cs_lab/cpu_ex/inst/n23_j_ds_ex.S:52
9fc031dc:	0bf00d03 	j	9fc0340c <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n23_j_ds_ex.S:53
9fc031e0:	0085b820 	add	s7,a0,a1
/home/chooaa/cs_lab/cpu_ex/inst/n23_j_ds_ex.S:54
9fc031e4:	16570089 	bne	s2,s7,9fc0340c <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n23_j_ds_ex.S:55
9fc031e8:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n23_j_ds_ex.S:56
9fc031ec:	24120003 	li	s2,3
/home/chooaa/cs_lab/cpu_ex/inst/n23_j_ds_ex.S:57
9fc031f0:	3c149fc0 	lui	s4,0x9fc0
9fc031f4:	269431f8 	addiu	s4,s4,12792
/home/chooaa/cs_lab/cpu_ex/inst/n23_j_ds_ex.S:58
9fc031f8:	0bf00d03 	j	9fc0340c <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n23_j_ds_ex.S:59
9fc031fc:	0085b820 	add	s7,a0,a1
/home/chooaa/cs_lab/cpu_ex/inst/n23_j_ds_ex.S:60
9fc03200:	ad170000 	sw	s7,0(t0)
/home/chooaa/cs_lab/cpu_ex/inst/n23_j_ds_ex.S:61
9fc03204:	16570081 	bne	s2,s7,9fc0340c <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n23_j_ds_ex.S:62
9fc03208:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n23_j_ds_ex.S:63
9fc0320c:	24120003 	li	s2,3
/home/chooaa/cs_lab/cpu_ex/inst/n23_j_ds_ex.S:64
9fc03210:	ad120000 	sw	s2,0(t0)
/home/chooaa/cs_lab/cpu_ex/inst/n23_j_ds_ex.S:65
9fc03214:	3c149fc0 	lui	s4,0x9fc0
9fc03218:	26943224 	addiu	s4,s4,12836
/home/chooaa/cs_lab/cpu_ex/inst/n23_j_ds_ex.S:66
9fc0321c:	3c047fff 	lui	a0,0x7fff
9fc03220:	3484c19e 	ori	a0,a0,0xc19e
/home/chooaa/cs_lab/cpu_ex/inst/n23_j_ds_ex.S:67
9fc03224:	0bf00d03 	j	9fc0340c <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n23_j_ds_ex.S:68
9fc03228:	20976512 	addi	s7,a0,25874
/home/chooaa/cs_lab/cpu_ex/inst/n23_j_ds_ex.S:69
9fc0322c:	16570077 	bne	s2,s7,9fc0340c <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n23_j_ds_ex.S:70
9fc03230:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n23_j_ds_ex.S:71
9fc03234:	24120003 	li	s2,3
/home/chooaa/cs_lab/cpu_ex/inst/n23_j_ds_ex.S:72
9fc03238:	3c149fc0 	lui	s4,0x9fc0
9fc0323c:	26943240 	addiu	s4,s4,12864
/home/chooaa/cs_lab/cpu_ex/inst/n23_j_ds_ex.S:73
9fc03240:	0bf00d03 	j	9fc0340c <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n23_j_ds_ex.S:74
9fc03244:	20976512 	addi	s7,a0,25874
/home/chooaa/cs_lab/cpu_ex/inst/n23_j_ds_ex.S:75
9fc03248:	16570070 	bne	s2,s7,9fc0340c <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n23_j_ds_ex.S:76
9fc0324c:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n23_j_ds_ex.S:77
9fc03250:	24120003 	li	s2,3
/home/chooaa/cs_lab/cpu_ex/inst/n23_j_ds_ex.S:78
9fc03254:	3c149fc0 	lui	s4,0x9fc0
9fc03258:	2694326c 	addiu	s4,s4,12908
/home/chooaa/cs_lab/cpu_ex/inst/n23_j_ds_ex.S:79
9fc0325c:	3c04a85e 	lui	a0,0xa85e
9fc03260:	34847d00 	ori	a0,a0,0x7d00
/home/chooaa/cs_lab/cpu_ex/inst/n23_j_ds_ex.S:80
9fc03264:	3c056b7e 	lui	a1,0x6b7e
9fc03268:	34a58e36 	ori	a1,a1,0x8e36
/home/chooaa/cs_lab/cpu_ex/inst/n23_j_ds_ex.S:81
9fc0326c:	0bf00d03 	j	9fc0340c <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n23_j_ds_ex.S:82
9fc03270:	0085b822 	sub	s7,a0,a1
/home/chooaa/cs_lab/cpu_ex/inst/n23_j_ds_ex.S:83
9fc03274:	16570065 	bne	s2,s7,9fc0340c <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n23_j_ds_ex.S:84
9fc03278:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n23_j_ds_ex.S:85
9fc0327c:	24120003 	li	s2,3
/home/chooaa/cs_lab/cpu_ex/inst/n23_j_ds_ex.S:86
9fc03280:	3c149fc0 	lui	s4,0x9fc0
9fc03284:	26943288 	addiu	s4,s4,12936
/home/chooaa/cs_lab/cpu_ex/inst/n23_j_ds_ex.S:87
9fc03288:	0bf00d03 	j	9fc0340c <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n23_j_ds_ex.S:88
9fc0328c:	0085b822 	sub	s7,a0,a1
/home/chooaa/cs_lab/cpu_ex/inst/n23_j_ds_ex.S:89
9fc03290:	1657005e 	bne	s2,s7,9fc0340c <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n23_j_ds_ex.S:90
9fc03294:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n23_j_ds_ex.S:92
9fc03298:	24120004 	li	s2,4
/home/chooaa/cs_lab/cpu_ex/inst/n23_j_ds_ex.S:93
9fc0329c:	3c170004 	lui	s7,0x4
/home/chooaa/cs_lab/cpu_ex/inst/n23_j_ds_ex.S:94
9fc032a0:	ad120000 	sw	s2,0(t0)
/home/chooaa/cs_lab/cpu_ex/inst/n23_j_ds_ex.S:95
9fc032a4:	3c149fc0 	lui	s4,0x9fc0
9fc032a8:	269432ac 	addiu	s4,s4,12972
/home/chooaa/cs_lab/cpu_ex/inst/n23_j_ds_ex.S:96
9fc032ac:	0bf00d03 	j	9fc0340c <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n23_j_ds_ex.S:97
9fc032b0:	8d170002 	lw	s7,2(t0)
/home/chooaa/cs_lab/cpu_ex/inst/n23_j_ds_ex.S:98
9fc032b4:	16570055 	bne	s2,s7,9fc0340c <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n23_j_ds_ex.S:99
9fc032b8:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n23_j_ds_ex.S:100
9fc032bc:	24120004 	li	s2,4
/home/chooaa/cs_lab/cpu_ex/inst/n23_j_ds_ex.S:101
9fc032c0:	3c149fc0 	lui	s4,0x9fc0
9fc032c4:	269432c8 	addiu	s4,s4,13000
/home/chooaa/cs_lab/cpu_ex/inst/n23_j_ds_ex.S:102
9fc032c8:	0bf00d03 	j	9fc0340c <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n23_j_ds_ex.S:103
9fc032cc:	8d170002 	lw	s7,2(t0)
/home/chooaa/cs_lab/cpu_ex/inst/n23_j_ds_ex.S:104
9fc032d0:	1657004e 	bne	s2,s7,9fc0340c <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n23_j_ds_ex.S:105
9fc032d4:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n23_j_ds_ex.S:106
9fc032d8:	24120004 	li	s2,4
/home/chooaa/cs_lab/cpu_ex/inst/n23_j_ds_ex.S:107
9fc032dc:	3c149fc0 	lui	s4,0x9fc0
9fc032e0:	269432e4 	addiu	s4,s4,13028
/home/chooaa/cs_lab/cpu_ex/inst/n23_j_ds_ex.S:108
9fc032e4:	0bf00d03 	j	9fc0340c <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n23_j_ds_ex.S:109
9fc032e8:	85170001 	lh	s7,1(t0)
/home/chooaa/cs_lab/cpu_ex/inst/n23_j_ds_ex.S:110
9fc032ec:	02f2001b 	divu	zero,s7,s2
/home/chooaa/cs_lab/cpu_ex/inst/n23_j_ds_ex.S:111
9fc032f0:	16570046 	bne	s2,s7,9fc0340c <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n23_j_ds_ex.S:112
9fc032f4:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n23_j_ds_ex.S:113
9fc032f8:	24120004 	li	s2,4
/home/chooaa/cs_lab/cpu_ex/inst/n23_j_ds_ex.S:114
9fc032fc:	3c149fc0 	lui	s4,0x9fc0
9fc03300:	26943304 	addiu	s4,s4,13060
/home/chooaa/cs_lab/cpu_ex/inst/n23_j_ds_ex.S:115
9fc03304:	0bf00d03 	j	9fc0340c <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n23_j_ds_ex.S:116
9fc03308:	85170001 	lh	s7,1(t0)
/home/chooaa/cs_lab/cpu_ex/inst/n23_j_ds_ex.S:117
9fc0330c:	1657003f 	bne	s2,s7,9fc0340c <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n23_j_ds_ex.S:118
9fc03310:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n23_j_ds_ex.S:119
9fc03314:	3c149fc0 	lui	s4,0x9fc0
9fc03318:	2694331c 	addiu	s4,s4,13084
/home/chooaa/cs_lab/cpu_ex/inst/n23_j_ds_ex.S:120
9fc0331c:	0bf00d03 	j	9fc0340c <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n23_j_ds_ex.S:121
9fc03320:	95170003 	lhu	s7,3(t0)
/home/chooaa/cs_lab/cpu_ex/inst/n23_j_ds_ex.S:122
9fc03324:	16570039 	bne	s2,s7,9fc0340c <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n23_j_ds_ex.S:123
9fc03328:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n23_j_ds_ex.S:124
9fc0332c:	24120004 	li	s2,4
/home/chooaa/cs_lab/cpu_ex/inst/n23_j_ds_ex.S:125
9fc03330:	3c149fc0 	lui	s4,0x9fc0
9fc03334:	26943338 	addiu	s4,s4,13112
/home/chooaa/cs_lab/cpu_ex/inst/n23_j_ds_ex.S:126
9fc03338:	0bf00d03 	j	9fc0340c <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n23_j_ds_ex.S:127
9fc0333c:	95170003 	lhu	s7,3(t0)
/home/chooaa/cs_lab/cpu_ex/inst/n23_j_ds_ex.S:128
9fc03340:	16570032 	bne	s2,s7,9fc0340c <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n23_j_ds_ex.S:129
9fc03344:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n23_j_ds_ex.S:131
9fc03348:	24120005 	li	s2,5
/home/chooaa/cs_lab/cpu_ex/inst/n23_j_ds_ex.S:132
9fc0334c:	3c170005 	lui	s7,0x5
/home/chooaa/cs_lab/cpu_ex/inst/n23_j_ds_ex.S:133
9fc03350:	ad120000 	sw	s2,0(t0)
/home/chooaa/cs_lab/cpu_ex/inst/n23_j_ds_ex.S:134
9fc03354:	3c149fc0 	lui	s4,0x9fc0
9fc03358:	2694335c 	addiu	s4,s4,13148
/home/chooaa/cs_lab/cpu_ex/inst/n23_j_ds_ex.S:135
9fc0335c:	0bf00d03 	j	9fc0340c <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n23_j_ds_ex.S:136
9fc03360:	ad170002 	sw	s7,2(t0)
/home/chooaa/cs_lab/cpu_ex/inst/n23_j_ds_ex.S:137
9fc03364:	16570029 	bne	s2,s7,9fc0340c <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n23_j_ds_ex.S:138
9fc03368:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n23_j_ds_ex.S:139
9fc0336c:	24120005 	li	s2,5
/home/chooaa/cs_lab/cpu_ex/inst/n23_j_ds_ex.S:140
9fc03370:	3c149fc0 	lui	s4,0x9fc0
9fc03374:	26943378 	addiu	s4,s4,13176
/home/chooaa/cs_lab/cpu_ex/inst/n23_j_ds_ex.S:141
9fc03378:	0bf00d03 	j	9fc0340c <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n23_j_ds_ex.S:142
9fc0337c:	ad170002 	sw	s7,2(t0)
/home/chooaa/cs_lab/cpu_ex/inst/n23_j_ds_ex.S:143
9fc03380:	16570022 	bne	s2,s7,9fc0340c <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n23_j_ds_ex.S:144
9fc03384:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n23_j_ds_ex.S:145
9fc03388:	24120005 	li	s2,5
/home/chooaa/cs_lab/cpu_ex/inst/n23_j_ds_ex.S:146
9fc0338c:	3c149fc0 	lui	s4,0x9fc0
9fc03390:	26943394 	addiu	s4,s4,13204
/home/chooaa/cs_lab/cpu_ex/inst/n23_j_ds_ex.S:147
9fc03394:	0bf00d03 	j	9fc0340c <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n23_j_ds_ex.S:148
9fc03398:	a5170001 	sh	s7,1(t0)
/home/chooaa/cs_lab/cpu_ex/inst/n23_j_ds_ex.S:149
9fc0339c:	1657001b 	bne	s2,s7,9fc0340c <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n23_j_ds_ex.S:150
9fc033a0:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n23_j_ds_ex.S:151
9fc033a4:	24120005 	li	s2,5
/home/chooaa/cs_lab/cpu_ex/inst/n23_j_ds_ex.S:152
9fc033a8:	3c149fc0 	lui	s4,0x9fc0
9fc033ac:	269433b0 	addiu	s4,s4,13232
/home/chooaa/cs_lab/cpu_ex/inst/n23_j_ds_ex.S:153
9fc033b0:	0bf00d03 	j	9fc0340c <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n23_j_ds_ex.S:154
9fc033b4:	a5170001 	sh	s7,1(t0)
/home/chooaa/cs_lab/cpu_ex/inst/n23_j_ds_ex.S:155
9fc033b8:	16570014 	bne	s2,s7,9fc0340c <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n23_j_ds_ex.S:156
9fc033bc:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n23_j_ds_ex.S:159
9fc033c0:	24120007 	li	s2,7
/home/chooaa/cs_lab/cpu_ex/inst/n23_j_ds_ex.S:160
9fc033c4:	3c170007 	lui	s7,0x7
/home/chooaa/cs_lab/cpu_ex/inst/n23_j_ds_ex.S:161
9fc033c8:	ad120000 	sw	s2,0(t0)
/home/chooaa/cs_lab/cpu_ex/inst/n23_j_ds_ex.S:162
9fc033cc:	3c149fc0 	lui	s4,0x9fc0
9fc033d0:	269433d4 	addiu	s4,s4,13268
/home/chooaa/cs_lab/cpu_ex/inst/n23_j_ds_ex.S:163
9fc033d4:	0bf00d03 	j	9fc0340c <inst_error>
9fc033d8:	9e3c56aa 	0x9e3c56aa
/home/chooaa/cs_lab/cpu_ex/inst/n23_j_ds_ex.S:165
9fc033dc:	02f20018 	mult	s7,s2
/home/chooaa/cs_lab/cpu_ex/inst/n23_j_ds_ex.S:166
9fc033e0:	1657000a 	bne	s2,s7,9fc0340c <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n23_j_ds_ex.S:167
9fc033e4:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n23_j_ds_ex.S:168
9fc033e8:	24120007 	li	s2,7
/home/chooaa/cs_lab/cpu_ex/inst/n23_j_ds_ex.S:169
9fc033ec:	3c149fc0 	lui	s4,0x9fc0
9fc033f0:	269433f8 	addiu	s4,s4,13304
/home/chooaa/cs_lab/cpu_ex/inst/n23_j_ds_ex.S:170
9fc033f4:	02f20018 	mult	s7,s2
/home/chooaa/cs_lab/cpu_ex/inst/n23_j_ds_ex.S:171
9fc033f8:	0bf00d03 	j	9fc0340c <inst_error>
9fc033fc:	ec1ba960 	swc3	$27,-22176(zero)
/home/chooaa/cs_lab/cpu_ex/inst/n23_j_ds_ex.S:173
9fc03400:	16570002 	bne	s2,s7,9fc0340c <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n23_j_ds_ex.S:174
9fc03404:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n23_j_ds_ex.S:176
9fc03408:	26730001 	addiu	s3,s3,1

9fc0340c <inst_error>:
/home/chooaa/cs_lab/cpu_ex/inst/n23_j_ds_ex.S:179
9fc0340c:	00104e00 	sll	t1,s0,0x18
/home/chooaa/cs_lab/cpu_ex/inst/n23_j_ds_ex.S:180
9fc03410:	01334025 	or	t0,t1,s3
/home/chooaa/cs_lab/cpu_ex/inst/n23_j_ds_ex.S:181
9fc03414:	ae280000 	sw	t0,0(s1)
/home/chooaa/cs_lab/cpu_ex/inst/n23_j_ds_ex.S:182
9fc03418:	03e00008 	jr	ra
/home/chooaa/cs_lab/cpu_ex/inst/n23_j_ds_ex.S:183
9fc0341c:	00000000 	nop

9fc03420 <n25_jr_ds_ex_test>:
/home/chooaa/cs_lab/cpu_ex/inst/n25_jr_ds_ex.S:7
9fc03420:	26100001 	addiu	s0,s0,1
/home/chooaa/cs_lab/cpu_ex/inst/n25_jr_ds_ex.S:8
9fc03424:	3c08800d 	lui	t0,0x800d
/home/chooaa/cs_lab/cpu_ex/inst/n25_jr_ds_ex.S:10
9fc03428:	40805800 	mtc0	zero,c0_compare
/home/chooaa/cs_lab/cpu_ex/inst/n25_jr_ds_ex.S:11
9fc0342c:	3c170040 	lui	s7,0x40
/home/chooaa/cs_lab/cpu_ex/inst/n25_jr_ds_ex.S:12
9fc03430:	40976000 	mtc0	s7,c0_status
/home/chooaa/cs_lab/cpu_ex/inst/n25_jr_ds_ex.S:13
9fc03434:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n25_jr_ds_ex.S:16
9fc03438:	3c12a000 	lui	s2,0xa000
9fc0343c:	36520001 	ori	s2,s2,0x1
/home/chooaa/cs_lab/cpu_ex/inst/n25_jr_ds_ex.S:17
9fc03440:	3c170001 	lui	s7,0x1
/home/chooaa/cs_lab/cpu_ex/inst/n25_jr_ds_ex.S:18
9fc03444:	ad120000 	sw	s2,0(t0)
/home/chooaa/cs_lab/cpu_ex/inst/n25_jr_ds_ex.S:19
9fc03448:	3c149fc0 	lui	s4,0x9fc0
9fc0344c:	26943450 	addiu	s4,s4,13392
/home/chooaa/cs_lab/cpu_ex/inst/n25_jr_ds_ex.S:20
9fc03450:	02400008 	jr	s2
/home/chooaa/cs_lab/cpu_ex/inst/n25_jr_ds_ex.S:21
9fc03454:	0000000c 	syscall
/home/chooaa/cs_lab/cpu_ex/inst/n25_jr_ds_ex.S:22
9fc03458:	165700c1 	bne	s2,s7,9fc03760 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n25_jr_ds_ex.S:23
9fc0345c:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n25_jr_ds_ex.S:24
9fc03460:	3c12a000 	lui	s2,0xa000
9fc03464:	36520001 	ori	s2,s2,0x1
/home/chooaa/cs_lab/cpu_ex/inst/n25_jr_ds_ex.S:25
9fc03468:	3c149fc0 	lui	s4,0x9fc0
9fc0346c:	26943470 	addiu	s4,s4,13424
/home/chooaa/cs_lab/cpu_ex/inst/n25_jr_ds_ex.S:26
9fc03470:	01000008 	jr	t0
/home/chooaa/cs_lab/cpu_ex/inst/n25_jr_ds_ex.S:27
9fc03474:	0000000c 	syscall
/home/chooaa/cs_lab/cpu_ex/inst/n25_jr_ds_ex.S:28
9fc03478:	165700b9 	bne	s2,s7,9fc03760 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n25_jr_ds_ex.S:29
9fc0347c:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n25_jr_ds_ex.S:31
9fc03480:	3c12a000 	lui	s2,0xa000
9fc03484:	36520002 	ori	s2,s2,0x2
/home/chooaa/cs_lab/cpu_ex/inst/n25_jr_ds_ex.S:32
9fc03488:	3c170002 	lui	s7,0x2
/home/chooaa/cs_lab/cpu_ex/inst/n25_jr_ds_ex.S:33
9fc0348c:	ad120000 	sw	s2,0(t0)
/home/chooaa/cs_lab/cpu_ex/inst/n25_jr_ds_ex.S:34
9fc03490:	3c149fc0 	lui	s4,0x9fc0
9fc03494:	26943498 	addiu	s4,s4,13464
/home/chooaa/cs_lab/cpu_ex/inst/n25_jr_ds_ex.S:35
9fc03498:	02400008 	jr	s2
/home/chooaa/cs_lab/cpu_ex/inst/n25_jr_ds_ex.S:36
9fc0349c:	0000000d 	break
/home/chooaa/cs_lab/cpu_ex/inst/n25_jr_ds_ex.S:37
9fc034a0:	165700af 	bne	s2,s7,9fc03760 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n25_jr_ds_ex.S:38
9fc034a4:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n25_jr_ds_ex.S:39
9fc034a8:	3c12a000 	lui	s2,0xa000
9fc034ac:	36520002 	ori	s2,s2,0x2
/home/chooaa/cs_lab/cpu_ex/inst/n25_jr_ds_ex.S:40
9fc034b0:	3c149fc0 	lui	s4,0x9fc0
9fc034b4:	269434b8 	addiu	s4,s4,13496
/home/chooaa/cs_lab/cpu_ex/inst/n25_jr_ds_ex.S:41
9fc034b8:	01000008 	jr	t0
/home/chooaa/cs_lab/cpu_ex/inst/n25_jr_ds_ex.S:42
9fc034bc:	0000000d 	break
/home/chooaa/cs_lab/cpu_ex/inst/n25_jr_ds_ex.S:43
9fc034c0:	165700a7 	bne	s2,s7,9fc03760 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n25_jr_ds_ex.S:44
9fc034c4:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n25_jr_ds_ex.S:46
9fc034c8:	3c12a000 	lui	s2,0xa000
9fc034cc:	36520003 	ori	s2,s2,0x3
/home/chooaa/cs_lab/cpu_ex/inst/n25_jr_ds_ex.S:47
9fc034d0:	3c170003 	lui	s7,0x3
/home/chooaa/cs_lab/cpu_ex/inst/n25_jr_ds_ex.S:48
9fc034d4:	ad120000 	sw	s2,0(t0)
/home/chooaa/cs_lab/cpu_ex/inst/n25_jr_ds_ex.S:49
9fc034d8:	3c149fc0 	lui	s4,0x9fc0
9fc034dc:	269434f0 	addiu	s4,s4,13552
/home/chooaa/cs_lab/cpu_ex/inst/n25_jr_ds_ex.S:50
9fc034e0:	3c04ba03 	lui	a0,0xba03
9fc034e4:	34844f60 	ori	a0,a0,0x4f60
/home/chooaa/cs_lab/cpu_ex/inst/n25_jr_ds_ex.S:51
9fc034e8:	3c05b615 	lui	a1,0xb615
9fc034ec:	34a5fd67 	ori	a1,a1,0xfd67
/home/chooaa/cs_lab/cpu_ex/inst/n25_jr_ds_ex.S:52
9fc034f0:	02400008 	jr	s2
/home/chooaa/cs_lab/cpu_ex/inst/n25_jr_ds_ex.S:53
9fc034f4:	0085b820 	add	s7,a0,a1
/home/chooaa/cs_lab/cpu_ex/inst/n25_jr_ds_ex.S:54
9fc034f8:	16570099 	bne	s2,s7,9fc03760 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n25_jr_ds_ex.S:55
9fc034fc:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n25_jr_ds_ex.S:56
9fc03500:	3c12a000 	lui	s2,0xa000
9fc03504:	36520003 	ori	s2,s2,0x3
/home/chooaa/cs_lab/cpu_ex/inst/n25_jr_ds_ex.S:57
9fc03508:	3c149fc0 	lui	s4,0x9fc0
9fc0350c:	26943510 	addiu	s4,s4,13584
/home/chooaa/cs_lab/cpu_ex/inst/n25_jr_ds_ex.S:58
9fc03510:	01000008 	jr	t0
/home/chooaa/cs_lab/cpu_ex/inst/n25_jr_ds_ex.S:59
9fc03514:	0085b820 	add	s7,a0,a1
/home/chooaa/cs_lab/cpu_ex/inst/n25_jr_ds_ex.S:60
9fc03518:	ad170000 	sw	s7,0(t0)
/home/chooaa/cs_lab/cpu_ex/inst/n25_jr_ds_ex.S:61
9fc0351c:	16570090 	bne	s2,s7,9fc03760 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n25_jr_ds_ex.S:62
9fc03520:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n25_jr_ds_ex.S:63
9fc03524:	3c12a000 	lui	s2,0xa000
9fc03528:	36520003 	ori	s2,s2,0x3
/home/chooaa/cs_lab/cpu_ex/inst/n25_jr_ds_ex.S:64
9fc0352c:	ad120000 	sw	s2,0(t0)
/home/chooaa/cs_lab/cpu_ex/inst/n25_jr_ds_ex.S:65
9fc03530:	3c149fc0 	lui	s4,0x9fc0
9fc03534:	26943540 	addiu	s4,s4,13632
/home/chooaa/cs_lab/cpu_ex/inst/n25_jr_ds_ex.S:66
9fc03538:	3c047fff 	lui	a0,0x7fff
9fc0353c:	3484c19e 	ori	a0,a0,0xc19e
/home/chooaa/cs_lab/cpu_ex/inst/n25_jr_ds_ex.S:67
9fc03540:	02400008 	jr	s2
/home/chooaa/cs_lab/cpu_ex/inst/n25_jr_ds_ex.S:68
9fc03544:	20976512 	addi	s7,a0,25874
/home/chooaa/cs_lab/cpu_ex/inst/n25_jr_ds_ex.S:69
9fc03548:	16570085 	bne	s2,s7,9fc03760 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n25_jr_ds_ex.S:70
9fc0354c:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n25_jr_ds_ex.S:71
9fc03550:	3c12a000 	lui	s2,0xa000
9fc03554:	36520003 	ori	s2,s2,0x3
/home/chooaa/cs_lab/cpu_ex/inst/n25_jr_ds_ex.S:72
9fc03558:	3c149fc0 	lui	s4,0x9fc0
9fc0355c:	26943560 	addiu	s4,s4,13664
/home/chooaa/cs_lab/cpu_ex/inst/n25_jr_ds_ex.S:73
9fc03560:	01000008 	jr	t0
/home/chooaa/cs_lab/cpu_ex/inst/n25_jr_ds_ex.S:74
9fc03564:	20976512 	addi	s7,a0,25874
/home/chooaa/cs_lab/cpu_ex/inst/n25_jr_ds_ex.S:75
9fc03568:	1657007d 	bne	s2,s7,9fc03760 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n25_jr_ds_ex.S:76
9fc0356c:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n25_jr_ds_ex.S:77
9fc03570:	3c12a000 	lui	s2,0xa000
9fc03574:	36520003 	ori	s2,s2,0x3
/home/chooaa/cs_lab/cpu_ex/inst/n25_jr_ds_ex.S:78
9fc03578:	3c149fc0 	lui	s4,0x9fc0
9fc0357c:	26943590 	addiu	s4,s4,13712
/home/chooaa/cs_lab/cpu_ex/inst/n25_jr_ds_ex.S:79
9fc03580:	3c04a85e 	lui	a0,0xa85e
9fc03584:	34847d00 	ori	a0,a0,0x7d00
/home/chooaa/cs_lab/cpu_ex/inst/n25_jr_ds_ex.S:80
9fc03588:	3c056b7e 	lui	a1,0x6b7e
9fc0358c:	34a58e36 	ori	a1,a1,0x8e36
/home/chooaa/cs_lab/cpu_ex/inst/n25_jr_ds_ex.S:81
9fc03590:	02400008 	jr	s2
/home/chooaa/cs_lab/cpu_ex/inst/n25_jr_ds_ex.S:82
9fc03594:	0085b822 	sub	s7,a0,a1
/home/chooaa/cs_lab/cpu_ex/inst/n25_jr_ds_ex.S:83
9fc03598:	16570071 	bne	s2,s7,9fc03760 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n25_jr_ds_ex.S:84
9fc0359c:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n25_jr_ds_ex.S:85
9fc035a0:	3c12a000 	lui	s2,0xa000
9fc035a4:	36520003 	ori	s2,s2,0x3
/home/chooaa/cs_lab/cpu_ex/inst/n25_jr_ds_ex.S:86
9fc035a8:	3c149fc0 	lui	s4,0x9fc0
9fc035ac:	269435b0 	addiu	s4,s4,13744
/home/chooaa/cs_lab/cpu_ex/inst/n25_jr_ds_ex.S:87
9fc035b0:	01000008 	jr	t0
/home/chooaa/cs_lab/cpu_ex/inst/n25_jr_ds_ex.S:88
9fc035b4:	0085b822 	sub	s7,a0,a1
/home/chooaa/cs_lab/cpu_ex/inst/n25_jr_ds_ex.S:89
9fc035b8:	16570069 	bne	s2,s7,9fc03760 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n25_jr_ds_ex.S:90
9fc035bc:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n25_jr_ds_ex.S:92
9fc035c0:	3c12a000 	lui	s2,0xa000
9fc035c4:	36520004 	ori	s2,s2,0x4
/home/chooaa/cs_lab/cpu_ex/inst/n25_jr_ds_ex.S:93
9fc035c8:	3c170004 	lui	s7,0x4
/home/chooaa/cs_lab/cpu_ex/inst/n25_jr_ds_ex.S:94
9fc035cc:	ad120000 	sw	s2,0(t0)
/home/chooaa/cs_lab/cpu_ex/inst/n25_jr_ds_ex.S:95
9fc035d0:	3c149fc0 	lui	s4,0x9fc0
9fc035d4:	269435d8 	addiu	s4,s4,13784
/home/chooaa/cs_lab/cpu_ex/inst/n25_jr_ds_ex.S:96
9fc035d8:	02400008 	jr	s2
/home/chooaa/cs_lab/cpu_ex/inst/n25_jr_ds_ex.S:97
9fc035dc:	8d170002 	lw	s7,2(t0)
/home/chooaa/cs_lab/cpu_ex/inst/n25_jr_ds_ex.S:98
9fc035e0:	1657005f 	bne	s2,s7,9fc03760 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n25_jr_ds_ex.S:99
9fc035e4:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n25_jr_ds_ex.S:100
9fc035e8:	3c12a000 	lui	s2,0xa000
9fc035ec:	36520004 	ori	s2,s2,0x4
/home/chooaa/cs_lab/cpu_ex/inst/n25_jr_ds_ex.S:101
9fc035f0:	3c149fc0 	lui	s4,0x9fc0
9fc035f4:	269435f8 	addiu	s4,s4,13816
/home/chooaa/cs_lab/cpu_ex/inst/n25_jr_ds_ex.S:102
9fc035f8:	01000008 	jr	t0
/home/chooaa/cs_lab/cpu_ex/inst/n25_jr_ds_ex.S:103
9fc035fc:	8d170002 	lw	s7,2(t0)
/home/chooaa/cs_lab/cpu_ex/inst/n25_jr_ds_ex.S:104
9fc03600:	16570057 	bne	s2,s7,9fc03760 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n25_jr_ds_ex.S:105
9fc03604:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n25_jr_ds_ex.S:106
9fc03608:	3c12a000 	lui	s2,0xa000
9fc0360c:	36520004 	ori	s2,s2,0x4
/home/chooaa/cs_lab/cpu_ex/inst/n25_jr_ds_ex.S:107
9fc03610:	3c149fc0 	lui	s4,0x9fc0
9fc03614:	26943618 	addiu	s4,s4,13848
/home/chooaa/cs_lab/cpu_ex/inst/n25_jr_ds_ex.S:108
9fc03618:	02400008 	jr	s2
/home/chooaa/cs_lab/cpu_ex/inst/n25_jr_ds_ex.S:109
9fc0361c:	85170001 	lh	s7,1(t0)
/home/chooaa/cs_lab/cpu_ex/inst/n25_jr_ds_ex.S:110
9fc03620:	02f2001b 	divu	zero,s7,s2
/home/chooaa/cs_lab/cpu_ex/inst/n25_jr_ds_ex.S:111
9fc03624:	1657004e 	bne	s2,s7,9fc03760 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n25_jr_ds_ex.S:112
9fc03628:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n25_jr_ds_ex.S:113
9fc0362c:	3c12a000 	lui	s2,0xa000
9fc03630:	36520004 	ori	s2,s2,0x4
/home/chooaa/cs_lab/cpu_ex/inst/n25_jr_ds_ex.S:114
9fc03634:	3c149fc0 	lui	s4,0x9fc0
9fc03638:	2694363c 	addiu	s4,s4,13884
/home/chooaa/cs_lab/cpu_ex/inst/n25_jr_ds_ex.S:115
9fc0363c:	02400008 	jr	s2
/home/chooaa/cs_lab/cpu_ex/inst/n25_jr_ds_ex.S:116
9fc03640:	85170001 	lh	s7,1(t0)
/home/chooaa/cs_lab/cpu_ex/inst/n25_jr_ds_ex.S:117
9fc03644:	16570046 	bne	s2,s7,9fc03760 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n25_jr_ds_ex.S:118
9fc03648:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n25_jr_ds_ex.S:119
9fc0364c:	3c149fc0 	lui	s4,0x9fc0
9fc03650:	26943654 	addiu	s4,s4,13908
/home/chooaa/cs_lab/cpu_ex/inst/n25_jr_ds_ex.S:120
9fc03654:	01000008 	jr	t0
/home/chooaa/cs_lab/cpu_ex/inst/n25_jr_ds_ex.S:121
9fc03658:	95170003 	lhu	s7,3(t0)
/home/chooaa/cs_lab/cpu_ex/inst/n25_jr_ds_ex.S:122
9fc0365c:	16570040 	bne	s2,s7,9fc03760 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n25_jr_ds_ex.S:123
9fc03660:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n25_jr_ds_ex.S:124
9fc03664:	3c12a000 	lui	s2,0xa000
9fc03668:	36520004 	ori	s2,s2,0x4
/home/chooaa/cs_lab/cpu_ex/inst/n25_jr_ds_ex.S:125
9fc0366c:	3c149fc0 	lui	s4,0x9fc0
9fc03670:	26943674 	addiu	s4,s4,13940
/home/chooaa/cs_lab/cpu_ex/inst/n25_jr_ds_ex.S:126
9fc03674:	01000008 	jr	t0
/home/chooaa/cs_lab/cpu_ex/inst/n25_jr_ds_ex.S:127
9fc03678:	95170003 	lhu	s7,3(t0)
/home/chooaa/cs_lab/cpu_ex/inst/n25_jr_ds_ex.S:128
9fc0367c:	16570038 	bne	s2,s7,9fc03760 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n25_jr_ds_ex.S:129
9fc03680:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n25_jr_ds_ex.S:131
9fc03684:	3c12a000 	lui	s2,0xa000
9fc03688:	36520005 	ori	s2,s2,0x5
/home/chooaa/cs_lab/cpu_ex/inst/n25_jr_ds_ex.S:132
9fc0368c:	3c170005 	lui	s7,0x5
/home/chooaa/cs_lab/cpu_ex/inst/n25_jr_ds_ex.S:133
9fc03690:	ad120000 	sw	s2,0(t0)
/home/chooaa/cs_lab/cpu_ex/inst/n25_jr_ds_ex.S:134
9fc03694:	3c149fc0 	lui	s4,0x9fc0
9fc03698:	2694369c 	addiu	s4,s4,13980
/home/chooaa/cs_lab/cpu_ex/inst/n25_jr_ds_ex.S:135
9fc0369c:	02400008 	jr	s2
/home/chooaa/cs_lab/cpu_ex/inst/n25_jr_ds_ex.S:136
9fc036a0:	ad170002 	sw	s7,2(t0)
/home/chooaa/cs_lab/cpu_ex/inst/n25_jr_ds_ex.S:137
9fc036a4:	1657002e 	bne	s2,s7,9fc03760 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n25_jr_ds_ex.S:138
9fc036a8:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n25_jr_ds_ex.S:139
9fc036ac:	3c12a000 	lui	s2,0xa000
9fc036b0:	36520005 	ori	s2,s2,0x5
/home/chooaa/cs_lab/cpu_ex/inst/n25_jr_ds_ex.S:140
9fc036b4:	3c149fc0 	lui	s4,0x9fc0
9fc036b8:	269436bc 	addiu	s4,s4,14012
/home/chooaa/cs_lab/cpu_ex/inst/n25_jr_ds_ex.S:141
9fc036bc:	02400008 	jr	s2
/home/chooaa/cs_lab/cpu_ex/inst/n25_jr_ds_ex.S:142
9fc036c0:	ad170002 	sw	s7,2(t0)
/home/chooaa/cs_lab/cpu_ex/inst/n25_jr_ds_ex.S:143
9fc036c4:	16570026 	bne	s2,s7,9fc03760 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n25_jr_ds_ex.S:144
9fc036c8:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n25_jr_ds_ex.S:145
9fc036cc:	3c12a000 	lui	s2,0xa000
9fc036d0:	36520005 	ori	s2,s2,0x5
/home/chooaa/cs_lab/cpu_ex/inst/n25_jr_ds_ex.S:146
9fc036d4:	3c149fc0 	lui	s4,0x9fc0
9fc036d8:	269436dc 	addiu	s4,s4,14044
/home/chooaa/cs_lab/cpu_ex/inst/n25_jr_ds_ex.S:147
9fc036dc:	01000008 	jr	t0
/home/chooaa/cs_lab/cpu_ex/inst/n25_jr_ds_ex.S:148
9fc036e0:	a5170001 	sh	s7,1(t0)
/home/chooaa/cs_lab/cpu_ex/inst/n25_jr_ds_ex.S:149
9fc036e4:	1657001e 	bne	s2,s7,9fc03760 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n25_jr_ds_ex.S:150
9fc036e8:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n25_jr_ds_ex.S:151
9fc036ec:	3c12a000 	lui	s2,0xa000
9fc036f0:	36520005 	ori	s2,s2,0x5
/home/chooaa/cs_lab/cpu_ex/inst/n25_jr_ds_ex.S:152
9fc036f4:	3c149fc0 	lui	s4,0x9fc0
9fc036f8:	269436fc 	addiu	s4,s4,14076
/home/chooaa/cs_lab/cpu_ex/inst/n25_jr_ds_ex.S:153
9fc036fc:	01000008 	jr	t0
/home/chooaa/cs_lab/cpu_ex/inst/n25_jr_ds_ex.S:154
9fc03700:	a5170001 	sh	s7,1(t0)
/home/chooaa/cs_lab/cpu_ex/inst/n25_jr_ds_ex.S:155
9fc03704:	16570016 	bne	s2,s7,9fc03760 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n25_jr_ds_ex.S:156
9fc03708:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n25_jr_ds_ex.S:159
9fc0370c:	3c12a000 	lui	s2,0xa000
9fc03710:	36520007 	ori	s2,s2,0x7
/home/chooaa/cs_lab/cpu_ex/inst/n25_jr_ds_ex.S:160
9fc03714:	3c170007 	lui	s7,0x7
/home/chooaa/cs_lab/cpu_ex/inst/n25_jr_ds_ex.S:161
9fc03718:	ad120000 	sw	s2,0(t0)
/home/chooaa/cs_lab/cpu_ex/inst/n25_jr_ds_ex.S:162
9fc0371c:	3c149fc0 	lui	s4,0x9fc0
9fc03720:	26943724 	addiu	s4,s4,14116
/home/chooaa/cs_lab/cpu_ex/inst/n25_jr_ds_ex.S:163
9fc03724:	02400008 	jr	s2
9fc03728:	9e3c56aa 	0x9e3c56aa
/home/chooaa/cs_lab/cpu_ex/inst/n25_jr_ds_ex.S:165
9fc0372c:	02f20018 	mult	s7,s2
/home/chooaa/cs_lab/cpu_ex/inst/n25_jr_ds_ex.S:166
9fc03730:	1657000b 	bne	s2,s7,9fc03760 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n25_jr_ds_ex.S:167
9fc03734:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n25_jr_ds_ex.S:168
9fc03738:	3c12a000 	lui	s2,0xa000
9fc0373c:	36520007 	ori	s2,s2,0x7
/home/chooaa/cs_lab/cpu_ex/inst/n25_jr_ds_ex.S:169
9fc03740:	3c149fc0 	lui	s4,0x9fc0
9fc03744:	2694374c 	addiu	s4,s4,14156
/home/chooaa/cs_lab/cpu_ex/inst/n25_jr_ds_ex.S:170
9fc03748:	02f20018 	mult	s7,s2
/home/chooaa/cs_lab/cpu_ex/inst/n25_jr_ds_ex.S:171
9fc0374c:	01000008 	jr	t0
9fc03750:	ec1ba960 	swc3	$27,-22176(zero)
/home/chooaa/cs_lab/cpu_ex/inst/n25_jr_ds_ex.S:173
9fc03754:	16570002 	bne	s2,s7,9fc03760 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n25_jr_ds_ex.S:174
9fc03758:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n25_jr_ds_ex.S:176
9fc0375c:	26730001 	addiu	s3,s3,1

9fc03760 <inst_error>:
/home/chooaa/cs_lab/cpu_ex/inst/n25_jr_ds_ex.S:179
9fc03760:	00104e00 	sll	t1,s0,0x18
/home/chooaa/cs_lab/cpu_ex/inst/n25_jr_ds_ex.S:180
9fc03764:	01334025 	or	t0,t1,s3
/home/chooaa/cs_lab/cpu_ex/inst/n25_jr_ds_ex.S:181
9fc03768:	ae280000 	sw	t0,0(s1)
/home/chooaa/cs_lab/cpu_ex/inst/n25_jr_ds_ex.S:182
9fc0376c:	03e00008 	jr	ra
/home/chooaa/cs_lab/cpu_ex/inst/n25_jr_ds_ex.S:183
9fc03770:	00000000 	nop
	...

9fc03780 <n4_addi_ov_ex_test>:
/home/chooaa/cs_lab/cpu_ex/inst/n4_addi_ov_ex.S:7
9fc03780:	26100001 	addiu	s0,s0,1
/home/chooaa/cs_lab/cpu_ex/inst/n4_addi_ov_ex.S:8
9fc03784:	3c08800d 	lui	t0,0x800d
/home/chooaa/cs_lab/cpu_ex/inst/n4_addi_ov_ex.S:9
9fc03788:	24120003 	li	s2,3
/home/chooaa/cs_lab/cpu_ex/inst/n4_addi_ov_ex.S:10
9fc0378c:	ad120000 	sw	s2,0(t0)
/home/chooaa/cs_lab/cpu_ex/inst/n4_addi_ov_ex.S:12
9fc03790:	40805800 	mtc0	zero,c0_compare
/home/chooaa/cs_lab/cpu_ex/inst/n4_addi_ov_ex.S:13
9fc03794:	3c170040 	lui	s7,0x40
/home/chooaa/cs_lab/cpu_ex/inst/n4_addi_ov_ex.S:14
9fc03798:	40976000 	mtc0	s7,c0_status
/home/chooaa/cs_lab/cpu_ex/inst/n4_addi_ov_ex.S:15
9fc0379c:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n4_addi_ov_ex.S:16
9fc037a0:	3c170003 	lui	s7,0x3
/home/chooaa/cs_lab/cpu_ex/inst/n4_addi_ov_ex.S:19
9fc037a4:	3c02deb0 	lui	v0,0xdeb0
9fc037a8:	34426fd0 	ori	v0,v0,0x6fd0
9fc037ac:	3c03deb0 	lui	v1,0xdeb0
9fc037b0:	34636fd0 	ori	v1,v1,0x6fd0
9fc037b4:	24042c26 	li	a0,11302
9fc037b8:	3c047fff 	lui	a0,0x7fff
9fc037bc:	3484f84b 	ori	a0,a0,0xf84b
/home/chooaa/cs_lab/cpu_ex/inst/n4_addi_ov_ex.S:20
9fc037c0:	3c149fc0 	lui	s4,0x9fc0
9fc037c4:	269437c8 	addiu	s4,s4,14280
/home/chooaa/cs_lab/cpu_ex/inst/n4_addi_ov_ex.S:21
9fc037c8:	20822c26 	addi	v0,a0,11302
/home/chooaa/cs_lab/cpu_ex/inst/n4_addi_ov_ex.S:22
9fc037cc:	16570072 	bne	s2,s7,9fc03998 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n4_addi_ov_ex.S:23
9fc037d0:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n4_addi_ov_ex.S:25
9fc037d4:	24120003 	li	s2,3
/home/chooaa/cs_lab/cpu_ex/inst/n4_addi_ov_ex.S:26
9fc037d8:	3c026c53 	lui	v0,0x6c53
9fc037dc:	344292aa 	ori	v0,v0,0x92aa
9fc037e0:	3c036c53 	lui	v1,0x6c53
9fc037e4:	346392aa 	ori	v1,v1,0x92aa
9fc037e8:	240454b0 	li	a0,21680
9fc037ec:	3c047fff 	lui	a0,0x7fff
9fc037f0:	3484f480 	ori	a0,a0,0xf480
/home/chooaa/cs_lab/cpu_ex/inst/n4_addi_ov_ex.S:27
9fc037f4:	3c149fc0 	lui	s4,0x9fc0
9fc037f8:	26943804 	addiu	s4,s4,14340
/home/chooaa/cs_lab/cpu_ex/inst/n4_addi_ov_ex.S:28
9fc037fc:	ad080004 	sw	t0,4(t0)
/home/chooaa/cs_lab/cpu_ex/inst/n4_addi_ov_ex.S:29
9fc03800:	ad140004 	sw	s4,4(t0)
/home/chooaa/cs_lab/cpu_ex/inst/n4_addi_ov_ex.S:30
9fc03804:	208254b0 	addi	v0,a0,21680
/home/chooaa/cs_lab/cpu_ex/inst/n4_addi_ov_ex.S:31
9fc03808:	ad140000 	sw	s4,0(t0)
/home/chooaa/cs_lab/cpu_ex/inst/n4_addi_ov_ex.S:32
9fc0380c:	8d090004 	lw	t1,4(t0)
/home/chooaa/cs_lab/cpu_ex/inst/n4_addi_ov_ex.S:33
9fc03810:	15340061 	bne	t1,s4,9fc03998 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n4_addi_ov_ex.S:34
9fc03814:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n4_addi_ov_ex.S:35
9fc03818:	1657005f 	bne	s2,s7,9fc03998 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n4_addi_ov_ex.S:36
9fc0381c:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n4_addi_ov_ex.S:37
9fc03820:	1443005d 	bne	v0,v1,9fc03998 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n4_addi_ov_ex.S:38
9fc03824:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n4_addi_ov_ex.S:39
9fc03828:	24120003 	li	s2,3
/home/chooaa/cs_lab/cpu_ex/inst/n4_addi_ov_ex.S:40
9fc0382c:	ad120000 	sw	s2,0(t0)
/home/chooaa/cs_lab/cpu_ex/inst/n4_addi_ov_ex.S:42
9fc03830:	24120003 	li	s2,3
/home/chooaa/cs_lab/cpu_ex/inst/n4_addi_ov_ex.S:43
9fc03834:	3c0260a7 	lui	v0,0x60a7
9fc03838:	34421e30 	ori	v0,v0,0x1e30
9fc0383c:	3c0360a7 	lui	v1,0x60a7
9fc03840:	34631e30 	ori	v1,v1,0x1e30
9fc03844:	240471db 	li	a0,29147
9fc03848:	3c047fff 	lui	a0,0x7fff
9fc0384c:	34849b21 	ori	a0,a0,0x9b21
/home/chooaa/cs_lab/cpu_ex/inst/n4_addi_ov_ex.S:44
9fc03850:	3c149fc0 	lui	s4,0x9fc0
9fc03854:	26943860 	addiu	s4,s4,14432
/home/chooaa/cs_lab/cpu_ex/inst/n4_addi_ov_ex.S:45
9fc03858:	01000011 	mthi	t0
/home/chooaa/cs_lab/cpu_ex/inst/n4_addi_ov_ex.S:46
9fc0385c:	0110001b 	divu	zero,t0,s0
/home/chooaa/cs_lab/cpu_ex/inst/n4_addi_ov_ex.S:47
9fc03860:	208271db 	addi	v0,a0,29147
/home/chooaa/cs_lab/cpu_ex/inst/n4_addi_ov_ex.S:48
9fc03864:	00004810 	mfhi	t1
/home/chooaa/cs_lab/cpu_ex/inst/n4_addi_ov_ex.S:49
9fc03868:	1128004b 	beq	t1,t0,9fc03998 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n4_addi_ov_ex.S:50
9fc0386c:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n4_addi_ov_ex.S:51
9fc03870:	16570049 	bne	s2,s7,9fc03998 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n4_addi_ov_ex.S:52
9fc03874:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n4_addi_ov_ex.S:53
9fc03878:	14430047 	bne	v0,v1,9fc03998 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n4_addi_ov_ex.S:54
9fc0387c:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n4_addi_ov_ex.S:56
9fc03880:	24120003 	li	s2,3
/home/chooaa/cs_lab/cpu_ex/inst/n4_addi_ov_ex.S:57
9fc03884:	3c02e607 	lui	v0,0xe607
9fc03888:	34425700 	ori	v0,v0,0x5700
9fc0388c:	3c03e607 	lui	v1,0xe607
9fc03890:	34635700 	ori	v1,v1,0x5700
9fc03894:	3404be07 	li	a0,0xbe07
9fc03898:	3c048000 	lui	a0,0x8000
9fc0389c:	34843a57 	ori	a0,a0,0x3a57
/home/chooaa/cs_lab/cpu_ex/inst/n4_addi_ov_ex.S:58
9fc038a0:	3c149fc0 	lui	s4,0x9fc0
9fc038a4:	269438a8 	addiu	s4,s4,14504
/home/chooaa/cs_lab/cpu_ex/inst/n4_addi_ov_ex.S:59
9fc038a8:	2082be07 	addi	v0,a0,-16889
/home/chooaa/cs_lab/cpu_ex/inst/n4_addi_ov_ex.S:60
9fc038ac:	0208001b 	divu	zero,s0,t0
/home/chooaa/cs_lab/cpu_ex/inst/n4_addi_ov_ex.S:61
9fc038b0:	16570039 	bne	s2,s7,9fc03998 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n4_addi_ov_ex.S:62
9fc038b4:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n4_addi_ov_ex.S:63
9fc038b8:	14430037 	bne	v0,v1,9fc03998 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n4_addi_ov_ex.S:64
9fc038bc:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n4_addi_ov_ex.S:66
9fc038c0:	24120003 	li	s2,3
/home/chooaa/cs_lab/cpu_ex/inst/n4_addi_ov_ex.S:67
9fc038c4:	3c028f7e 	lui	v0,0x8f7e
9fc038c8:	3442e6c0 	ori	v0,v0,0xe6c0
9fc038cc:	3c038f7e 	lui	v1,0x8f7e
9fc038d0:	3463e6c0 	ori	v1,v1,0xe6c0
9fc038d4:	3404845d 	li	a0,0x845d
9fc038d8:	3c048000 	lui	a0,0x8000
9fc038dc:	34842c93 	ori	a0,a0,0x2c93
/home/chooaa/cs_lab/cpu_ex/inst/n4_addi_ov_ex.S:68
9fc038e0:	3c149fc0 	lui	s4,0x9fc0
9fc038e4:	269438f0 	addiu	s4,s4,14576
/home/chooaa/cs_lab/cpu_ex/inst/n4_addi_ov_ex.S:69
9fc038e8:	01000013 	mtlo	t0
/home/chooaa/cs_lab/cpu_ex/inst/n4_addi_ov_ex.S:70
9fc038ec:	01100019 	multu	t0,s0
/home/chooaa/cs_lab/cpu_ex/inst/n4_addi_ov_ex.S:71
9fc038f0:	2082845d 	addi	v0,a0,-31651
/home/chooaa/cs_lab/cpu_ex/inst/n4_addi_ov_ex.S:72
9fc038f4:	00004810 	mfhi	t1
/home/chooaa/cs_lab/cpu_ex/inst/n4_addi_ov_ex.S:73
9fc038f8:	11280027 	beq	t1,t0,9fc03998 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n4_addi_ov_ex.S:74
9fc038fc:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n4_addi_ov_ex.S:75
9fc03900:	16570025 	bne	s2,s7,9fc03998 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n4_addi_ov_ex.S:76
9fc03904:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n4_addi_ov_ex.S:77
9fc03908:	14430023 	bne	v0,v1,9fc03998 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n4_addi_ov_ex.S:78
9fc0390c:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n4_addi_ov_ex.S:80
9fc03910:	24120003 	li	s2,3
/home/chooaa/cs_lab/cpu_ex/inst/n4_addi_ov_ex.S:81
9fc03914:	3c02bd3e 	lui	v0,0xbd3e
9fc03918:	3442a700 	ori	v0,v0,0xa700
9fc0391c:	3c03bd3e 	lui	v1,0xbd3e
9fc03920:	3463a700 	ori	v1,v1,0xa700
9fc03924:	340481f4 	li	a0,0x81f4
9fc03928:	3c048000 	lui	a0,0x8000
9fc0392c:	34844016 	ori	a0,a0,0x4016
/home/chooaa/cs_lab/cpu_ex/inst/n4_addi_ov_ex.S:82
9fc03930:	3c149fc0 	lui	s4,0x9fc0
9fc03934:	26943938 	addiu	s4,s4,14648
/home/chooaa/cs_lab/cpu_ex/inst/n4_addi_ov_ex.S:83
9fc03938:	208281f4 	addi	v0,a0,-32268
/home/chooaa/cs_lab/cpu_ex/inst/n4_addi_ov_ex.S:84
9fc0393c:	01120019 	multu	t0,s2
/home/chooaa/cs_lab/cpu_ex/inst/n4_addi_ov_ex.S:85
9fc03940:	16570015 	bne	s2,s7,9fc03998 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n4_addi_ov_ex.S:86
9fc03944:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n4_addi_ov_ex.S:87
9fc03948:	14430013 	bne	v0,v1,9fc03998 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n4_addi_ov_ex.S:88
9fc0394c:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n4_addi_ov_ex.S:90
9fc03950:	24120003 	li	s2,3
/home/chooaa/cs_lab/cpu_ex/inst/n4_addi_ov_ex.S:91
9fc03954:	3c020615 	lui	v0,0x615
9fc03958:	34422570 	ori	v0,v0,0x2570
9fc0395c:	3c030615 	lui	v1,0x615
9fc03960:	34632570 	ori	v1,v1,0x2570
9fc03964:	3404baa6 	li	a0,0xbaa6
9fc03968:	3c048000 	lui	a0,0x8000
9fc0396c:	34843510 	ori	a0,a0,0x3510
/home/chooaa/cs_lab/cpu_ex/inst/n4_addi_ov_ex.S:92
9fc03970:	3c149fc0 	lui	s4,0x9fc0
9fc03974:	2694397c 	addiu	s4,s4,14716
/home/chooaa/cs_lab/cpu_ex/inst/n4_addi_ov_ex.S:93
9fc03978:	40927000 	mtc0	s2,c0_epc
/home/chooaa/cs_lab/cpu_ex/inst/n4_addi_ov_ex.S:94
9fc0397c:	2082baa6 	addi	v0,a0,-17754
/home/chooaa/cs_lab/cpu_ex/inst/n4_addi_ov_ex.S:95
9fc03980:	40887000 	mtc0	t0,c0_epc
/home/chooaa/cs_lab/cpu_ex/inst/n4_addi_ov_ex.S:96
9fc03984:	16570004 	bne	s2,s7,9fc03998 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n4_addi_ov_ex.S:97
9fc03988:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n4_addi_ov_ex.S:98
9fc0398c:	14430002 	bne	v0,v1,9fc03998 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n4_addi_ov_ex.S:99
9fc03990:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n4_addi_ov_ex.S:101
9fc03994:	26730001 	addiu	s3,s3,1

9fc03998 <inst_error>:
/home/chooaa/cs_lab/cpu_ex/inst/n4_addi_ov_ex.S:104
9fc03998:	00104e00 	sll	t1,s0,0x18
/home/chooaa/cs_lab/cpu_ex/inst/n4_addi_ov_ex.S:105
9fc0399c:	01334025 	or	t0,t1,s3
/home/chooaa/cs_lab/cpu_ex/inst/n4_addi_ov_ex.S:106
9fc039a0:	ae280000 	sw	t0,0(s1)
/home/chooaa/cs_lab/cpu_ex/inst/n4_addi_ov_ex.S:107
9fc039a4:	03e00008 	jr	ra
/home/chooaa/cs_lab/cpu_ex/inst/n4_addi_ov_ex.S:108
9fc039a8:	00000000 	nop
9fc039ac:	00000000 	nop

9fc039b0 <n11_ft_adel_ex_test>:
/home/chooaa/cs_lab/cpu_ex/inst/n11_ft_adel_ex.S:7
9fc039b0:	26100001 	addiu	s0,s0,1
/home/chooaa/cs_lab/cpu_ex/inst/n11_ft_adel_ex.S:8
9fc039b4:	3c08800d 	lui	t0,0x800d
/home/chooaa/cs_lab/cpu_ex/inst/n11_ft_adel_ex.S:9
9fc039b8:	24120006 	li	s2,6
/home/chooaa/cs_lab/cpu_ex/inst/n11_ft_adel_ex.S:10
9fc039bc:	ad120000 	sw	s2,0(t0)
/home/chooaa/cs_lab/cpu_ex/inst/n11_ft_adel_ex.S:12
9fc039c0:	40805800 	mtc0	zero,c0_compare
/home/chooaa/cs_lab/cpu_ex/inst/n11_ft_adel_ex.S:13
9fc039c4:	3c170040 	lui	s7,0x40
/home/chooaa/cs_lab/cpu_ex/inst/n11_ft_adel_ex.S:14
9fc039c8:	40976000 	mtc0	s7,c0_status
/home/chooaa/cs_lab/cpu_ex/inst/n11_ft_adel_ex.S:15
9fc039cc:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n11_ft_adel_ex.S:16
9fc039d0:	3c170006 	lui	s7,0x6
/home/chooaa/cs_lab/cpu_ex/inst/n11_ft_adel_ex.S:19
9fc039d4:	3c14b27f 	lui	s4,0xb27f
9fc039d8:	36949789 	ori	s4,s4,0x9789
9fc039dc:	3c07b27f 	lui	a3,0xb27f
9fc039e0:	34e79789 	ori	a3,a3,0x9789
/home/chooaa/cs_lab/cpu_ex/inst/n11_ft_adel_ex.S:20
9fc039e4:	3c159fc0 	lui	s5,0x9fc0
9fc039e8:	26b539f0 	addiu	s5,s5,14832
/home/chooaa/cs_lab/cpu_ex/inst/n11_ft_adel_ex.S:21
9fc039ec:	02800008 	jr	s4
/home/chooaa/cs_lab/cpu_ex/inst/n11_ft_adel_ex.S:22
9fc039f0:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n11_ft_adel_ex.S:23
9fc039f4:	16570072 	bne	s2,s7,9fc03bc0 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n11_ft_adel_ex.S:24
9fc039f8:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n11_ft_adel_ex.S:25
9fc039fc:	40164000 	mfc0	s6,c0_badvaddr
/home/chooaa/cs_lab/cpu_ex/inst/n11_ft_adel_ex.S:26
9fc03a00:	14f6006f 	bne	a3,s6,9fc03bc0 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n11_ft_adel_ex.S:27
9fc03a04:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n11_ft_adel_ex.S:29
9fc03a08:	24120006 	li	s2,6
/home/chooaa/cs_lab/cpu_ex/inst/n11_ft_adel_ex.S:30
9fc03a0c:	3c14a101 	lui	s4,0xa101
9fc03a10:	3694bbed 	ori	s4,s4,0xbbed
9fc03a14:	3c07a101 	lui	a3,0xa101
9fc03a18:	34e7bbed 	ori	a3,a3,0xbbed
/home/chooaa/cs_lab/cpu_ex/inst/n11_ft_adel_ex.S:31
9fc03a1c:	40947000 	mtc0	s4,c0_epc
/home/chooaa/cs_lab/cpu_ex/inst/n11_ft_adel_ex.S:32
9fc03a20:	3c159fc0 	lui	s5,0x9fc0
9fc03a24:	26b53a30 	addiu	s5,s5,14896
/home/chooaa/cs_lab/cpu_ex/inst/n11_ft_adel_ex.S:33
9fc03a28:	ad080004 	sw	t0,4(t0)
/home/chooaa/cs_lab/cpu_ex/inst/n11_ft_adel_ex.S:34
9fc03a2c:	ad140004 	sw	s4,4(t0)
/home/chooaa/cs_lab/cpu_ex/inst/n11_ft_adel_ex.S:36
9fc03a30:	42000018 	eret
/home/chooaa/cs_lab/cpu_ex/inst/n11_ft_adel_ex.S:38
9fc03a34:	ad140000 	sw	s4,0(t0)
/home/chooaa/cs_lab/cpu_ex/inst/n11_ft_adel_ex.S:39
9fc03a38:	8d090004 	lw	t1,4(t0)
/home/chooaa/cs_lab/cpu_ex/inst/n11_ft_adel_ex.S:40
9fc03a3c:	15340060 	bne	t1,s4,9fc03bc0 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n11_ft_adel_ex.S:41
9fc03a40:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n11_ft_adel_ex.S:42
9fc03a44:	1657005e 	bne	s2,s7,9fc03bc0 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n11_ft_adel_ex.S:43
9fc03a48:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n11_ft_adel_ex.S:44
9fc03a4c:	40164000 	mfc0	s6,c0_badvaddr
/home/chooaa/cs_lab/cpu_ex/inst/n11_ft_adel_ex.S:45
9fc03a50:	14f6005b 	bne	a3,s6,9fc03bc0 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n11_ft_adel_ex.S:46
9fc03a54:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n11_ft_adel_ex.S:47
9fc03a58:	24120006 	li	s2,6
/home/chooaa/cs_lab/cpu_ex/inst/n11_ft_adel_ex.S:48
9fc03a5c:	ad120000 	sw	s2,0(t0)
/home/chooaa/cs_lab/cpu_ex/inst/n11_ft_adel_ex.S:50
9fc03a60:	24120006 	li	s2,6
/home/chooaa/cs_lab/cpu_ex/inst/n11_ft_adel_ex.S:51
9fc03a64:	3c148479 	lui	s4,0x8479
9fc03a68:	36940977 	ori	s4,s4,0x977
9fc03a6c:	3c078479 	lui	a3,0x8479
9fc03a70:	34e70977 	ori	a3,a3,0x977
/home/chooaa/cs_lab/cpu_ex/inst/n11_ft_adel_ex.S:52
9fc03a74:	40947000 	mtc0	s4,c0_epc
/home/chooaa/cs_lab/cpu_ex/inst/n11_ft_adel_ex.S:53
9fc03a78:	3c159fc0 	lui	s5,0x9fc0
9fc03a7c:	26b53a88 	addiu	s5,s5,14984
/home/chooaa/cs_lab/cpu_ex/inst/n11_ft_adel_ex.S:54
9fc03a80:	01000011 	mthi	t0
/home/chooaa/cs_lab/cpu_ex/inst/n11_ft_adel_ex.S:55
9fc03a84:	0110001b 	divu	zero,t0,s0
/home/chooaa/cs_lab/cpu_ex/inst/n11_ft_adel_ex.S:57
9fc03a88:	42000018 	eret
/home/chooaa/cs_lab/cpu_ex/inst/n11_ft_adel_ex.S:59
9fc03a8c:	00004810 	mfhi	t1
/home/chooaa/cs_lab/cpu_ex/inst/n11_ft_adel_ex.S:60
9fc03a90:	1128004b 	beq	t1,t0,9fc03bc0 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n11_ft_adel_ex.S:61
9fc03a94:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n11_ft_adel_ex.S:62
9fc03a98:	16570049 	bne	s2,s7,9fc03bc0 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n11_ft_adel_ex.S:63
9fc03a9c:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n11_ft_adel_ex.S:64
9fc03aa0:	40164000 	mfc0	s6,c0_badvaddr
/home/chooaa/cs_lab/cpu_ex/inst/n11_ft_adel_ex.S:65
9fc03aa4:	14f60046 	bne	a3,s6,9fc03bc0 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n11_ft_adel_ex.S:66
9fc03aa8:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n11_ft_adel_ex.S:68
9fc03aac:	24120006 	li	s2,6
/home/chooaa/cs_lab/cpu_ex/inst/n11_ft_adel_ex.S:69
9fc03ab0:	3c1492b0 	lui	s4,0x92b0
9fc03ab4:	3694a2c3 	ori	s4,s4,0xa2c3
9fc03ab8:	3c0792b0 	lui	a3,0x92b0
9fc03abc:	34e7a2c3 	ori	a3,a3,0xa2c3
/home/chooaa/cs_lab/cpu_ex/inst/n11_ft_adel_ex.S:70
9fc03ac0:	3c159fc0 	lui	s5,0x9fc0
9fc03ac4:	26b53acc 	addiu	s5,s5,15052
/home/chooaa/cs_lab/cpu_ex/inst/n11_ft_adel_ex.S:71
9fc03ac8:	02800008 	jr	s4
/home/chooaa/cs_lab/cpu_ex/inst/n11_ft_adel_ex.S:72
9fc03acc:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n11_ft_adel_ex.S:73
9fc03ad0:	0208001b 	divu	zero,s0,t0
/home/chooaa/cs_lab/cpu_ex/inst/n11_ft_adel_ex.S:74
9fc03ad4:	1657003a 	bne	s2,s7,9fc03bc0 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n11_ft_adel_ex.S:75
9fc03ad8:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n11_ft_adel_ex.S:76
9fc03adc:	40164000 	mfc0	s6,c0_badvaddr
/home/chooaa/cs_lab/cpu_ex/inst/n11_ft_adel_ex.S:77
9fc03ae0:	14f60037 	bne	a3,s6,9fc03bc0 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n11_ft_adel_ex.S:78
9fc03ae4:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n11_ft_adel_ex.S:80
9fc03ae8:	24120006 	li	s2,6
/home/chooaa/cs_lab/cpu_ex/inst/n11_ft_adel_ex.S:81
9fc03aec:	3c14af9e 	lui	s4,0xaf9e
9fc03af0:	3694dafa 	ori	s4,s4,0xdafa
9fc03af4:	3c07af9e 	lui	a3,0xaf9e
9fc03af8:	34e7dafa 	ori	a3,a3,0xdafa
/home/chooaa/cs_lab/cpu_ex/inst/n11_ft_adel_ex.S:82
9fc03afc:	40947000 	mtc0	s4,c0_epc
/home/chooaa/cs_lab/cpu_ex/inst/n11_ft_adel_ex.S:83
9fc03b00:	3c159fc0 	lui	s5,0x9fc0
9fc03b04:	26b53b10 	addiu	s5,s5,15120
/home/chooaa/cs_lab/cpu_ex/inst/n11_ft_adel_ex.S:84
9fc03b08:	01000013 	mtlo	t0
/home/chooaa/cs_lab/cpu_ex/inst/n11_ft_adel_ex.S:85
9fc03b0c:	01100019 	multu	t0,s0
/home/chooaa/cs_lab/cpu_ex/inst/n11_ft_adel_ex.S:87
9fc03b10:	42000018 	eret
/home/chooaa/cs_lab/cpu_ex/inst/n11_ft_adel_ex.S:89
9fc03b14:	00004810 	mfhi	t1
/home/chooaa/cs_lab/cpu_ex/inst/n11_ft_adel_ex.S:90
9fc03b18:	11280029 	beq	t1,t0,9fc03bc0 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n11_ft_adel_ex.S:91
9fc03b1c:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n11_ft_adel_ex.S:92
9fc03b20:	16570027 	bne	s2,s7,9fc03bc0 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n11_ft_adel_ex.S:93
9fc03b24:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n11_ft_adel_ex.S:94
9fc03b28:	40164000 	mfc0	s6,c0_badvaddr
/home/chooaa/cs_lab/cpu_ex/inst/n11_ft_adel_ex.S:95
9fc03b2c:	14f60024 	bne	a3,s6,9fc03bc0 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n11_ft_adel_ex.S:96
9fc03b30:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n11_ft_adel_ex.S:98
9fc03b34:	24120006 	li	s2,6
/home/chooaa/cs_lab/cpu_ex/inst/n11_ft_adel_ex.S:99
9fc03b38:	3c14b088 	lui	s4,0xb088
9fc03b3c:	3694f329 	ori	s4,s4,0xf329
9fc03b40:	3c07b088 	lui	a3,0xb088
9fc03b44:	34e7f329 	ori	a3,a3,0xf329
/home/chooaa/cs_lab/cpu_ex/inst/n11_ft_adel_ex.S:100
9fc03b48:	3c159fc0 	lui	s5,0x9fc0
9fc03b4c:	26b53b54 	addiu	s5,s5,15188
/home/chooaa/cs_lab/cpu_ex/inst/n11_ft_adel_ex.S:101
9fc03b50:	02800008 	jr	s4
/home/chooaa/cs_lab/cpu_ex/inst/n11_ft_adel_ex.S:102
9fc03b54:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n11_ft_adel_ex.S:103
9fc03b58:	01120019 	multu	t0,s2
/home/chooaa/cs_lab/cpu_ex/inst/n11_ft_adel_ex.S:104
9fc03b5c:	16570018 	bne	s2,s7,9fc03bc0 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n11_ft_adel_ex.S:105
9fc03b60:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n11_ft_adel_ex.S:106
9fc03b64:	14430016 	bne	v0,v1,9fc03bc0 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n11_ft_adel_ex.S:107
9fc03b68:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n11_ft_adel_ex.S:108
9fc03b6c:	40164000 	mfc0	s6,c0_badvaddr
/home/chooaa/cs_lab/cpu_ex/inst/n11_ft_adel_ex.S:109
9fc03b70:	14f60013 	bne	a3,s6,9fc03bc0 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n11_ft_adel_ex.S:110
9fc03b74:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n11_ft_adel_ex.S:112
9fc03b78:	24120006 	li	s2,6
/home/chooaa/cs_lab/cpu_ex/inst/n11_ft_adel_ex.S:113
9fc03b7c:	3c14827f 	lui	s4,0x827f
9fc03b80:	369497ab 	ori	s4,s4,0x97ab
9fc03b84:	3c07827f 	lui	a3,0x827f
9fc03b88:	34e797ab 	ori	a3,a3,0x97ab
/home/chooaa/cs_lab/cpu_ex/inst/n11_ft_adel_ex.S:114
9fc03b8c:	40947000 	mtc0	s4,c0_epc
/home/chooaa/cs_lab/cpu_ex/inst/n11_ft_adel_ex.S:115
9fc03b90:	3c159fc0 	lui	s5,0x9fc0
9fc03b94:	26b53b98 	addiu	s5,s5,15256
/home/chooaa/cs_lab/cpu_ex/inst/n11_ft_adel_ex.S:117
9fc03b98:	42000018 	eret
/home/chooaa/cs_lab/cpu_ex/inst/n11_ft_adel_ex.S:119
9fc03b9c:	40887000 	mtc0	t0,c0_epc
/home/chooaa/cs_lab/cpu_ex/inst/n11_ft_adel_ex.S:120
9fc03ba0:	16570007 	bne	s2,s7,9fc03bc0 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n11_ft_adel_ex.S:121
9fc03ba4:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n11_ft_adel_ex.S:122
9fc03ba8:	14430005 	bne	v0,v1,9fc03bc0 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n11_ft_adel_ex.S:123
9fc03bac:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n11_ft_adel_ex.S:124
9fc03bb0:	40164000 	mfc0	s6,c0_badvaddr
/home/chooaa/cs_lab/cpu_ex/inst/n11_ft_adel_ex.S:125
9fc03bb4:	14f60002 	bne	a3,s6,9fc03bc0 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n11_ft_adel_ex.S:126
9fc03bb8:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n11_ft_adel_ex.S:128
9fc03bbc:	26730001 	addiu	s3,s3,1

9fc03bc0 <inst_error>:
/home/chooaa/cs_lab/cpu_ex/inst/n11_ft_adel_ex.S:131
9fc03bc0:	00104e00 	sll	t1,s0,0x18
/home/chooaa/cs_lab/cpu_ex/inst/n11_ft_adel_ex.S:132
9fc03bc4:	01334025 	or	t0,t1,s3
/home/chooaa/cs_lab/cpu_ex/inst/n11_ft_adel_ex.S:133
9fc03bc8:	ae280000 	sw	t0,0(s1)
/home/chooaa/cs_lab/cpu_ex/inst/n11_ft_adel_ex.S:134
9fc03bcc:	03e00008 	jr	ra
/home/chooaa/cs_lab/cpu_ex/inst/n11_ft_adel_ex.S:135
9fc03bd0:	00000000 	nop
	...

9fc03be0 <n12_ri_ex_test>:
/home/chooaa/cs_lab/cpu_ex/inst/n12_ri_ex.S:7
9fc03be0:	26100001 	addiu	s0,s0,1
/home/chooaa/cs_lab/cpu_ex/inst/n12_ri_ex.S:8
9fc03be4:	3c08800d 	lui	t0,0x800d
/home/chooaa/cs_lab/cpu_ex/inst/n12_ri_ex.S:9
9fc03be8:	24120007 	li	s2,7
/home/chooaa/cs_lab/cpu_ex/inst/n12_ri_ex.S:10
9fc03bec:	ad120000 	sw	s2,0(t0)
/home/chooaa/cs_lab/cpu_ex/inst/n12_ri_ex.S:12
9fc03bf0:	40805800 	mtc0	zero,c0_compare
/home/chooaa/cs_lab/cpu_ex/inst/n12_ri_ex.S:13
9fc03bf4:	3c170040 	lui	s7,0x40
/home/chooaa/cs_lab/cpu_ex/inst/n12_ri_ex.S:14
9fc03bf8:	40976000 	mtc0	s7,c0_status
/home/chooaa/cs_lab/cpu_ex/inst/n12_ri_ex.S:15
9fc03bfc:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n12_ri_ex.S:16
9fc03c00:	3c170007 	lui	s7,0x7
/home/chooaa/cs_lab/cpu_ex/inst/n12_ri_ex.S:19
9fc03c04:	3c149fc0 	lui	s4,0x9fc0
9fc03c08:	26943c0c 	addiu	s4,s4,15372
9fc03c0c:	700000fe 	0x700000fe
/home/chooaa/cs_lab/cpu_ex/inst/n12_ri_ex.S:21
9fc03c10:	16570040 	bne	s2,s7,9fc03d14 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n12_ri_ex.S:22
9fc03c14:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n12_ri_ex.S:24
9fc03c18:	24120007 	li	s2,7
/home/chooaa/cs_lab/cpu_ex/inst/n12_ri_ex.S:25
9fc03c1c:	3c149fc0 	lui	s4,0x9fc0
9fc03c20:	26943c2c 	addiu	s4,s4,15404
/home/chooaa/cs_lab/cpu_ex/inst/n12_ri_ex.S:26
9fc03c24:	ad080004 	sw	t0,4(t0)
/home/chooaa/cs_lab/cpu_ex/inst/n12_ri_ex.S:27
9fc03c28:	ad140004 	sw	s4,4(t0)
9fc03c2c:	7a22db9c 	0x7a22db9c
/home/chooaa/cs_lab/cpu_ex/inst/n12_ri_ex.S:29
9fc03c30:	ad140000 	sw	s4,0(t0)
/home/chooaa/cs_lab/cpu_ex/inst/n12_ri_ex.S:30
9fc03c34:	8d090004 	lw	t1,4(t0)
/home/chooaa/cs_lab/cpu_ex/inst/n12_ri_ex.S:31
9fc03c38:	15340036 	bne	t1,s4,9fc03d14 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n12_ri_ex.S:32
9fc03c3c:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n12_ri_ex.S:33
9fc03c40:	16570034 	bne	s2,s7,9fc03d14 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n12_ri_ex.S:34
9fc03c44:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n12_ri_ex.S:35
9fc03c48:	24120007 	li	s2,7
/home/chooaa/cs_lab/cpu_ex/inst/n12_ri_ex.S:36
9fc03c4c:	ad120000 	sw	s2,0(t0)
/home/chooaa/cs_lab/cpu_ex/inst/n12_ri_ex.S:38
9fc03c50:	24120007 	li	s2,7
/home/chooaa/cs_lab/cpu_ex/inst/n12_ri_ex.S:39
9fc03c54:	3c149fc0 	lui	s4,0x9fc0
9fc03c58:	26943c64 	addiu	s4,s4,15460
/home/chooaa/cs_lab/cpu_ex/inst/n12_ri_ex.S:40
9fc03c5c:	01000011 	mthi	t0
/home/chooaa/cs_lab/cpu_ex/inst/n12_ri_ex.S:41
9fc03c60:	0110001b 	divu	zero,t0,s0
9fc03c64:	6f76e210 	0x6f76e210
/home/chooaa/cs_lab/cpu_ex/inst/n12_ri_ex.S:43
9fc03c68:	00004810 	mfhi	t1
/home/chooaa/cs_lab/cpu_ex/inst/n12_ri_ex.S:44
9fc03c6c:	11280029 	beq	t1,t0,9fc03d14 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n12_ri_ex.S:45
9fc03c70:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n12_ri_ex.S:46
9fc03c74:	16570027 	bne	s2,s7,9fc03d14 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n12_ri_ex.S:47
9fc03c78:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n12_ri_ex.S:49
9fc03c7c:	24120007 	li	s2,7
/home/chooaa/cs_lab/cpu_ex/inst/n12_ri_ex.S:50
9fc03c80:	3c149fc0 	lui	s4,0x9fc0
9fc03c84:	26943c88 	addiu	s4,s4,15496
9fc03c88:	5a8d78ce 	0x5a8d78ce
/home/chooaa/cs_lab/cpu_ex/inst/n12_ri_ex.S:52
9fc03c8c:	0208001b 	divu	zero,s0,t0
/home/chooaa/cs_lab/cpu_ex/inst/n12_ri_ex.S:53
9fc03c90:	16570020 	bne	s2,s7,9fc03d14 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n12_ri_ex.S:54
9fc03c94:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n12_ri_ex.S:56
9fc03c98:	24120007 	li	s2,7
/home/chooaa/cs_lab/cpu_ex/inst/n12_ri_ex.S:57
9fc03c9c:	3c149fc0 	lui	s4,0x9fc0
9fc03ca0:	26943cac 	addiu	s4,s4,15532
/home/chooaa/cs_lab/cpu_ex/inst/n12_ri_ex.S:58
9fc03ca4:	01000013 	mtlo	t0
/home/chooaa/cs_lab/cpu_ex/inst/n12_ri_ex.S:59
9fc03ca8:	01100019 	multu	t0,s0
9fc03cac:	7bd1ac60 	0x7bd1ac60
/home/chooaa/cs_lab/cpu_ex/inst/n12_ri_ex.S:61
9fc03cb0:	00004810 	mfhi	t1
/home/chooaa/cs_lab/cpu_ex/inst/n12_ri_ex.S:62
9fc03cb4:	11280017 	beq	t1,t0,9fc03d14 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n12_ri_ex.S:63
9fc03cb8:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n12_ri_ex.S:64
9fc03cbc:	16570015 	bne	s2,s7,9fc03d14 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n12_ri_ex.S:65
9fc03cc0:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n12_ri_ex.S:67
9fc03cc4:	24120007 	li	s2,7
/home/chooaa/cs_lab/cpu_ex/inst/n12_ri_ex.S:68
9fc03cc8:	3c149fc0 	lui	s4,0x9fc0
9fc03ccc:	26943cd0 	addiu	s4,s4,15568
9fc03cd0:	7e6265cc 	0x7e6265cc
/home/chooaa/cs_lab/cpu_ex/inst/n12_ri_ex.S:70
9fc03cd4:	01120019 	multu	t0,s2
/home/chooaa/cs_lab/cpu_ex/inst/n12_ri_ex.S:71
9fc03cd8:	1657000e 	bne	s2,s7,9fc03d14 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n12_ri_ex.S:72
9fc03cdc:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n12_ri_ex.S:73
9fc03ce0:	1443000c 	bne	v0,v1,9fc03d14 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n12_ri_ex.S:74
9fc03ce4:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n12_ri_ex.S:76
9fc03ce8:	24120007 	li	s2,7
/home/chooaa/cs_lab/cpu_ex/inst/n12_ri_ex.S:77
9fc03cec:	3c149fc0 	lui	s4,0x9fc0
9fc03cf0:	26943cf8 	addiu	s4,s4,15608
/home/chooaa/cs_lab/cpu_ex/inst/n12_ri_ex.S:78
9fc03cf4:	40927000 	mtc0	s2,c0_epc
9fc03cf8:	9fc55510 	0x9fc55510
/home/chooaa/cs_lab/cpu_ex/inst/n12_ri_ex.S:80
9fc03cfc:	40887000 	mtc0	t0,c0_epc
/home/chooaa/cs_lab/cpu_ex/inst/n12_ri_ex.S:81
9fc03d00:	16570004 	bne	s2,s7,9fc03d14 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n12_ri_ex.S:82
9fc03d04:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n12_ri_ex.S:83
9fc03d08:	14430002 	bne	v0,v1,9fc03d14 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n12_ri_ex.S:84
9fc03d0c:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n12_ri_ex.S:86
9fc03d10:	26730001 	addiu	s3,s3,1

9fc03d14 <inst_error>:
/home/chooaa/cs_lab/cpu_ex/inst/n12_ri_ex.S:89
9fc03d14:	00104e00 	sll	t1,s0,0x18
/home/chooaa/cs_lab/cpu_ex/inst/n12_ri_ex.S:90
9fc03d18:	01334025 	or	t0,t1,s3
/home/chooaa/cs_lab/cpu_ex/inst/n12_ri_ex.S:91
9fc03d1c:	ae280000 	sw	t0,0(s1)
/home/chooaa/cs_lab/cpu_ex/inst/n12_ri_ex.S:92
9fc03d20:	03e00008 	jr	ra
/home/chooaa/cs_lab/cpu_ex/inst/n12_ri_ex.S:93
9fc03d24:	00000000 	nop
	...

9fc03d30 <n15_beq_ds_ex_test>:
/home/chooaa/cs_lab/cpu_ex/inst/n15_beq_ds_ex.S:7
9fc03d30:	26100001 	addiu	s0,s0,1
/home/chooaa/cs_lab/cpu_ex/inst/n15_beq_ds_ex.S:8
9fc03d34:	3c08800d 	lui	t0,0x800d
/home/chooaa/cs_lab/cpu_ex/inst/n15_beq_ds_ex.S:10
9fc03d38:	40805800 	mtc0	zero,c0_compare
/home/chooaa/cs_lab/cpu_ex/inst/n15_beq_ds_ex.S:11
9fc03d3c:	3c170040 	lui	s7,0x40
/home/chooaa/cs_lab/cpu_ex/inst/n15_beq_ds_ex.S:12
9fc03d40:	40976000 	mtc0	s7,c0_status
/home/chooaa/cs_lab/cpu_ex/inst/n15_beq_ds_ex.S:13
9fc03d44:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n15_beq_ds_ex.S:16
9fc03d48:	24120001 	li	s2,1
/home/chooaa/cs_lab/cpu_ex/inst/n15_beq_ds_ex.S:17
9fc03d4c:	3c170001 	lui	s7,0x1
/home/chooaa/cs_lab/cpu_ex/inst/n15_beq_ds_ex.S:18
9fc03d50:	ad120000 	sw	s2,0(t0)
/home/chooaa/cs_lab/cpu_ex/inst/n15_beq_ds_ex.S:19
9fc03d54:	3c149fc0 	lui	s4,0x9fc0
9fc03d58:	26943d5c 	addiu	s4,s4,15708
/home/chooaa/cs_lab/cpu_ex/inst/n15_beq_ds_ex.S:20
9fc03d5c:	100000af 	b	9fc0401c <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n15_beq_ds_ex.S:21
9fc03d60:	0000000c 	syscall
/home/chooaa/cs_lab/cpu_ex/inst/n15_beq_ds_ex.S:22
9fc03d64:	165700ad 	bne	s2,s7,9fc0401c <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n15_beq_ds_ex.S:23
9fc03d68:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n15_beq_ds_ex.S:24
9fc03d6c:	24120001 	li	s2,1
/home/chooaa/cs_lab/cpu_ex/inst/n15_beq_ds_ex.S:25
9fc03d70:	3c149fc0 	lui	s4,0x9fc0
9fc03d74:	26943d78 	addiu	s4,s4,15736
/home/chooaa/cs_lab/cpu_ex/inst/n15_beq_ds_ex.S:26
9fc03d78:	110000a8 	beqz	t0,9fc0401c <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n15_beq_ds_ex.S:27
9fc03d7c:	0000000c 	syscall
/home/chooaa/cs_lab/cpu_ex/inst/n15_beq_ds_ex.S:28
9fc03d80:	165700a6 	bne	s2,s7,9fc0401c <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n15_beq_ds_ex.S:29
9fc03d84:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n15_beq_ds_ex.S:31
9fc03d88:	24120002 	li	s2,2
/home/chooaa/cs_lab/cpu_ex/inst/n15_beq_ds_ex.S:32
9fc03d8c:	3c170002 	lui	s7,0x2
/home/chooaa/cs_lab/cpu_ex/inst/n15_beq_ds_ex.S:33
9fc03d90:	ad120000 	sw	s2,0(t0)
/home/chooaa/cs_lab/cpu_ex/inst/n15_beq_ds_ex.S:34
9fc03d94:	3c149fc0 	lui	s4,0x9fc0
9fc03d98:	26943d9c 	addiu	s4,s4,15772
/home/chooaa/cs_lab/cpu_ex/inst/n15_beq_ds_ex.S:35
9fc03d9c:	1000009f 	b	9fc0401c <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n15_beq_ds_ex.S:36
9fc03da0:	0000000d 	break
/home/chooaa/cs_lab/cpu_ex/inst/n15_beq_ds_ex.S:37
9fc03da4:	1657009d 	bne	s2,s7,9fc0401c <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n15_beq_ds_ex.S:38
9fc03da8:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n15_beq_ds_ex.S:39
9fc03dac:	24120002 	li	s2,2
/home/chooaa/cs_lab/cpu_ex/inst/n15_beq_ds_ex.S:40
9fc03db0:	3c149fc0 	lui	s4,0x9fc0
9fc03db4:	26943db8 	addiu	s4,s4,15800
/home/chooaa/cs_lab/cpu_ex/inst/n15_beq_ds_ex.S:41
9fc03db8:	11000098 	beqz	t0,9fc0401c <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n15_beq_ds_ex.S:42
9fc03dbc:	0000000d 	break
/home/chooaa/cs_lab/cpu_ex/inst/n15_beq_ds_ex.S:43
9fc03dc0:	16570096 	bne	s2,s7,9fc0401c <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n15_beq_ds_ex.S:44
9fc03dc4:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n15_beq_ds_ex.S:46
9fc03dc8:	24120003 	li	s2,3
/home/chooaa/cs_lab/cpu_ex/inst/n15_beq_ds_ex.S:47
9fc03dcc:	3c170003 	lui	s7,0x3
/home/chooaa/cs_lab/cpu_ex/inst/n15_beq_ds_ex.S:48
9fc03dd0:	ad120000 	sw	s2,0(t0)
/home/chooaa/cs_lab/cpu_ex/inst/n15_beq_ds_ex.S:49
9fc03dd4:	3c149fc0 	lui	s4,0x9fc0
9fc03dd8:	26943dec 	addiu	s4,s4,15852
/home/chooaa/cs_lab/cpu_ex/inst/n15_beq_ds_ex.S:50
9fc03ddc:	3c04ba03 	lui	a0,0xba03
9fc03de0:	34844f60 	ori	a0,a0,0x4f60
/home/chooaa/cs_lab/cpu_ex/inst/n15_beq_ds_ex.S:51
9fc03de4:	3c05b615 	lui	a1,0xb615
9fc03de8:	34a5fd67 	ori	a1,a1,0xfd67
/home/chooaa/cs_lab/cpu_ex/inst/n15_beq_ds_ex.S:52
9fc03dec:	1000008b 	b	9fc0401c <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n15_beq_ds_ex.S:53
9fc03df0:	0085b820 	add	s7,a0,a1
/home/chooaa/cs_lab/cpu_ex/inst/n15_beq_ds_ex.S:54
9fc03df4:	16570089 	bne	s2,s7,9fc0401c <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n15_beq_ds_ex.S:55
9fc03df8:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n15_beq_ds_ex.S:56
9fc03dfc:	24120003 	li	s2,3
/home/chooaa/cs_lab/cpu_ex/inst/n15_beq_ds_ex.S:57
9fc03e00:	3c149fc0 	lui	s4,0x9fc0
9fc03e04:	26943e08 	addiu	s4,s4,15880
/home/chooaa/cs_lab/cpu_ex/inst/n15_beq_ds_ex.S:58
9fc03e08:	11000084 	beqz	t0,9fc0401c <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n15_beq_ds_ex.S:59
9fc03e0c:	0085b820 	add	s7,a0,a1
/home/chooaa/cs_lab/cpu_ex/inst/n15_beq_ds_ex.S:60
9fc03e10:	ad170000 	sw	s7,0(t0)
/home/chooaa/cs_lab/cpu_ex/inst/n15_beq_ds_ex.S:61
9fc03e14:	16570081 	bne	s2,s7,9fc0401c <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n15_beq_ds_ex.S:62
9fc03e18:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n15_beq_ds_ex.S:63
9fc03e1c:	24120003 	li	s2,3
/home/chooaa/cs_lab/cpu_ex/inst/n15_beq_ds_ex.S:64
9fc03e20:	ad120000 	sw	s2,0(t0)
/home/chooaa/cs_lab/cpu_ex/inst/n15_beq_ds_ex.S:65
9fc03e24:	3c149fc0 	lui	s4,0x9fc0
9fc03e28:	26943e34 	addiu	s4,s4,15924
/home/chooaa/cs_lab/cpu_ex/inst/n15_beq_ds_ex.S:66
9fc03e2c:	3c047fff 	lui	a0,0x7fff
9fc03e30:	3484c19e 	ori	a0,a0,0xc19e
/home/chooaa/cs_lab/cpu_ex/inst/n15_beq_ds_ex.S:67
9fc03e34:	10000079 	b	9fc0401c <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n15_beq_ds_ex.S:68
9fc03e38:	20976512 	addi	s7,a0,25874
/home/chooaa/cs_lab/cpu_ex/inst/n15_beq_ds_ex.S:69
9fc03e3c:	16570077 	bne	s2,s7,9fc0401c <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n15_beq_ds_ex.S:70
9fc03e40:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n15_beq_ds_ex.S:71
9fc03e44:	24120003 	li	s2,3
/home/chooaa/cs_lab/cpu_ex/inst/n15_beq_ds_ex.S:72
9fc03e48:	3c149fc0 	lui	s4,0x9fc0
9fc03e4c:	26943e50 	addiu	s4,s4,15952
/home/chooaa/cs_lab/cpu_ex/inst/n15_beq_ds_ex.S:73
9fc03e50:	11000072 	beqz	t0,9fc0401c <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n15_beq_ds_ex.S:74
9fc03e54:	20976512 	addi	s7,a0,25874
/home/chooaa/cs_lab/cpu_ex/inst/n15_beq_ds_ex.S:75
9fc03e58:	16570070 	bne	s2,s7,9fc0401c <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n15_beq_ds_ex.S:76
9fc03e5c:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n15_beq_ds_ex.S:77
9fc03e60:	24120003 	li	s2,3
/home/chooaa/cs_lab/cpu_ex/inst/n15_beq_ds_ex.S:78
9fc03e64:	3c149fc0 	lui	s4,0x9fc0
9fc03e68:	26943e7c 	addiu	s4,s4,15996
/home/chooaa/cs_lab/cpu_ex/inst/n15_beq_ds_ex.S:79
9fc03e6c:	3c04a85e 	lui	a0,0xa85e
9fc03e70:	34847d00 	ori	a0,a0,0x7d00
/home/chooaa/cs_lab/cpu_ex/inst/n15_beq_ds_ex.S:80
9fc03e74:	3c056b7e 	lui	a1,0x6b7e
9fc03e78:	34a58e36 	ori	a1,a1,0x8e36
/home/chooaa/cs_lab/cpu_ex/inst/n15_beq_ds_ex.S:81
9fc03e7c:	10000067 	b	9fc0401c <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n15_beq_ds_ex.S:82
9fc03e80:	0085b822 	sub	s7,a0,a1
/home/chooaa/cs_lab/cpu_ex/inst/n15_beq_ds_ex.S:83
9fc03e84:	16570065 	bne	s2,s7,9fc0401c <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n15_beq_ds_ex.S:84
9fc03e88:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n15_beq_ds_ex.S:85
9fc03e8c:	24120003 	li	s2,3
/home/chooaa/cs_lab/cpu_ex/inst/n15_beq_ds_ex.S:86
9fc03e90:	3c149fc0 	lui	s4,0x9fc0
9fc03e94:	26943e98 	addiu	s4,s4,16024
/home/chooaa/cs_lab/cpu_ex/inst/n15_beq_ds_ex.S:87
9fc03e98:	11000060 	beqz	t0,9fc0401c <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n15_beq_ds_ex.S:88
9fc03e9c:	0085b822 	sub	s7,a0,a1
/home/chooaa/cs_lab/cpu_ex/inst/n15_beq_ds_ex.S:89
9fc03ea0:	1657005e 	bne	s2,s7,9fc0401c <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n15_beq_ds_ex.S:90
9fc03ea4:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n15_beq_ds_ex.S:92
9fc03ea8:	24120004 	li	s2,4
/home/chooaa/cs_lab/cpu_ex/inst/n15_beq_ds_ex.S:93
9fc03eac:	3c170004 	lui	s7,0x4
/home/chooaa/cs_lab/cpu_ex/inst/n15_beq_ds_ex.S:94
9fc03eb0:	ad120000 	sw	s2,0(t0)
/home/chooaa/cs_lab/cpu_ex/inst/n15_beq_ds_ex.S:95
9fc03eb4:	3c149fc0 	lui	s4,0x9fc0
9fc03eb8:	26943ebc 	addiu	s4,s4,16060
/home/chooaa/cs_lab/cpu_ex/inst/n15_beq_ds_ex.S:96
9fc03ebc:	10000057 	b	9fc0401c <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n15_beq_ds_ex.S:97
9fc03ec0:	8d170002 	lw	s7,2(t0)
/home/chooaa/cs_lab/cpu_ex/inst/n15_beq_ds_ex.S:98
9fc03ec4:	16570055 	bne	s2,s7,9fc0401c <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n15_beq_ds_ex.S:99
9fc03ec8:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n15_beq_ds_ex.S:100
9fc03ecc:	24120004 	li	s2,4
/home/chooaa/cs_lab/cpu_ex/inst/n15_beq_ds_ex.S:101
9fc03ed0:	3c149fc0 	lui	s4,0x9fc0
9fc03ed4:	26943ed8 	addiu	s4,s4,16088
/home/chooaa/cs_lab/cpu_ex/inst/n15_beq_ds_ex.S:102
9fc03ed8:	11000050 	beqz	t0,9fc0401c <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n15_beq_ds_ex.S:103
9fc03edc:	8d170002 	lw	s7,2(t0)
/home/chooaa/cs_lab/cpu_ex/inst/n15_beq_ds_ex.S:104
9fc03ee0:	1657004e 	bne	s2,s7,9fc0401c <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n15_beq_ds_ex.S:105
9fc03ee4:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n15_beq_ds_ex.S:106
9fc03ee8:	24120004 	li	s2,4
/home/chooaa/cs_lab/cpu_ex/inst/n15_beq_ds_ex.S:107
9fc03eec:	3c149fc0 	lui	s4,0x9fc0
9fc03ef0:	26943ef4 	addiu	s4,s4,16116
/home/chooaa/cs_lab/cpu_ex/inst/n15_beq_ds_ex.S:108
9fc03ef4:	10000049 	b	9fc0401c <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n15_beq_ds_ex.S:109
9fc03ef8:	85170001 	lh	s7,1(t0)
/home/chooaa/cs_lab/cpu_ex/inst/n15_beq_ds_ex.S:110
9fc03efc:	02f2001b 	divu	zero,s7,s2
/home/chooaa/cs_lab/cpu_ex/inst/n15_beq_ds_ex.S:111
9fc03f00:	16570046 	bne	s2,s7,9fc0401c <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n15_beq_ds_ex.S:112
9fc03f04:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n15_beq_ds_ex.S:113
9fc03f08:	24120004 	li	s2,4
/home/chooaa/cs_lab/cpu_ex/inst/n15_beq_ds_ex.S:114
9fc03f0c:	3c149fc0 	lui	s4,0x9fc0
9fc03f10:	26943f14 	addiu	s4,s4,16148
/home/chooaa/cs_lab/cpu_ex/inst/n15_beq_ds_ex.S:115
9fc03f14:	11000041 	beqz	t0,9fc0401c <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n15_beq_ds_ex.S:116
9fc03f18:	85170001 	lh	s7,1(t0)
/home/chooaa/cs_lab/cpu_ex/inst/n15_beq_ds_ex.S:117
9fc03f1c:	1657003f 	bne	s2,s7,9fc0401c <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n15_beq_ds_ex.S:118
9fc03f20:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n15_beq_ds_ex.S:119
9fc03f24:	3c149fc0 	lui	s4,0x9fc0
9fc03f28:	26943f2c 	addiu	s4,s4,16172
/home/chooaa/cs_lab/cpu_ex/inst/n15_beq_ds_ex.S:120
9fc03f2c:	1000003b 	b	9fc0401c <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n15_beq_ds_ex.S:121
9fc03f30:	95170003 	lhu	s7,3(t0)
/home/chooaa/cs_lab/cpu_ex/inst/n15_beq_ds_ex.S:122
9fc03f34:	16570039 	bne	s2,s7,9fc0401c <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n15_beq_ds_ex.S:123
9fc03f38:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n15_beq_ds_ex.S:124
9fc03f3c:	24120004 	li	s2,4
/home/chooaa/cs_lab/cpu_ex/inst/n15_beq_ds_ex.S:125
9fc03f40:	3c149fc0 	lui	s4,0x9fc0
9fc03f44:	26943f48 	addiu	s4,s4,16200
/home/chooaa/cs_lab/cpu_ex/inst/n15_beq_ds_ex.S:126
9fc03f48:	11000034 	beqz	t0,9fc0401c <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n15_beq_ds_ex.S:127
9fc03f4c:	95170003 	lhu	s7,3(t0)
/home/chooaa/cs_lab/cpu_ex/inst/n15_beq_ds_ex.S:128
9fc03f50:	16570032 	bne	s2,s7,9fc0401c <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n15_beq_ds_ex.S:129
9fc03f54:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n15_beq_ds_ex.S:131
9fc03f58:	24120005 	li	s2,5
/home/chooaa/cs_lab/cpu_ex/inst/n15_beq_ds_ex.S:132
9fc03f5c:	3c170005 	lui	s7,0x5
/home/chooaa/cs_lab/cpu_ex/inst/n15_beq_ds_ex.S:133
9fc03f60:	ad120000 	sw	s2,0(t0)
/home/chooaa/cs_lab/cpu_ex/inst/n15_beq_ds_ex.S:134
9fc03f64:	3c149fc0 	lui	s4,0x9fc0
9fc03f68:	26943f6c 	addiu	s4,s4,16236
/home/chooaa/cs_lab/cpu_ex/inst/n15_beq_ds_ex.S:135
9fc03f6c:	1000002b 	b	9fc0401c <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n15_beq_ds_ex.S:136
9fc03f70:	ad170002 	sw	s7,2(t0)
/home/chooaa/cs_lab/cpu_ex/inst/n15_beq_ds_ex.S:137
9fc03f74:	16570029 	bne	s2,s7,9fc0401c <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n15_beq_ds_ex.S:138
9fc03f78:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n15_beq_ds_ex.S:139
9fc03f7c:	24120005 	li	s2,5
/home/chooaa/cs_lab/cpu_ex/inst/n15_beq_ds_ex.S:140
9fc03f80:	3c149fc0 	lui	s4,0x9fc0
9fc03f84:	26943f88 	addiu	s4,s4,16264
/home/chooaa/cs_lab/cpu_ex/inst/n15_beq_ds_ex.S:141
9fc03f88:	11000024 	beqz	t0,9fc0401c <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n15_beq_ds_ex.S:142
9fc03f8c:	ad170002 	sw	s7,2(t0)
/home/chooaa/cs_lab/cpu_ex/inst/n15_beq_ds_ex.S:143
9fc03f90:	16570022 	bne	s2,s7,9fc0401c <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n15_beq_ds_ex.S:144
9fc03f94:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n15_beq_ds_ex.S:145
9fc03f98:	24120005 	li	s2,5
/home/chooaa/cs_lab/cpu_ex/inst/n15_beq_ds_ex.S:146
9fc03f9c:	3c149fc0 	lui	s4,0x9fc0
9fc03fa0:	26943fa4 	addiu	s4,s4,16292
/home/chooaa/cs_lab/cpu_ex/inst/n15_beq_ds_ex.S:147
9fc03fa4:	1000001d 	b	9fc0401c <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n15_beq_ds_ex.S:148
9fc03fa8:	a5170001 	sh	s7,1(t0)
/home/chooaa/cs_lab/cpu_ex/inst/n15_beq_ds_ex.S:149
9fc03fac:	1657001b 	bne	s2,s7,9fc0401c <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n15_beq_ds_ex.S:150
9fc03fb0:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n15_beq_ds_ex.S:151
9fc03fb4:	24120005 	li	s2,5
/home/chooaa/cs_lab/cpu_ex/inst/n15_beq_ds_ex.S:152
9fc03fb8:	3c149fc0 	lui	s4,0x9fc0
9fc03fbc:	26943fc0 	addiu	s4,s4,16320
/home/chooaa/cs_lab/cpu_ex/inst/n15_beq_ds_ex.S:153
9fc03fc0:	11000016 	beqz	t0,9fc0401c <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n15_beq_ds_ex.S:154
9fc03fc4:	a5170001 	sh	s7,1(t0)
/home/chooaa/cs_lab/cpu_ex/inst/n15_beq_ds_ex.S:155
9fc03fc8:	16570014 	bne	s2,s7,9fc0401c <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n15_beq_ds_ex.S:156
9fc03fcc:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n15_beq_ds_ex.S:159
9fc03fd0:	24120007 	li	s2,7
/home/chooaa/cs_lab/cpu_ex/inst/n15_beq_ds_ex.S:160
9fc03fd4:	3c170007 	lui	s7,0x7
/home/chooaa/cs_lab/cpu_ex/inst/n15_beq_ds_ex.S:161
9fc03fd8:	ad120000 	sw	s2,0(t0)
/home/chooaa/cs_lab/cpu_ex/inst/n15_beq_ds_ex.S:162
9fc03fdc:	3c149fc0 	lui	s4,0x9fc0
9fc03fe0:	26943fe4 	addiu	s4,s4,16356
/home/chooaa/cs_lab/cpu_ex/inst/n15_beq_ds_ex.S:163
9fc03fe4:	1000000d 	b	9fc0401c <inst_error>
9fc03fe8:	9e3c56aa 	0x9e3c56aa
/home/chooaa/cs_lab/cpu_ex/inst/n15_beq_ds_ex.S:165
9fc03fec:	02f20018 	mult	s7,s2
/home/chooaa/cs_lab/cpu_ex/inst/n15_beq_ds_ex.S:166
9fc03ff0:	1657000a 	bne	s2,s7,9fc0401c <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n15_beq_ds_ex.S:167
9fc03ff4:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n15_beq_ds_ex.S:168
9fc03ff8:	24120007 	li	s2,7
/home/chooaa/cs_lab/cpu_ex/inst/n15_beq_ds_ex.S:169
9fc03ffc:	3c149fc0 	lui	s4,0x9fc0
9fc04000:	26944008 	addiu	s4,s4,16392
/home/chooaa/cs_lab/cpu_ex/inst/n15_beq_ds_ex.S:170
9fc04004:	02f20018 	mult	s7,s2
/home/chooaa/cs_lab/cpu_ex/inst/n15_beq_ds_ex.S:171
9fc04008:	11000004 	beqz	t0,9fc0401c <inst_error>
9fc0400c:	ec1ba960 	swc3	$27,-22176(zero)
/home/chooaa/cs_lab/cpu_ex/inst/n15_beq_ds_ex.S:173
9fc04010:	16570002 	bne	s2,s7,9fc0401c <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n15_beq_ds_ex.S:174
9fc04014:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n15_beq_ds_ex.S:176
9fc04018:	26730001 	addiu	s3,s3,1

9fc0401c <inst_error>:
/home/chooaa/cs_lab/cpu_ex/inst/n15_beq_ds_ex.S:179
9fc0401c:	00104e00 	sll	t1,s0,0x18
/home/chooaa/cs_lab/cpu_ex/inst/n15_beq_ds_ex.S:180
9fc04020:	01334025 	or	t0,t1,s3
/home/chooaa/cs_lab/cpu_ex/inst/n15_beq_ds_ex.S:181
9fc04024:	ae280000 	sw	t0,0(s1)
/home/chooaa/cs_lab/cpu_ex/inst/n15_beq_ds_ex.S:182
9fc04028:	03e00008 	jr	ra
/home/chooaa/cs_lab/cpu_ex/inst/n15_beq_ds_ex.S:183
9fc0402c:	00000000 	nop

9fc04030 <n10_sh_ades_ex_test>:
/home/chooaa/cs_lab/cpu_ex/inst/n10_sh_ades_ex.S:7
9fc04030:	26100001 	addiu	s0,s0,1
/home/chooaa/cs_lab/cpu_ex/inst/n10_sh_ades_ex.S:8
9fc04034:	3c08800d 	lui	t0,0x800d
/home/chooaa/cs_lab/cpu_ex/inst/n10_sh_ades_ex.S:9
9fc04038:	24120005 	li	s2,5
/home/chooaa/cs_lab/cpu_ex/inst/n10_sh_ades_ex.S:10
9fc0403c:	ad120000 	sw	s2,0(t0)
/home/chooaa/cs_lab/cpu_ex/inst/n10_sh_ades_ex.S:12
9fc04040:	40805800 	mtc0	zero,c0_compare
/home/chooaa/cs_lab/cpu_ex/inst/n10_sh_ades_ex.S:13
9fc04044:	3c170040 	lui	s7,0x40
/home/chooaa/cs_lab/cpu_ex/inst/n10_sh_ades_ex.S:14
9fc04048:	40976000 	mtc0	s7,c0_status
/home/chooaa/cs_lab/cpu_ex/inst/n10_sh_ades_ex.S:15
9fc0404c:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n10_sh_ades_ex.S:16
9fc04050:	3c170005 	lui	s7,0x5
/home/chooaa/cs_lab/cpu_ex/inst/n10_sh_ades_ex.S:19
9fc04054:	3c028003 	lui	v0,0x8003
9fc04058:	3442602a 	ori	v0,v0,0x602a
9fc0405c:	3c038003 	lui	v1,0x8003
9fc04060:	3463602a 	ori	v1,v1,0x602a
9fc04064:	3c04800d 	lui	a0,0x800d
9fc04068:	3484602a 	ori	a0,a0,0x602a
9fc0406c:	3c0547cd 	lui	a1,0x47cd
9fc04070:	34a5f6da 	ori	a1,a1,0xf6da
9fc04074:	24878c35 	addiu	a3,a0,-29643
9fc04078:	ac828c32 	sw	v0,-29646(a0)
/home/chooaa/cs_lab/cpu_ex/inst/n10_sh_ades_ex.S:20
9fc0407c:	3c149fc0 	lui	s4,0x9fc0
9fc04080:	26944084 	addiu	s4,s4,16516
/home/chooaa/cs_lab/cpu_ex/inst/n10_sh_ades_ex.S:21
9fc04084:	a4858c35 	sh	a1,-29643(a0)
/home/chooaa/cs_lab/cpu_ex/inst/n10_sh_ades_ex.S:22
9fc04088:	165700a2 	bne	s2,s7,9fc04314 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n10_sh_ades_ex.S:23
9fc0408c:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n10_sh_ades_ex.S:24
9fc04090:	8c828c32 	lw	v0,-29646(a0)
/home/chooaa/cs_lab/cpu_ex/inst/n10_sh_ades_ex.S:25
9fc04094:	1443009f 	bne	v0,v1,9fc04314 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n10_sh_ades_ex.S:26
9fc04098:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n10_sh_ades_ex.S:27
9fc0409c:	40164000 	mfc0	s6,c0_badvaddr
/home/chooaa/cs_lab/cpu_ex/inst/n10_sh_ades_ex.S:28
9fc040a0:	14f6009c 	bne	a3,s6,9fc04314 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n10_sh_ades_ex.S:29
9fc040a4:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n10_sh_ades_ex.S:31
9fc040a8:	24120005 	li	s2,5
/home/chooaa/cs_lab/cpu_ex/inst/n10_sh_ades_ex.S:32
9fc040ac:	3c026e9c 	lui	v0,0x6e9c
9fc040b0:	3442e24e 	ori	v0,v0,0xe24e
9fc040b4:	3c036e9c 	lui	v1,0x6e9c
9fc040b8:	3463e24e 	ori	v1,v1,0xe24e
9fc040bc:	3c04800d 	lui	a0,0x800d
9fc040c0:	34842c08 	ori	a0,a0,0x2c08
9fc040c4:	3c056e9c 	lui	a1,0x6e9c
9fc040c8:	34a5e24e 	ori	a1,a1,0xe24e
9fc040cc:	2487098b 	addiu	a3,a0,2443
9fc040d0:	ac820988 	sw	v0,2440(a0)
/home/chooaa/cs_lab/cpu_ex/inst/n10_sh_ades_ex.S:33
9fc040d4:	3c149fc0 	lui	s4,0x9fc0
9fc040d8:	269440e4 	addiu	s4,s4,16612
/home/chooaa/cs_lab/cpu_ex/inst/n10_sh_ades_ex.S:34
9fc040dc:	ad080004 	sw	t0,4(t0)
/home/chooaa/cs_lab/cpu_ex/inst/n10_sh_ades_ex.S:35
9fc040e0:	ad140004 	sw	s4,4(t0)
/home/chooaa/cs_lab/cpu_ex/inst/n10_sh_ades_ex.S:36
9fc040e4:	a485098b 	sh	a1,2443(a0)
/home/chooaa/cs_lab/cpu_ex/inst/n10_sh_ades_ex.S:37
9fc040e8:	ad140000 	sw	s4,0(t0)
/home/chooaa/cs_lab/cpu_ex/inst/n10_sh_ades_ex.S:38
9fc040ec:	8d090004 	lw	t1,4(t0)
/home/chooaa/cs_lab/cpu_ex/inst/n10_sh_ades_ex.S:39
9fc040f0:	15340088 	bne	t1,s4,9fc04314 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n10_sh_ades_ex.S:40
9fc040f4:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n10_sh_ades_ex.S:41
9fc040f8:	16570086 	bne	s2,s7,9fc04314 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n10_sh_ades_ex.S:42
9fc040fc:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n10_sh_ades_ex.S:43
9fc04100:	8c820988 	lw	v0,2440(a0)
/home/chooaa/cs_lab/cpu_ex/inst/n10_sh_ades_ex.S:44
9fc04104:	14430083 	bne	v0,v1,9fc04314 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n10_sh_ades_ex.S:45
9fc04108:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n10_sh_ades_ex.S:46
9fc0410c:	40164000 	mfc0	s6,c0_badvaddr
/home/chooaa/cs_lab/cpu_ex/inst/n10_sh_ades_ex.S:47
9fc04110:	14f60080 	bne	a3,s6,9fc04314 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n10_sh_ades_ex.S:48
9fc04114:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n10_sh_ades_ex.S:49
9fc04118:	24120005 	li	s2,5
/home/chooaa/cs_lab/cpu_ex/inst/n10_sh_ades_ex.S:50
9fc0411c:	ad120000 	sw	s2,0(t0)
/home/chooaa/cs_lab/cpu_ex/inst/n10_sh_ades_ex.S:52
9fc04120:	24120005 	li	s2,5
/home/chooaa/cs_lab/cpu_ex/inst/n10_sh_ades_ex.S:53
9fc04124:	3c02419f 	lui	v0,0x419f
9fc04128:	34429f3b 	ori	v0,v0,0x9f3b
9fc0412c:	3c03419f 	lui	v1,0x419f
9fc04130:	34639f3b 	ori	v1,v1,0x9f3b
9fc04134:	3c04800d 	lui	a0,0x800d
9fc04138:	34841356 	ori	a0,a0,0x1356
9fc0413c:	3c05bb1a 	lui	a1,0xbb1a
9fc04140:	34a5fce8 	ori	a1,a1,0xfce8
9fc04144:	24871dd3 	addiu	a3,a0,7635
9fc04148:	ac821dd2 	sw	v0,7634(a0)
/home/chooaa/cs_lab/cpu_ex/inst/n10_sh_ades_ex.S:54
9fc0414c:	3c149fc0 	lui	s4,0x9fc0
9fc04150:	2694415c 	addiu	s4,s4,16732
/home/chooaa/cs_lab/cpu_ex/inst/n10_sh_ades_ex.S:55
9fc04154:	01000011 	mthi	t0
/home/chooaa/cs_lab/cpu_ex/inst/n10_sh_ades_ex.S:56
9fc04158:	0110001b 	divu	zero,t0,s0
/home/chooaa/cs_lab/cpu_ex/inst/n10_sh_ades_ex.S:57
9fc0415c:	a4851dd3 	sh	a1,7635(a0)
/home/chooaa/cs_lab/cpu_ex/inst/n10_sh_ades_ex.S:58
9fc04160:	00004810 	mfhi	t1
/home/chooaa/cs_lab/cpu_ex/inst/n10_sh_ades_ex.S:59
9fc04164:	1128006b 	beq	t1,t0,9fc04314 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n10_sh_ades_ex.S:60
9fc04168:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n10_sh_ades_ex.S:61
9fc0416c:	16570069 	bne	s2,s7,9fc04314 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n10_sh_ades_ex.S:62
9fc04170:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n10_sh_ades_ex.S:63
9fc04174:	8c821dd2 	lw	v0,7634(a0)
/home/chooaa/cs_lab/cpu_ex/inst/n10_sh_ades_ex.S:64
9fc04178:	14430066 	bne	v0,v1,9fc04314 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n10_sh_ades_ex.S:65
9fc0417c:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n10_sh_ades_ex.S:66
9fc04180:	40164000 	mfc0	s6,c0_badvaddr
/home/chooaa/cs_lab/cpu_ex/inst/n10_sh_ades_ex.S:67
9fc04184:	14f60063 	bne	a3,s6,9fc04314 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n10_sh_ades_ex.S:68
9fc04188:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n10_sh_ades_ex.S:70
9fc0418c:	24120005 	li	s2,5
/home/chooaa/cs_lab/cpu_ex/inst/n10_sh_ades_ex.S:71
9fc04190:	3c028003 	lui	v0,0x8003
9fc04194:	34423729 	ori	v0,v0,0x3729
9fc04198:	3c038003 	lui	v1,0x8003
9fc0419c:	34633729 	ori	v1,v1,0x3729
9fc041a0:	3c04800d 	lui	a0,0x800d
9fc041a4:	3484372c 	ori	a0,a0,0x372c
9fc041a8:	3c05190a 	lui	a1,0x190a
9fc041ac:	34a565ca 	ori	a1,a1,0x65ca
9fc041b0:	248786f1 	addiu	a3,a0,-30991
9fc041b4:	ac8286f0 	sw	v0,-30992(a0)
/home/chooaa/cs_lab/cpu_ex/inst/n10_sh_ades_ex.S:72
9fc041b8:	3c149fc0 	lui	s4,0x9fc0
9fc041bc:	269441c0 	addiu	s4,s4,16832
/home/chooaa/cs_lab/cpu_ex/inst/n10_sh_ades_ex.S:73
9fc041c0:	a48586f1 	sh	a1,-30991(a0)
/home/chooaa/cs_lab/cpu_ex/inst/n10_sh_ades_ex.S:74
9fc041c4:	0208001b 	divu	zero,s0,t0
/home/chooaa/cs_lab/cpu_ex/inst/n10_sh_ades_ex.S:75
9fc041c8:	16570052 	bne	s2,s7,9fc04314 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n10_sh_ades_ex.S:76
9fc041cc:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n10_sh_ades_ex.S:77
9fc041d0:	8c8286f0 	lw	v0,-30992(a0)
/home/chooaa/cs_lab/cpu_ex/inst/n10_sh_ades_ex.S:78
9fc041d4:	1443004f 	bne	v0,v1,9fc04314 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n10_sh_ades_ex.S:79
9fc041d8:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n10_sh_ades_ex.S:80
9fc041dc:	40164000 	mfc0	s6,c0_badvaddr
/home/chooaa/cs_lab/cpu_ex/inst/n10_sh_ades_ex.S:81
9fc041e0:	14f6004c 	bne	a3,s6,9fc04314 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n10_sh_ades_ex.S:82
9fc041e4:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n10_sh_ades_ex.S:84
9fc041e8:	24120005 	li	s2,5
/home/chooaa/cs_lab/cpu_ex/inst/n10_sh_ades_ex.S:85
9fc041ec:	3c028003 	lui	v0,0x8003
9fc041f0:	34421ff3 	ori	v0,v0,0x1ff3
9fc041f4:	3c038003 	lui	v1,0x8003
9fc041f8:	34631ff3 	ori	v1,v1,0x1ff3
9fc041fc:	3c04800d 	lui	a0,0x800d
9fc04200:	34841ff0 	ori	a0,a0,0x1ff0
9fc04204:	3c059fcc 	lui	a1,0x9fcc
9fc04208:	34a54ca0 	ori	a1,a1,0x4ca0
9fc0420c:	2487b663 	addiu	a3,a0,-18845
9fc04210:	ac82b660 	sw	v0,-18848(a0)
/home/chooaa/cs_lab/cpu_ex/inst/n10_sh_ades_ex.S:86
9fc04214:	3c149fc0 	lui	s4,0x9fc0
9fc04218:	26944224 	addiu	s4,s4,16932
/home/chooaa/cs_lab/cpu_ex/inst/n10_sh_ades_ex.S:87
9fc0421c:	01000013 	mtlo	t0
/home/chooaa/cs_lab/cpu_ex/inst/n10_sh_ades_ex.S:88
9fc04220:	01100019 	multu	t0,s0
/home/chooaa/cs_lab/cpu_ex/inst/n10_sh_ades_ex.S:89
9fc04224:	a485b663 	sh	a1,-18845(a0)
/home/chooaa/cs_lab/cpu_ex/inst/n10_sh_ades_ex.S:90
9fc04228:	00004810 	mfhi	t1
/home/chooaa/cs_lab/cpu_ex/inst/n10_sh_ades_ex.S:91
9fc0422c:	11280039 	beq	t1,t0,9fc04314 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n10_sh_ades_ex.S:92
9fc04230:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n10_sh_ades_ex.S:93
9fc04234:	16570037 	bne	s2,s7,9fc04314 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n10_sh_ades_ex.S:94
9fc04238:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n10_sh_ades_ex.S:95
9fc0423c:	8c82b660 	lw	v0,-18848(a0)
/home/chooaa/cs_lab/cpu_ex/inst/n10_sh_ades_ex.S:96
9fc04240:	14430034 	bne	v0,v1,9fc04314 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n10_sh_ades_ex.S:97
9fc04244:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n10_sh_ades_ex.S:98
9fc04248:	40164000 	mfc0	s6,c0_badvaddr
/home/chooaa/cs_lab/cpu_ex/inst/n10_sh_ades_ex.S:99
9fc0424c:	14f60031 	bne	a3,s6,9fc04314 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n10_sh_ades_ex.S:100
9fc04250:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n10_sh_ades_ex.S:102
9fc04254:	24120005 	li	s2,5
/home/chooaa/cs_lab/cpu_ex/inst/n10_sh_ades_ex.S:103
9fc04258:	3c0273b3 	lui	v0,0x73b3
9fc0425c:	34425a2b 	ori	v0,v0,0x5a2b
9fc04260:	3c0373b3 	lui	v1,0x73b3
9fc04264:	34635a2b 	ori	v1,v1,0x5a2b
9fc04268:	3c04800d 	lui	a0,0x800d
9fc0426c:	3484351b 	ori	a0,a0,0x351b
9fc04270:	3c05bd6f 	lui	a1,0xbd6f
9fc04274:	34a5420a 	ori	a1,a1,0x420a
9fc04278:	248764f2 	addiu	a3,a0,25842
9fc0427c:	ac8264f1 	sw	v0,25841(a0)
/home/chooaa/cs_lab/cpu_ex/inst/n10_sh_ades_ex.S:104
9fc04280:	3c149fc0 	lui	s4,0x9fc0
9fc04284:	26944288 	addiu	s4,s4,17032
/home/chooaa/cs_lab/cpu_ex/inst/n10_sh_ades_ex.S:105
9fc04288:	a48564f2 	sh	a1,25842(a0)
/home/chooaa/cs_lab/cpu_ex/inst/n10_sh_ades_ex.S:106
9fc0428c:	01120019 	multu	t0,s2
/home/chooaa/cs_lab/cpu_ex/inst/n10_sh_ades_ex.S:107
9fc04290:	16570020 	bne	s2,s7,9fc04314 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n10_sh_ades_ex.S:108
9fc04294:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n10_sh_ades_ex.S:109
9fc04298:	8c8264f1 	lw	v0,25841(a0)
/home/chooaa/cs_lab/cpu_ex/inst/n10_sh_ades_ex.S:110
9fc0429c:	1443001d 	bne	v0,v1,9fc04314 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n10_sh_ades_ex.S:111
9fc042a0:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n10_sh_ades_ex.S:112
9fc042a4:	40164000 	mfc0	s6,c0_badvaddr
/home/chooaa/cs_lab/cpu_ex/inst/n10_sh_ades_ex.S:113
9fc042a8:	14f6001a 	bne	a3,s6,9fc04314 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n10_sh_ades_ex.S:114
9fc042ac:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n10_sh_ades_ex.S:116
9fc042b0:	24120005 	li	s2,5
/home/chooaa/cs_lab/cpu_ex/inst/n10_sh_ades_ex.S:117
9fc042b4:	3c02a521 	lui	v0,0xa521
9fc042b8:	34420b0a 	ori	v0,v0,0xb0a
9fc042bc:	3c03a521 	lui	v1,0xa521
9fc042c0:	34630b0a 	ori	v1,v1,0xb0a
9fc042c4:	3c04800d 	lui	a0,0x800d
9fc042c8:	348463d7 	ori	a0,a0,0x63d7
9fc042cc:	3c0500e9 	lui	a1,0xe9
9fc042d0:	34a55990 	ori	a1,a1,0x5990
9fc042d4:	24877fc6 	addiu	a3,a0,32710
9fc042d8:	ac827fc5 	sw	v0,32709(a0)
/home/chooaa/cs_lab/cpu_ex/inst/n10_sh_ades_ex.S:118
9fc042dc:	3c149fc0 	lui	s4,0x9fc0
9fc042e0:	269442e8 	addiu	s4,s4,17128
/home/chooaa/cs_lab/cpu_ex/inst/n10_sh_ades_ex.S:119
9fc042e4:	40927000 	mtc0	s2,c0_epc
/home/chooaa/cs_lab/cpu_ex/inst/n10_sh_ades_ex.S:120
9fc042e8:	a4857fc6 	sh	a1,32710(a0)
/home/chooaa/cs_lab/cpu_ex/inst/n10_sh_ades_ex.S:121
9fc042ec:	40887000 	mtc0	t0,c0_epc
/home/chooaa/cs_lab/cpu_ex/inst/n10_sh_ades_ex.S:122
9fc042f0:	16570008 	bne	s2,s7,9fc04314 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n10_sh_ades_ex.S:123
9fc042f4:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n10_sh_ades_ex.S:124
9fc042f8:	8c827fc5 	lw	v0,32709(a0)
/home/chooaa/cs_lab/cpu_ex/inst/n10_sh_ades_ex.S:125
9fc042fc:	14430005 	bne	v0,v1,9fc04314 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n10_sh_ades_ex.S:126
9fc04300:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n10_sh_ades_ex.S:127
9fc04304:	40164000 	mfc0	s6,c0_badvaddr
/home/chooaa/cs_lab/cpu_ex/inst/n10_sh_ades_ex.S:128
9fc04308:	14f60002 	bne	a3,s6,9fc04314 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n10_sh_ades_ex.S:129
9fc0430c:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n10_sh_ades_ex.S:131
9fc04310:	26730001 	addiu	s3,s3,1

9fc04314 <inst_error>:
/home/chooaa/cs_lab/cpu_ex/inst/n10_sh_ades_ex.S:134
9fc04314:	00104e00 	sll	t1,s0,0x18
/home/chooaa/cs_lab/cpu_ex/inst/n10_sh_ades_ex.S:135
9fc04318:	01334025 	or	t0,t1,s3
/home/chooaa/cs_lab/cpu_ex/inst/n10_sh_ades_ex.S:136
9fc0431c:	ae280000 	sw	t0,0(s1)
/home/chooaa/cs_lab/cpu_ex/inst/n10_sh_ades_ex.S:137
9fc04320:	03e00008 	jr	ra
/home/chooaa/cs_lab/cpu_ex/inst/n10_sh_ades_ex.S:138
9fc04324:	00000000 	nop
	...

9fc04330 <n1_syscall_ex_test>:
/home/chooaa/cs_lab/cpu_ex/inst/n1_syscall_ex.S:7
9fc04330:	26100001 	addiu	s0,s0,1
/home/chooaa/cs_lab/cpu_ex/inst/n1_syscall_ex.S:8
9fc04334:	3c08800d 	lui	t0,0x800d
/home/chooaa/cs_lab/cpu_ex/inst/n1_syscall_ex.S:9
9fc04338:	24120001 	li	s2,1
/home/chooaa/cs_lab/cpu_ex/inst/n1_syscall_ex.S:10
9fc0433c:	ad120000 	sw	s2,0(t0)
/home/chooaa/cs_lab/cpu_ex/inst/n1_syscall_ex.S:12
9fc04340:	40805800 	mtc0	zero,c0_compare
/home/chooaa/cs_lab/cpu_ex/inst/n1_syscall_ex.S:13
9fc04344:	3c170040 	lui	s7,0x40
/home/chooaa/cs_lab/cpu_ex/inst/n1_syscall_ex.S:14
9fc04348:	40976000 	mtc0	s7,c0_status
/home/chooaa/cs_lab/cpu_ex/inst/n1_syscall_ex.S:15
9fc0434c:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n1_syscall_ex.S:16
9fc04350:	3c170001 	lui	s7,0x1
/home/chooaa/cs_lab/cpu_ex/inst/n1_syscall_ex.S:19
9fc04354:	3c149fc0 	lui	s4,0x9fc0
9fc04358:	2694435c 	addiu	s4,s4,17244

9fc0435c <syscall_pc1>:
/home/chooaa/cs_lab/cpu_ex/inst/n1_syscall_ex.S:21
9fc0435c:	0000000c 	syscall
/home/chooaa/cs_lab/cpu_ex/inst/n1_syscall_ex.S:22
9fc04360:	1657003c 	bne	s2,s7,9fc04454 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n1_syscall_ex.S:23
9fc04364:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n1_syscall_ex.S:25
9fc04368:	24120001 	li	s2,1
/home/chooaa/cs_lab/cpu_ex/inst/n1_syscall_ex.S:26
9fc0436c:	3c149fc0 	lui	s4,0x9fc0
9fc04370:	2694437c 	addiu	s4,s4,17276
/home/chooaa/cs_lab/cpu_ex/inst/n1_syscall_ex.S:27
9fc04374:	ad080004 	sw	t0,4(t0)
/home/chooaa/cs_lab/cpu_ex/inst/n1_syscall_ex.S:28
9fc04378:	ad140004 	sw	s4,4(t0)

9fc0437c <syscall_pc2>:
/home/chooaa/cs_lab/cpu_ex/inst/n1_syscall_ex.S:30
9fc0437c:	0000000c 	syscall
/home/chooaa/cs_lab/cpu_ex/inst/n1_syscall_ex.S:31
9fc04380:	ad140000 	sw	s4,0(t0)
/home/chooaa/cs_lab/cpu_ex/inst/n1_syscall_ex.S:32
9fc04384:	8d090004 	lw	t1,4(t0)
/home/chooaa/cs_lab/cpu_ex/inst/n1_syscall_ex.S:33
9fc04388:	15340032 	bne	t1,s4,9fc04454 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n1_syscall_ex.S:34
9fc0438c:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n1_syscall_ex.S:35
9fc04390:	16570030 	bne	s2,s7,9fc04454 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n1_syscall_ex.S:36
9fc04394:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n1_syscall_ex.S:37
9fc04398:	24120001 	li	s2,1
/home/chooaa/cs_lab/cpu_ex/inst/n1_syscall_ex.S:38
9fc0439c:	ad120000 	sw	s2,0(t0)
/home/chooaa/cs_lab/cpu_ex/inst/n1_syscall_ex.S:40
9fc043a0:	24120001 	li	s2,1
/home/chooaa/cs_lab/cpu_ex/inst/n1_syscall_ex.S:41
9fc043a4:	3c149fc0 	lui	s4,0x9fc0
9fc043a8:	269443b4 	addiu	s4,s4,17332
/home/chooaa/cs_lab/cpu_ex/inst/n1_syscall_ex.S:42
9fc043ac:	01000011 	mthi	t0
/home/chooaa/cs_lab/cpu_ex/inst/n1_syscall_ex.S:43
9fc043b0:	0110001b 	divu	zero,t0,s0

9fc043b4 <syscall_pc3>:
/home/chooaa/cs_lab/cpu_ex/inst/n1_syscall_ex.S:45
9fc043b4:	0000000c 	syscall
/home/chooaa/cs_lab/cpu_ex/inst/n1_syscall_ex.S:46
9fc043b8:	00004810 	mfhi	t1
/home/chooaa/cs_lab/cpu_ex/inst/n1_syscall_ex.S:47
9fc043bc:	11280025 	beq	t1,t0,9fc04454 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n1_syscall_ex.S:48
9fc043c0:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n1_syscall_ex.S:49
9fc043c4:	16570023 	bne	s2,s7,9fc04454 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n1_syscall_ex.S:50
9fc043c8:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n1_syscall_ex.S:52
9fc043cc:	24120001 	li	s2,1
/home/chooaa/cs_lab/cpu_ex/inst/n1_syscall_ex.S:53
9fc043d0:	3c149fc0 	lui	s4,0x9fc0
9fc043d4:	269443d8 	addiu	s4,s4,17368

9fc043d8 <syscall_pc4>:
/home/chooaa/cs_lab/cpu_ex/inst/n1_syscall_ex.S:55
9fc043d8:	0000000c 	syscall
/home/chooaa/cs_lab/cpu_ex/inst/n1_syscall_ex.S:56
9fc043dc:	0208001b 	divu	zero,s0,t0
/home/chooaa/cs_lab/cpu_ex/inst/n1_syscall_ex.S:57
9fc043e0:	1657001c 	bne	s2,s7,9fc04454 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n1_syscall_ex.S:58
9fc043e4:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n1_syscall_ex.S:60
9fc043e8:	24120001 	li	s2,1
/home/chooaa/cs_lab/cpu_ex/inst/n1_syscall_ex.S:61
9fc043ec:	3c149fc0 	lui	s4,0x9fc0
9fc043f0:	269443fc 	addiu	s4,s4,17404
/home/chooaa/cs_lab/cpu_ex/inst/n1_syscall_ex.S:62
9fc043f4:	01000013 	mtlo	t0
/home/chooaa/cs_lab/cpu_ex/inst/n1_syscall_ex.S:63
9fc043f8:	01100019 	multu	t0,s0

9fc043fc <syscall_pc5>:
/home/chooaa/cs_lab/cpu_ex/inst/n1_syscall_ex.S:65
9fc043fc:	0000000c 	syscall
/home/chooaa/cs_lab/cpu_ex/inst/n1_syscall_ex.S:66
9fc04400:	00004810 	mfhi	t1
/home/chooaa/cs_lab/cpu_ex/inst/n1_syscall_ex.S:67
9fc04404:	11280013 	beq	t1,t0,9fc04454 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n1_syscall_ex.S:68
9fc04408:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n1_syscall_ex.S:69
9fc0440c:	16570011 	bne	s2,s7,9fc04454 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n1_syscall_ex.S:70
9fc04410:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n1_syscall_ex.S:72
9fc04414:	24120001 	li	s2,1
/home/chooaa/cs_lab/cpu_ex/inst/n1_syscall_ex.S:73
9fc04418:	3c149fc0 	lui	s4,0x9fc0
9fc0441c:	26944420 	addiu	s4,s4,17440

9fc04420 <syscall_pc6>:
/home/chooaa/cs_lab/cpu_ex/inst/n1_syscall_ex.S:75
9fc04420:	0000000c 	syscall
/home/chooaa/cs_lab/cpu_ex/inst/n1_syscall_ex.S:76
9fc04424:	01120019 	multu	t0,s2
/home/chooaa/cs_lab/cpu_ex/inst/n1_syscall_ex.S:77
9fc04428:	1657000a 	bne	s2,s7,9fc04454 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n1_syscall_ex.S:78
9fc0442c:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n1_syscall_ex.S:80
9fc04430:	24120001 	li	s2,1
/home/chooaa/cs_lab/cpu_ex/inst/n1_syscall_ex.S:81
9fc04434:	3c149fc0 	lui	s4,0x9fc0
9fc04438:	26944440 	addiu	s4,s4,17472
/home/chooaa/cs_lab/cpu_ex/inst/n1_syscall_ex.S:82
9fc0443c:	40927000 	mtc0	s2,c0_epc

9fc04440 <syscall_pc7>:
/home/chooaa/cs_lab/cpu_ex/inst/n1_syscall_ex.S:84
9fc04440:	0000000c 	syscall
/home/chooaa/cs_lab/cpu_ex/inst/n1_syscall_ex.S:85
9fc04444:	40887000 	mtc0	t0,c0_epc
/home/chooaa/cs_lab/cpu_ex/inst/n1_syscall_ex.S:86
9fc04448:	16570002 	bne	s2,s7,9fc04454 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n1_syscall_ex.S:87
9fc0444c:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n1_syscall_ex.S:89
9fc04450:	26730001 	addiu	s3,s3,1

9fc04454 <inst_error>:
/home/chooaa/cs_lab/cpu_ex/inst/n1_syscall_ex.S:92
9fc04454:	00104e00 	sll	t1,s0,0x18
/home/chooaa/cs_lab/cpu_ex/inst/n1_syscall_ex.S:93
9fc04458:	01334025 	or	t0,t1,s3
/home/chooaa/cs_lab/cpu_ex/inst/n1_syscall_ex.S:94
9fc0445c:	ae280000 	sw	t0,0(s1)
/home/chooaa/cs_lab/cpu_ex/inst/n1_syscall_ex.S:95
9fc04460:	03e00008 	jr	ra
/home/chooaa/cs_lab/cpu_ex/inst/n1_syscall_ex.S:96
9fc04464:	00000000 	nop
	...

9fc04470 <n19_blez_ds_ex_test>:
/home/chooaa/cs_lab/cpu_ex/inst/n19_blez_ds_ex.S:7
9fc04470:	26100001 	addiu	s0,s0,1
/home/chooaa/cs_lab/cpu_ex/inst/n19_blez_ds_ex.S:8
9fc04474:	3c08800d 	lui	t0,0x800d
/home/chooaa/cs_lab/cpu_ex/inst/n19_blez_ds_ex.S:10
9fc04478:	40805800 	mtc0	zero,c0_compare
/home/chooaa/cs_lab/cpu_ex/inst/n19_blez_ds_ex.S:11
9fc0447c:	3c170040 	lui	s7,0x40
/home/chooaa/cs_lab/cpu_ex/inst/n19_blez_ds_ex.S:12
9fc04480:	40976000 	mtc0	s7,c0_status
/home/chooaa/cs_lab/cpu_ex/inst/n19_blez_ds_ex.S:13
9fc04484:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n19_blez_ds_ex.S:16
9fc04488:	24120001 	li	s2,1
/home/chooaa/cs_lab/cpu_ex/inst/n19_blez_ds_ex.S:17
9fc0448c:	3c170001 	lui	s7,0x1
/home/chooaa/cs_lab/cpu_ex/inst/n19_blez_ds_ex.S:18
9fc04490:	ad120000 	sw	s2,0(t0)
/home/chooaa/cs_lab/cpu_ex/inst/n19_blez_ds_ex.S:19
9fc04494:	3c149fc0 	lui	s4,0x9fc0
9fc04498:	2694449c 	addiu	s4,s4,17564
/home/chooaa/cs_lab/cpu_ex/inst/n19_blez_ds_ex.S:20
9fc0449c:	180000af 	blez	zero,9fc0475c <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n19_blez_ds_ex.S:21
9fc044a0:	0000000c 	syscall
/home/chooaa/cs_lab/cpu_ex/inst/n19_blez_ds_ex.S:22
9fc044a4:	165700ad 	bne	s2,s7,9fc0475c <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n19_blez_ds_ex.S:23
9fc044a8:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n19_blez_ds_ex.S:24
9fc044ac:	24120001 	li	s2,1
/home/chooaa/cs_lab/cpu_ex/inst/n19_blez_ds_ex.S:25
9fc044b0:	3c149fc0 	lui	s4,0x9fc0
9fc044b4:	269444b8 	addiu	s4,s4,17592
/home/chooaa/cs_lab/cpu_ex/inst/n19_blez_ds_ex.S:26
9fc044b8:	1a4000a8 	blez	s2,9fc0475c <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n19_blez_ds_ex.S:27
9fc044bc:	0000000c 	syscall
/home/chooaa/cs_lab/cpu_ex/inst/n19_blez_ds_ex.S:28
9fc044c0:	165700a6 	bne	s2,s7,9fc0475c <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n19_blez_ds_ex.S:29
9fc044c4:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n19_blez_ds_ex.S:31
9fc044c8:	24120002 	li	s2,2
/home/chooaa/cs_lab/cpu_ex/inst/n19_blez_ds_ex.S:32
9fc044cc:	3c170002 	lui	s7,0x2
/home/chooaa/cs_lab/cpu_ex/inst/n19_blez_ds_ex.S:33
9fc044d0:	ad120000 	sw	s2,0(t0)
/home/chooaa/cs_lab/cpu_ex/inst/n19_blez_ds_ex.S:34
9fc044d4:	3c149fc0 	lui	s4,0x9fc0
9fc044d8:	269444dc 	addiu	s4,s4,17628
/home/chooaa/cs_lab/cpu_ex/inst/n19_blez_ds_ex.S:35
9fc044dc:	1800009f 	blez	zero,9fc0475c <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n19_blez_ds_ex.S:36
9fc044e0:	0000000d 	break
/home/chooaa/cs_lab/cpu_ex/inst/n19_blez_ds_ex.S:37
9fc044e4:	1657009d 	bne	s2,s7,9fc0475c <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n19_blez_ds_ex.S:38
9fc044e8:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n19_blez_ds_ex.S:39
9fc044ec:	24120002 	li	s2,2
/home/chooaa/cs_lab/cpu_ex/inst/n19_blez_ds_ex.S:40
9fc044f0:	3c149fc0 	lui	s4,0x9fc0
9fc044f4:	269444f8 	addiu	s4,s4,17656
/home/chooaa/cs_lab/cpu_ex/inst/n19_blez_ds_ex.S:41
9fc044f8:	1a400098 	blez	s2,9fc0475c <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n19_blez_ds_ex.S:42
9fc044fc:	0000000d 	break
/home/chooaa/cs_lab/cpu_ex/inst/n19_blez_ds_ex.S:43
9fc04500:	16570096 	bne	s2,s7,9fc0475c <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n19_blez_ds_ex.S:44
9fc04504:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n19_blez_ds_ex.S:46
9fc04508:	24120003 	li	s2,3
/home/chooaa/cs_lab/cpu_ex/inst/n19_blez_ds_ex.S:47
9fc0450c:	3c170003 	lui	s7,0x3
/home/chooaa/cs_lab/cpu_ex/inst/n19_blez_ds_ex.S:48
9fc04510:	ad120000 	sw	s2,0(t0)
/home/chooaa/cs_lab/cpu_ex/inst/n19_blez_ds_ex.S:49
9fc04514:	3c149fc0 	lui	s4,0x9fc0
9fc04518:	2694452c 	addiu	s4,s4,17708
/home/chooaa/cs_lab/cpu_ex/inst/n19_blez_ds_ex.S:50
9fc0451c:	3c04ba03 	lui	a0,0xba03
9fc04520:	34844f60 	ori	a0,a0,0x4f60
/home/chooaa/cs_lab/cpu_ex/inst/n19_blez_ds_ex.S:51
9fc04524:	3c05b615 	lui	a1,0xb615
9fc04528:	34a5fd67 	ori	a1,a1,0xfd67
/home/chooaa/cs_lab/cpu_ex/inst/n19_blez_ds_ex.S:52
9fc0452c:	1800008b 	blez	zero,9fc0475c <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n19_blez_ds_ex.S:53
9fc04530:	0085b820 	add	s7,a0,a1
/home/chooaa/cs_lab/cpu_ex/inst/n19_blez_ds_ex.S:54
9fc04534:	16570089 	bne	s2,s7,9fc0475c <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n19_blez_ds_ex.S:55
9fc04538:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n19_blez_ds_ex.S:56
9fc0453c:	24120003 	li	s2,3
/home/chooaa/cs_lab/cpu_ex/inst/n19_blez_ds_ex.S:57
9fc04540:	3c149fc0 	lui	s4,0x9fc0
9fc04544:	26944548 	addiu	s4,s4,17736
/home/chooaa/cs_lab/cpu_ex/inst/n19_blez_ds_ex.S:58
9fc04548:	1a400084 	blez	s2,9fc0475c <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n19_blez_ds_ex.S:59
9fc0454c:	0085b820 	add	s7,a0,a1
/home/chooaa/cs_lab/cpu_ex/inst/n19_blez_ds_ex.S:60
9fc04550:	ad170000 	sw	s7,0(t0)
/home/chooaa/cs_lab/cpu_ex/inst/n19_blez_ds_ex.S:61
9fc04554:	16570081 	bne	s2,s7,9fc0475c <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n19_blez_ds_ex.S:62
9fc04558:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n19_blez_ds_ex.S:63
9fc0455c:	24120003 	li	s2,3
/home/chooaa/cs_lab/cpu_ex/inst/n19_blez_ds_ex.S:64
9fc04560:	ad120000 	sw	s2,0(t0)
/home/chooaa/cs_lab/cpu_ex/inst/n19_blez_ds_ex.S:65
9fc04564:	3c149fc0 	lui	s4,0x9fc0
9fc04568:	26944574 	addiu	s4,s4,17780
/home/chooaa/cs_lab/cpu_ex/inst/n19_blez_ds_ex.S:66
9fc0456c:	3c047fff 	lui	a0,0x7fff
9fc04570:	3484c19e 	ori	a0,a0,0xc19e
/home/chooaa/cs_lab/cpu_ex/inst/n19_blez_ds_ex.S:67
9fc04574:	18000079 	blez	zero,9fc0475c <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n19_blez_ds_ex.S:68
9fc04578:	20976512 	addi	s7,a0,25874
/home/chooaa/cs_lab/cpu_ex/inst/n19_blez_ds_ex.S:69
9fc0457c:	16570077 	bne	s2,s7,9fc0475c <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n19_blez_ds_ex.S:70
9fc04580:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n19_blez_ds_ex.S:71
9fc04584:	24120003 	li	s2,3
/home/chooaa/cs_lab/cpu_ex/inst/n19_blez_ds_ex.S:72
9fc04588:	3c149fc0 	lui	s4,0x9fc0
9fc0458c:	26944590 	addiu	s4,s4,17808
/home/chooaa/cs_lab/cpu_ex/inst/n19_blez_ds_ex.S:73
9fc04590:	1a400072 	blez	s2,9fc0475c <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n19_blez_ds_ex.S:74
9fc04594:	20976512 	addi	s7,a0,25874
/home/chooaa/cs_lab/cpu_ex/inst/n19_blez_ds_ex.S:75
9fc04598:	16570070 	bne	s2,s7,9fc0475c <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n19_blez_ds_ex.S:76
9fc0459c:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n19_blez_ds_ex.S:77
9fc045a0:	24120003 	li	s2,3
/home/chooaa/cs_lab/cpu_ex/inst/n19_blez_ds_ex.S:78
9fc045a4:	3c149fc0 	lui	s4,0x9fc0
9fc045a8:	269445bc 	addiu	s4,s4,17852
/home/chooaa/cs_lab/cpu_ex/inst/n19_blez_ds_ex.S:79
9fc045ac:	3c04a85e 	lui	a0,0xa85e
9fc045b0:	34847d00 	ori	a0,a0,0x7d00
/home/chooaa/cs_lab/cpu_ex/inst/n19_blez_ds_ex.S:80
9fc045b4:	3c056b7e 	lui	a1,0x6b7e
9fc045b8:	34a58e36 	ori	a1,a1,0x8e36
/home/chooaa/cs_lab/cpu_ex/inst/n19_blez_ds_ex.S:81
9fc045bc:	18000067 	blez	zero,9fc0475c <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n19_blez_ds_ex.S:82
9fc045c0:	0085b822 	sub	s7,a0,a1
/home/chooaa/cs_lab/cpu_ex/inst/n19_blez_ds_ex.S:83
9fc045c4:	16570065 	bne	s2,s7,9fc0475c <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n19_blez_ds_ex.S:84
9fc045c8:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n19_blez_ds_ex.S:85
9fc045cc:	24120003 	li	s2,3
/home/chooaa/cs_lab/cpu_ex/inst/n19_blez_ds_ex.S:86
9fc045d0:	3c149fc0 	lui	s4,0x9fc0
9fc045d4:	269445d8 	addiu	s4,s4,17880
/home/chooaa/cs_lab/cpu_ex/inst/n19_blez_ds_ex.S:87
9fc045d8:	1a400060 	blez	s2,9fc0475c <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n19_blez_ds_ex.S:88
9fc045dc:	0085b822 	sub	s7,a0,a1
/home/chooaa/cs_lab/cpu_ex/inst/n19_blez_ds_ex.S:89
9fc045e0:	1657005e 	bne	s2,s7,9fc0475c <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n19_blez_ds_ex.S:90
9fc045e4:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n19_blez_ds_ex.S:92
9fc045e8:	24120004 	li	s2,4
/home/chooaa/cs_lab/cpu_ex/inst/n19_blez_ds_ex.S:93
9fc045ec:	3c170004 	lui	s7,0x4
/home/chooaa/cs_lab/cpu_ex/inst/n19_blez_ds_ex.S:94
9fc045f0:	ad120000 	sw	s2,0(t0)
/home/chooaa/cs_lab/cpu_ex/inst/n19_blez_ds_ex.S:95
9fc045f4:	3c149fc0 	lui	s4,0x9fc0
9fc045f8:	269445fc 	addiu	s4,s4,17916
/home/chooaa/cs_lab/cpu_ex/inst/n19_blez_ds_ex.S:96
9fc045fc:	18000057 	blez	zero,9fc0475c <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n19_blez_ds_ex.S:97
9fc04600:	8d170002 	lw	s7,2(t0)
/home/chooaa/cs_lab/cpu_ex/inst/n19_blez_ds_ex.S:98
9fc04604:	16570055 	bne	s2,s7,9fc0475c <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n19_blez_ds_ex.S:99
9fc04608:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n19_blez_ds_ex.S:100
9fc0460c:	24120004 	li	s2,4
/home/chooaa/cs_lab/cpu_ex/inst/n19_blez_ds_ex.S:101
9fc04610:	3c149fc0 	lui	s4,0x9fc0
9fc04614:	26944618 	addiu	s4,s4,17944
/home/chooaa/cs_lab/cpu_ex/inst/n19_blez_ds_ex.S:102
9fc04618:	1a400050 	blez	s2,9fc0475c <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n19_blez_ds_ex.S:103
9fc0461c:	8d170002 	lw	s7,2(t0)
/home/chooaa/cs_lab/cpu_ex/inst/n19_blez_ds_ex.S:104
9fc04620:	1657004e 	bne	s2,s7,9fc0475c <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n19_blez_ds_ex.S:105
9fc04624:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n19_blez_ds_ex.S:106
9fc04628:	24120004 	li	s2,4
/home/chooaa/cs_lab/cpu_ex/inst/n19_blez_ds_ex.S:107
9fc0462c:	3c149fc0 	lui	s4,0x9fc0
9fc04630:	26944634 	addiu	s4,s4,17972
/home/chooaa/cs_lab/cpu_ex/inst/n19_blez_ds_ex.S:108
9fc04634:	18000049 	blez	zero,9fc0475c <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n19_blez_ds_ex.S:109
9fc04638:	85170001 	lh	s7,1(t0)
/home/chooaa/cs_lab/cpu_ex/inst/n19_blez_ds_ex.S:110
9fc0463c:	02f2001b 	divu	zero,s7,s2
/home/chooaa/cs_lab/cpu_ex/inst/n19_blez_ds_ex.S:111
9fc04640:	16570046 	bne	s2,s7,9fc0475c <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n19_blez_ds_ex.S:112
9fc04644:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n19_blez_ds_ex.S:113
9fc04648:	24120004 	li	s2,4
/home/chooaa/cs_lab/cpu_ex/inst/n19_blez_ds_ex.S:114
9fc0464c:	3c149fc0 	lui	s4,0x9fc0
9fc04650:	26944654 	addiu	s4,s4,18004
/home/chooaa/cs_lab/cpu_ex/inst/n19_blez_ds_ex.S:115
9fc04654:	1a400041 	blez	s2,9fc0475c <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n19_blez_ds_ex.S:116
9fc04658:	85170001 	lh	s7,1(t0)
/home/chooaa/cs_lab/cpu_ex/inst/n19_blez_ds_ex.S:117
9fc0465c:	1657003f 	bne	s2,s7,9fc0475c <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n19_blez_ds_ex.S:118
9fc04660:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n19_blez_ds_ex.S:119
9fc04664:	3c149fc0 	lui	s4,0x9fc0
9fc04668:	2694466c 	addiu	s4,s4,18028
/home/chooaa/cs_lab/cpu_ex/inst/n19_blez_ds_ex.S:120
9fc0466c:	1800003b 	blez	zero,9fc0475c <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n19_blez_ds_ex.S:121
9fc04670:	95170003 	lhu	s7,3(t0)
/home/chooaa/cs_lab/cpu_ex/inst/n19_blez_ds_ex.S:122
9fc04674:	16570039 	bne	s2,s7,9fc0475c <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n19_blez_ds_ex.S:123
9fc04678:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n19_blez_ds_ex.S:124
9fc0467c:	24120004 	li	s2,4
/home/chooaa/cs_lab/cpu_ex/inst/n19_blez_ds_ex.S:125
9fc04680:	3c149fc0 	lui	s4,0x9fc0
9fc04684:	26944688 	addiu	s4,s4,18056
/home/chooaa/cs_lab/cpu_ex/inst/n19_blez_ds_ex.S:126
9fc04688:	1a400034 	blez	s2,9fc0475c <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n19_blez_ds_ex.S:127
9fc0468c:	95170003 	lhu	s7,3(t0)
/home/chooaa/cs_lab/cpu_ex/inst/n19_blez_ds_ex.S:128
9fc04690:	16570032 	bne	s2,s7,9fc0475c <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n19_blez_ds_ex.S:129
9fc04694:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n19_blez_ds_ex.S:131
9fc04698:	24120005 	li	s2,5
/home/chooaa/cs_lab/cpu_ex/inst/n19_blez_ds_ex.S:132
9fc0469c:	3c170005 	lui	s7,0x5
/home/chooaa/cs_lab/cpu_ex/inst/n19_blez_ds_ex.S:133
9fc046a0:	ad120000 	sw	s2,0(t0)
/home/chooaa/cs_lab/cpu_ex/inst/n19_blez_ds_ex.S:134
9fc046a4:	3c149fc0 	lui	s4,0x9fc0
9fc046a8:	269446ac 	addiu	s4,s4,18092
/home/chooaa/cs_lab/cpu_ex/inst/n19_blez_ds_ex.S:135
9fc046ac:	1800002b 	blez	zero,9fc0475c <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n19_blez_ds_ex.S:136
9fc046b0:	ad170002 	sw	s7,2(t0)
/home/chooaa/cs_lab/cpu_ex/inst/n19_blez_ds_ex.S:137
9fc046b4:	16570029 	bne	s2,s7,9fc0475c <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n19_blez_ds_ex.S:138
9fc046b8:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n19_blez_ds_ex.S:139
9fc046bc:	24120005 	li	s2,5
/home/chooaa/cs_lab/cpu_ex/inst/n19_blez_ds_ex.S:140
9fc046c0:	3c149fc0 	lui	s4,0x9fc0
9fc046c4:	269446c8 	addiu	s4,s4,18120
/home/chooaa/cs_lab/cpu_ex/inst/n19_blez_ds_ex.S:141
9fc046c8:	1a400024 	blez	s2,9fc0475c <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n19_blez_ds_ex.S:142
9fc046cc:	ad170002 	sw	s7,2(t0)
/home/chooaa/cs_lab/cpu_ex/inst/n19_blez_ds_ex.S:143
9fc046d0:	16570022 	bne	s2,s7,9fc0475c <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n19_blez_ds_ex.S:144
9fc046d4:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n19_blez_ds_ex.S:145
9fc046d8:	24120005 	li	s2,5
/home/chooaa/cs_lab/cpu_ex/inst/n19_blez_ds_ex.S:146
9fc046dc:	3c149fc0 	lui	s4,0x9fc0
9fc046e0:	269446e4 	addiu	s4,s4,18148
/home/chooaa/cs_lab/cpu_ex/inst/n19_blez_ds_ex.S:147
9fc046e4:	1800001d 	blez	zero,9fc0475c <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n19_blez_ds_ex.S:148
9fc046e8:	a5170001 	sh	s7,1(t0)
/home/chooaa/cs_lab/cpu_ex/inst/n19_blez_ds_ex.S:149
9fc046ec:	1657001b 	bne	s2,s7,9fc0475c <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n19_blez_ds_ex.S:150
9fc046f0:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n19_blez_ds_ex.S:151
9fc046f4:	24120005 	li	s2,5
/home/chooaa/cs_lab/cpu_ex/inst/n19_blez_ds_ex.S:152
9fc046f8:	3c149fc0 	lui	s4,0x9fc0
9fc046fc:	26944700 	addiu	s4,s4,18176
/home/chooaa/cs_lab/cpu_ex/inst/n19_blez_ds_ex.S:153
9fc04700:	1a400016 	blez	s2,9fc0475c <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n19_blez_ds_ex.S:154
9fc04704:	a5170001 	sh	s7,1(t0)
/home/chooaa/cs_lab/cpu_ex/inst/n19_blez_ds_ex.S:155
9fc04708:	16570014 	bne	s2,s7,9fc0475c <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n19_blez_ds_ex.S:156
9fc0470c:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n19_blez_ds_ex.S:159
9fc04710:	24120007 	li	s2,7
/home/chooaa/cs_lab/cpu_ex/inst/n19_blez_ds_ex.S:160
9fc04714:	3c170007 	lui	s7,0x7
/home/chooaa/cs_lab/cpu_ex/inst/n19_blez_ds_ex.S:161
9fc04718:	ad120000 	sw	s2,0(t0)
/home/chooaa/cs_lab/cpu_ex/inst/n19_blez_ds_ex.S:162
9fc0471c:	3c149fc0 	lui	s4,0x9fc0
9fc04720:	26944724 	addiu	s4,s4,18212
/home/chooaa/cs_lab/cpu_ex/inst/n19_blez_ds_ex.S:163
9fc04724:	1800000d 	blez	zero,9fc0475c <inst_error>
9fc04728:	9e3c56aa 	0x9e3c56aa
/home/chooaa/cs_lab/cpu_ex/inst/n19_blez_ds_ex.S:165
9fc0472c:	02f20018 	mult	s7,s2
/home/chooaa/cs_lab/cpu_ex/inst/n19_blez_ds_ex.S:166
9fc04730:	1657000a 	bne	s2,s7,9fc0475c <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n19_blez_ds_ex.S:167
9fc04734:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n19_blez_ds_ex.S:168
9fc04738:	24120007 	li	s2,7
/home/chooaa/cs_lab/cpu_ex/inst/n19_blez_ds_ex.S:169
9fc0473c:	3c149fc0 	lui	s4,0x9fc0
9fc04740:	26944748 	addiu	s4,s4,18248
/home/chooaa/cs_lab/cpu_ex/inst/n19_blez_ds_ex.S:170
9fc04744:	02f20018 	mult	s7,s2
/home/chooaa/cs_lab/cpu_ex/inst/n19_blez_ds_ex.S:171
9fc04748:	1a400004 	blez	s2,9fc0475c <inst_error>
9fc0474c:	ec1ba960 	swc3	$27,-22176(zero)
/home/chooaa/cs_lab/cpu_ex/inst/n19_blez_ds_ex.S:173
9fc04750:	16570002 	bne	s2,s7,9fc0475c <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n19_blez_ds_ex.S:174
9fc04754:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n19_blez_ds_ex.S:176
9fc04758:	26730001 	addiu	s3,s3,1

9fc0475c <inst_error>:
/home/chooaa/cs_lab/cpu_ex/inst/n19_blez_ds_ex.S:179
9fc0475c:	00104e00 	sll	t1,s0,0x18
/home/chooaa/cs_lab/cpu_ex/inst/n19_blez_ds_ex.S:180
9fc04760:	01334025 	or	t0,t1,s3
/home/chooaa/cs_lab/cpu_ex/inst/n19_blez_ds_ex.S:181
9fc04764:	ae280000 	sw	t0,0(s1)
/home/chooaa/cs_lab/cpu_ex/inst/n19_blez_ds_ex.S:182
9fc04768:	03e00008 	jr	ra
/home/chooaa/cs_lab/cpu_ex/inst/n19_blez_ds_ex.S:183
9fc0476c:	00000000 	nop

9fc04770 <n9_sw_ades_ex_test>:
/home/chooaa/cs_lab/cpu_ex/inst/n9_sw_ades_ex.S:7
9fc04770:	26100001 	addiu	s0,s0,1
/home/chooaa/cs_lab/cpu_ex/inst/n9_sw_ades_ex.S:8
9fc04774:	3c08800d 	lui	t0,0x800d
/home/chooaa/cs_lab/cpu_ex/inst/n9_sw_ades_ex.S:9
9fc04778:	24120005 	li	s2,5
/home/chooaa/cs_lab/cpu_ex/inst/n9_sw_ades_ex.S:10
9fc0477c:	ad120000 	sw	s2,0(t0)
/home/chooaa/cs_lab/cpu_ex/inst/n9_sw_ades_ex.S:12
9fc04780:	40805800 	mtc0	zero,c0_compare
/home/chooaa/cs_lab/cpu_ex/inst/n9_sw_ades_ex.S:13
9fc04784:	3c170040 	lui	s7,0x40
/home/chooaa/cs_lab/cpu_ex/inst/n9_sw_ades_ex.S:14
9fc04788:	40976000 	mtc0	s7,c0_status
/home/chooaa/cs_lab/cpu_ex/inst/n9_sw_ades_ex.S:15
9fc0478c:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n9_sw_ades_ex.S:16
9fc04790:	3c170005 	lui	s7,0x5
/home/chooaa/cs_lab/cpu_ex/inst/n9_sw_ades_ex.S:19
9fc04794:	3c02b189 	lui	v0,0xb189
9fc04798:	3442c470 	ori	v0,v0,0xc470
9fc0479c:	3c03b189 	lui	v1,0xb189
9fc047a0:	3463c470 	ori	v1,v1,0xc470
9fc047a4:	3c04800d 	lui	a0,0x800d
9fc047a8:	34847bd1 	ori	a0,a0,0x7bd1
9fc047ac:	3c05b189 	lui	a1,0xb189
9fc047b0:	34a5c470 	ori	a1,a1,0xc470
9fc047b4:	24877974 	addiu	a3,a0,31092
9fc047b8:	ac827973 	sw	v0,31091(a0)
/home/chooaa/cs_lab/cpu_ex/inst/n9_sw_ades_ex.S:20
9fc047bc:	3c149fc0 	lui	s4,0x9fc0
9fc047c0:	269447c4 	addiu	s4,s4,18372
/home/chooaa/cs_lab/cpu_ex/inst/n9_sw_ades_ex.S:21
9fc047c4:	ac857974 	sw	a1,31092(a0)
/home/chooaa/cs_lab/cpu_ex/inst/n9_sw_ades_ex.S:22
9fc047c8:	165700a2 	bne	s2,s7,9fc04a54 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n9_sw_ades_ex.S:23
9fc047cc:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n9_sw_ades_ex.S:24
9fc047d0:	8c827973 	lw	v0,31091(a0)
/home/chooaa/cs_lab/cpu_ex/inst/n9_sw_ades_ex.S:25
9fc047d4:	1443009f 	bne	v0,v1,9fc04a54 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n9_sw_ades_ex.S:26
9fc047d8:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n9_sw_ades_ex.S:27
9fc047dc:	40164000 	mfc0	s6,c0_badvaddr
/home/chooaa/cs_lab/cpu_ex/inst/n9_sw_ades_ex.S:28
9fc047e0:	14f6009c 	bne	a3,s6,9fc04a54 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n9_sw_ades_ex.S:29
9fc047e4:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n9_sw_ades_ex.S:31
9fc047e8:	24120005 	li	s2,5
/home/chooaa/cs_lab/cpu_ex/inst/n9_sw_ades_ex.S:32
9fc047ec:	3c02c052 	lui	v0,0xc052
9fc047f0:	3442b3f0 	ori	v0,v0,0xb3f0
9fc047f4:	3c03c052 	lui	v1,0xc052
9fc047f8:	3463b3f0 	ori	v1,v1,0xb3f0
9fc047fc:	3c04800d 	lui	a0,0x800d
9fc04800:	348423d4 	ori	a0,a0,0x23d4
9fc04804:	3c05c052 	lui	a1,0xc052
9fc04808:	34a5b3f0 	ori	a1,a1,0xb3f0
9fc0480c:	248764a2 	addiu	a3,a0,25762
9fc04810:	ac8264a0 	sw	v0,25760(a0)
/home/chooaa/cs_lab/cpu_ex/inst/n9_sw_ades_ex.S:33
9fc04814:	3c149fc0 	lui	s4,0x9fc0
9fc04818:	26944824 	addiu	s4,s4,18468
/home/chooaa/cs_lab/cpu_ex/inst/n9_sw_ades_ex.S:34
9fc0481c:	ad080004 	sw	t0,4(t0)
/home/chooaa/cs_lab/cpu_ex/inst/n9_sw_ades_ex.S:35
9fc04820:	ad140004 	sw	s4,4(t0)
/home/chooaa/cs_lab/cpu_ex/inst/n9_sw_ades_ex.S:36
9fc04824:	ac8564a2 	sw	a1,25762(a0)
/home/chooaa/cs_lab/cpu_ex/inst/n9_sw_ades_ex.S:37
9fc04828:	ad140000 	sw	s4,0(t0)
/home/chooaa/cs_lab/cpu_ex/inst/n9_sw_ades_ex.S:38
9fc0482c:	8d090004 	lw	t1,4(t0)
/home/chooaa/cs_lab/cpu_ex/inst/n9_sw_ades_ex.S:39
9fc04830:	15340088 	bne	t1,s4,9fc04a54 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n9_sw_ades_ex.S:40
9fc04834:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n9_sw_ades_ex.S:41
9fc04838:	16570086 	bne	s2,s7,9fc04a54 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n9_sw_ades_ex.S:42
9fc0483c:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n9_sw_ades_ex.S:43
9fc04840:	8c8264a0 	lw	v0,25760(a0)
/home/chooaa/cs_lab/cpu_ex/inst/n9_sw_ades_ex.S:44
9fc04844:	14430083 	bne	v0,v1,9fc04a54 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n9_sw_ades_ex.S:45
9fc04848:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n9_sw_ades_ex.S:46
9fc0484c:	40164000 	mfc0	s6,c0_badvaddr
/home/chooaa/cs_lab/cpu_ex/inst/n9_sw_ades_ex.S:47
9fc04850:	14f60080 	bne	a3,s6,9fc04a54 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n9_sw_ades_ex.S:48
9fc04854:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n9_sw_ades_ex.S:49
9fc04858:	24120005 	li	s2,5
/home/chooaa/cs_lab/cpu_ex/inst/n9_sw_ades_ex.S:50
9fc0485c:	ad120000 	sw	s2,0(t0)
/home/chooaa/cs_lab/cpu_ex/inst/n9_sw_ades_ex.S:52
9fc04860:	24120005 	li	s2,5
/home/chooaa/cs_lab/cpu_ex/inst/n9_sw_ades_ex.S:53
9fc04864:	3c02a10f 	lui	v0,0xa10f
9fc04868:	3442ebaf 	ori	v0,v0,0xebaf
9fc0486c:	3c03a10f 	lui	v1,0xa10f
9fc04870:	3463ebaf 	ori	v1,v1,0xebaf
9fc04874:	3c04800d 	lui	a0,0x800d
9fc04878:	34848850 	ori	a0,a0,0x8850
9fc0487c:	3c05994c 	lui	a1,0x994c
9fc04880:	34a50280 	ori	a1,a1,0x280
9fc04884:	2487418b 	addiu	a3,a0,16779
9fc04888:	ac824188 	sw	v0,16776(a0)
/home/chooaa/cs_lab/cpu_ex/inst/n9_sw_ades_ex.S:54
9fc0488c:	3c149fc0 	lui	s4,0x9fc0
9fc04890:	2694489c 	addiu	s4,s4,18588
/home/chooaa/cs_lab/cpu_ex/inst/n9_sw_ades_ex.S:55
9fc04894:	01000011 	mthi	t0
/home/chooaa/cs_lab/cpu_ex/inst/n9_sw_ades_ex.S:56
9fc04898:	0110001b 	divu	zero,t0,s0
/home/chooaa/cs_lab/cpu_ex/inst/n9_sw_ades_ex.S:57
9fc0489c:	ac85418b 	sw	a1,16779(a0)
/home/chooaa/cs_lab/cpu_ex/inst/n9_sw_ades_ex.S:58
9fc048a0:	00004810 	mfhi	t1
/home/chooaa/cs_lab/cpu_ex/inst/n9_sw_ades_ex.S:59
9fc048a4:	1128006b 	beq	t1,t0,9fc04a54 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n9_sw_ades_ex.S:60
9fc048a8:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n9_sw_ades_ex.S:61
9fc048ac:	16570069 	bne	s2,s7,9fc04a54 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n9_sw_ades_ex.S:62
9fc048b0:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n9_sw_ades_ex.S:63
9fc048b4:	8c824188 	lw	v0,16776(a0)
/home/chooaa/cs_lab/cpu_ex/inst/n9_sw_ades_ex.S:64
9fc048b8:	14430066 	bne	v0,v1,9fc04a54 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n9_sw_ades_ex.S:65
9fc048bc:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n9_sw_ades_ex.S:66
9fc048c0:	40164000 	mfc0	s6,c0_badvaddr
/home/chooaa/cs_lab/cpu_ex/inst/n9_sw_ades_ex.S:67
9fc048c4:	14f60063 	bne	a3,s6,9fc04a54 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n9_sw_ades_ex.S:68
9fc048c8:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n9_sw_ades_ex.S:70
9fc048cc:	24120005 	li	s2,5
/home/chooaa/cs_lab/cpu_ex/inst/n9_sw_ades_ex.S:71
9fc048d0:	3c02eb54 	lui	v0,0xeb54
9fc048d4:	3442b87c 	ori	v0,v0,0xb87c
9fc048d8:	3c03eb54 	lui	v1,0xeb54
9fc048dc:	3463b87c 	ori	v1,v1,0xb87c
9fc048e0:	3c04800d 	lui	a0,0x800d
9fc048e4:	3484a256 	ori	a0,a0,0xa256
9fc048e8:	3c05eb54 	lui	a1,0xeb54
9fc048ec:	34a5b87c 	ori	a1,a1,0xb87c
9fc048f0:	248700c3 	addiu	a3,a0,195
9fc048f4:	ac8200c2 	sw	v0,194(a0)
/home/chooaa/cs_lab/cpu_ex/inst/n9_sw_ades_ex.S:72
9fc048f8:	3c149fc0 	lui	s4,0x9fc0
9fc048fc:	26944900 	addiu	s4,s4,18688
/home/chooaa/cs_lab/cpu_ex/inst/n9_sw_ades_ex.S:73
9fc04900:	ac8500c3 	sw	a1,195(a0)
/home/chooaa/cs_lab/cpu_ex/inst/n9_sw_ades_ex.S:74
9fc04904:	0208001b 	divu	zero,s0,t0
/home/chooaa/cs_lab/cpu_ex/inst/n9_sw_ades_ex.S:75
9fc04908:	16570052 	bne	s2,s7,9fc04a54 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n9_sw_ades_ex.S:76
9fc0490c:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n9_sw_ades_ex.S:77
9fc04910:	8c8200c2 	lw	v0,194(a0)
/home/chooaa/cs_lab/cpu_ex/inst/n9_sw_ades_ex.S:78
9fc04914:	1443004f 	bne	v0,v1,9fc04a54 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n9_sw_ades_ex.S:79
9fc04918:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n9_sw_ades_ex.S:80
9fc0491c:	40164000 	mfc0	s6,c0_badvaddr
/home/chooaa/cs_lab/cpu_ex/inst/n9_sw_ades_ex.S:81
9fc04920:	14f6004c 	bne	a3,s6,9fc04a54 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n9_sw_ades_ex.S:82
9fc04924:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n9_sw_ades_ex.S:84
9fc04928:	24120005 	li	s2,5
/home/chooaa/cs_lab/cpu_ex/inst/n9_sw_ades_ex.S:85
9fc0492c:	3c028003 	lui	v0,0x8003
9fc04930:	34422066 	ori	v0,v0,0x2066
9fc04934:	3c038003 	lui	v1,0x8003
9fc04938:	34632066 	ori	v1,v1,0x2066
9fc0493c:	3c04800d 	lui	a0,0x800d
9fc04940:	3484206c 	ori	a0,a0,0x206c
9fc04944:	3c05ebdc 	lui	a1,0xebdc
9fc04948:	34a58860 	ori	a1,a1,0x8860
9fc0494c:	2487ccc2 	addiu	a3,a0,-13118
9fc04950:	ac82ccc0 	sw	v0,-13120(a0)
/home/chooaa/cs_lab/cpu_ex/inst/n9_sw_ades_ex.S:86
9fc04954:	3c149fc0 	lui	s4,0x9fc0
9fc04958:	26944964 	addiu	s4,s4,18788
/home/chooaa/cs_lab/cpu_ex/inst/n9_sw_ades_ex.S:87
9fc0495c:	01000013 	mtlo	t0
/home/chooaa/cs_lab/cpu_ex/inst/n9_sw_ades_ex.S:88
9fc04960:	01100019 	multu	t0,s0
/home/chooaa/cs_lab/cpu_ex/inst/n9_sw_ades_ex.S:89
9fc04964:	ac85ccc2 	sw	a1,-13118(a0)
/home/chooaa/cs_lab/cpu_ex/inst/n9_sw_ades_ex.S:90
9fc04968:	00004810 	mfhi	t1
/home/chooaa/cs_lab/cpu_ex/inst/n9_sw_ades_ex.S:91
9fc0496c:	11280039 	beq	t1,t0,9fc04a54 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n9_sw_ades_ex.S:92
9fc04970:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n9_sw_ades_ex.S:93
9fc04974:	16570037 	bne	s2,s7,9fc04a54 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n9_sw_ades_ex.S:94
9fc04978:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n9_sw_ades_ex.S:95
9fc0497c:	8c82ccc0 	lw	v0,-13120(a0)
/home/chooaa/cs_lab/cpu_ex/inst/n9_sw_ades_ex.S:96
9fc04980:	14430034 	bne	v0,v1,9fc04a54 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n9_sw_ades_ex.S:97
9fc04984:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n9_sw_ades_ex.S:98
9fc04988:	40164000 	mfc0	s6,c0_badvaddr
/home/chooaa/cs_lab/cpu_ex/inst/n9_sw_ades_ex.S:99
9fc0498c:	14f60031 	bne	a3,s6,9fc04a54 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n9_sw_ades_ex.S:100
9fc04990:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n9_sw_ades_ex.S:102
9fc04994:	24120005 	li	s2,5
/home/chooaa/cs_lab/cpu_ex/inst/n9_sw_ades_ex.S:103
9fc04998:	3c026348 	lui	v0,0x6348
9fc0499c:	344258c8 	ori	v0,v0,0x58c8
9fc049a0:	3c036348 	lui	v1,0x6348
9fc049a4:	346358c8 	ori	v1,v1,0x58c8
9fc049a8:	3c04800d 	lui	a0,0x800d
9fc049ac:	348482d8 	ori	a0,a0,0x82d8
9fc049b0:	3c050c41 	lui	a1,0xc41
9fc049b4:	34a5f5e8 	ori	a1,a1,0xf5e8
9fc049b8:	24878889 	addiu	a3,a0,-30583
9fc049bc:	ac828888 	sw	v0,-30584(a0)
/home/chooaa/cs_lab/cpu_ex/inst/n9_sw_ades_ex.S:104
9fc049c0:	3c149fc0 	lui	s4,0x9fc0
9fc049c4:	269449c8 	addiu	s4,s4,18888
/home/chooaa/cs_lab/cpu_ex/inst/n9_sw_ades_ex.S:105
9fc049c8:	ac858889 	sw	a1,-30583(a0)
/home/chooaa/cs_lab/cpu_ex/inst/n9_sw_ades_ex.S:106
9fc049cc:	01120019 	multu	t0,s2
/home/chooaa/cs_lab/cpu_ex/inst/n9_sw_ades_ex.S:107
9fc049d0:	16570020 	bne	s2,s7,9fc04a54 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n9_sw_ades_ex.S:108
9fc049d4:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n9_sw_ades_ex.S:109
9fc049d8:	8c828888 	lw	v0,-30584(a0)
/home/chooaa/cs_lab/cpu_ex/inst/n9_sw_ades_ex.S:110
9fc049dc:	1443001d 	bne	v0,v1,9fc04a54 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n9_sw_ades_ex.S:111
9fc049e0:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n9_sw_ades_ex.S:112
9fc049e4:	40164000 	mfc0	s6,c0_badvaddr
/home/chooaa/cs_lab/cpu_ex/inst/n9_sw_ades_ex.S:113
9fc049e8:	14f6001a 	bne	a3,s6,9fc04a54 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n9_sw_ades_ex.S:114
9fc049ec:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n9_sw_ades_ex.S:116
9fc049f0:	24120005 	li	s2,5
/home/chooaa/cs_lab/cpu_ex/inst/n9_sw_ades_ex.S:117
9fc049f4:	3c028003 	lui	v0,0x8003
9fc049f8:	34421751 	ori	v0,v0,0x1751
9fc049fc:	3c038003 	lui	v1,0x8003
9fc04a00:	34631751 	ori	v1,v1,0x1751
9fc04a04:	3c04800d 	lui	a0,0x800d
9fc04a08:	34841750 	ori	a0,a0,0x1750
9fc04a0c:	3c05cb09 	lui	a1,0xcb09
9fc04a10:	34a5da60 	ori	a1,a1,0xda60
9fc04a14:	24879b27 	addiu	a3,a0,-25817
9fc04a18:	ac829b24 	sw	v0,-25820(a0)
/home/chooaa/cs_lab/cpu_ex/inst/n9_sw_ades_ex.S:118
9fc04a1c:	3c149fc0 	lui	s4,0x9fc0
9fc04a20:	26944a28 	addiu	s4,s4,18984
/home/chooaa/cs_lab/cpu_ex/inst/n9_sw_ades_ex.S:119
9fc04a24:	40927000 	mtc0	s2,c0_epc
/home/chooaa/cs_lab/cpu_ex/inst/n9_sw_ades_ex.S:120
9fc04a28:	ac859b27 	sw	a1,-25817(a0)
/home/chooaa/cs_lab/cpu_ex/inst/n9_sw_ades_ex.S:121
9fc04a2c:	40887000 	mtc0	t0,c0_epc
/home/chooaa/cs_lab/cpu_ex/inst/n9_sw_ades_ex.S:122
9fc04a30:	16570008 	bne	s2,s7,9fc04a54 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n9_sw_ades_ex.S:123
9fc04a34:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n9_sw_ades_ex.S:124
9fc04a38:	8c829b24 	lw	v0,-25820(a0)
/home/chooaa/cs_lab/cpu_ex/inst/n9_sw_ades_ex.S:125
9fc04a3c:	14430005 	bne	v0,v1,9fc04a54 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n9_sw_ades_ex.S:126
9fc04a40:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n9_sw_ades_ex.S:127
9fc04a44:	40164000 	mfc0	s6,c0_badvaddr
/home/chooaa/cs_lab/cpu_ex/inst/n9_sw_ades_ex.S:128
9fc04a48:	14f60002 	bne	a3,s6,9fc04a54 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n9_sw_ades_ex.S:129
9fc04a4c:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n9_sw_ades_ex.S:131
9fc04a50:	26730001 	addiu	s3,s3,1

9fc04a54 <inst_error>:
/home/chooaa/cs_lab/cpu_ex/inst/n9_sw_ades_ex.S:134
9fc04a54:	00104e00 	sll	t1,s0,0x18
/home/chooaa/cs_lab/cpu_ex/inst/n9_sw_ades_ex.S:135
9fc04a58:	01334025 	or	t0,t1,s3
/home/chooaa/cs_lab/cpu_ex/inst/n9_sw_ades_ex.S:136
9fc04a5c:	ae280000 	sw	t0,0(s1)
/home/chooaa/cs_lab/cpu_ex/inst/n9_sw_ades_ex.S:137
9fc04a60:	03e00008 	jr	ra
/home/chooaa/cs_lab/cpu_ex/inst/n9_sw_ades_ex.S:138
9fc04a64:	00000000 	nop
	...

9fc04a70 <n16_bne_ds_ex_test>:
/home/chooaa/cs_lab/cpu_ex/inst/n16_bne_ds_ex.S:7
9fc04a70:	26100001 	addiu	s0,s0,1
/home/chooaa/cs_lab/cpu_ex/inst/n16_bne_ds_ex.S:8
9fc04a74:	3c08800d 	lui	t0,0x800d
/home/chooaa/cs_lab/cpu_ex/inst/n16_bne_ds_ex.S:10
9fc04a78:	40805800 	mtc0	zero,c0_compare
/home/chooaa/cs_lab/cpu_ex/inst/n16_bne_ds_ex.S:11
9fc04a7c:	3c170040 	lui	s7,0x40
/home/chooaa/cs_lab/cpu_ex/inst/n16_bne_ds_ex.S:12
9fc04a80:	40976000 	mtc0	s7,c0_status
/home/chooaa/cs_lab/cpu_ex/inst/n16_bne_ds_ex.S:13
9fc04a84:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n16_bne_ds_ex.S:16
9fc04a88:	24120001 	li	s2,1
/home/chooaa/cs_lab/cpu_ex/inst/n16_bne_ds_ex.S:17
9fc04a8c:	3c170001 	lui	s7,0x1
/home/chooaa/cs_lab/cpu_ex/inst/n16_bne_ds_ex.S:18
9fc04a90:	ad120000 	sw	s2,0(t0)
/home/chooaa/cs_lab/cpu_ex/inst/n16_bne_ds_ex.S:19
9fc04a94:	3c149fc0 	lui	s4,0x9fc0
9fc04a98:	26944a9c 	addiu	s4,s4,19100
/home/chooaa/cs_lab/cpu_ex/inst/n16_bne_ds_ex.S:20
9fc04a9c:	140000af 	bnez	zero,9fc04d5c <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n16_bne_ds_ex.S:21
9fc04aa0:	0000000c 	syscall
/home/chooaa/cs_lab/cpu_ex/inst/n16_bne_ds_ex.S:22
9fc04aa4:	165700ad 	bne	s2,s7,9fc04d5c <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n16_bne_ds_ex.S:23
9fc04aa8:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n16_bne_ds_ex.S:24
9fc04aac:	24120001 	li	s2,1
/home/chooaa/cs_lab/cpu_ex/inst/n16_bne_ds_ex.S:25
9fc04ab0:	3c149fc0 	lui	s4,0x9fc0
9fc04ab4:	26944ab8 	addiu	s4,s4,19128
/home/chooaa/cs_lab/cpu_ex/inst/n16_bne_ds_ex.S:26
9fc04ab8:	150000a8 	bnez	t0,9fc04d5c <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n16_bne_ds_ex.S:27
9fc04abc:	0000000c 	syscall
/home/chooaa/cs_lab/cpu_ex/inst/n16_bne_ds_ex.S:28
9fc04ac0:	165700a6 	bne	s2,s7,9fc04d5c <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n16_bne_ds_ex.S:29
9fc04ac4:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n16_bne_ds_ex.S:31
9fc04ac8:	24120002 	li	s2,2
/home/chooaa/cs_lab/cpu_ex/inst/n16_bne_ds_ex.S:32
9fc04acc:	3c170002 	lui	s7,0x2
/home/chooaa/cs_lab/cpu_ex/inst/n16_bne_ds_ex.S:33
9fc04ad0:	ad120000 	sw	s2,0(t0)
/home/chooaa/cs_lab/cpu_ex/inst/n16_bne_ds_ex.S:34
9fc04ad4:	3c149fc0 	lui	s4,0x9fc0
9fc04ad8:	26944adc 	addiu	s4,s4,19164
/home/chooaa/cs_lab/cpu_ex/inst/n16_bne_ds_ex.S:35
9fc04adc:	1400009f 	bnez	zero,9fc04d5c <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n16_bne_ds_ex.S:36
9fc04ae0:	0000000d 	break
/home/chooaa/cs_lab/cpu_ex/inst/n16_bne_ds_ex.S:37
9fc04ae4:	1657009d 	bne	s2,s7,9fc04d5c <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n16_bne_ds_ex.S:38
9fc04ae8:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n16_bne_ds_ex.S:39
9fc04aec:	24120002 	li	s2,2
/home/chooaa/cs_lab/cpu_ex/inst/n16_bne_ds_ex.S:40
9fc04af0:	3c149fc0 	lui	s4,0x9fc0
9fc04af4:	26944af8 	addiu	s4,s4,19192
/home/chooaa/cs_lab/cpu_ex/inst/n16_bne_ds_ex.S:41
9fc04af8:	15000098 	bnez	t0,9fc04d5c <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n16_bne_ds_ex.S:42
9fc04afc:	0000000d 	break
/home/chooaa/cs_lab/cpu_ex/inst/n16_bne_ds_ex.S:43
9fc04b00:	16570096 	bne	s2,s7,9fc04d5c <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n16_bne_ds_ex.S:44
9fc04b04:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n16_bne_ds_ex.S:46
9fc04b08:	24120003 	li	s2,3
/home/chooaa/cs_lab/cpu_ex/inst/n16_bne_ds_ex.S:47
9fc04b0c:	3c170003 	lui	s7,0x3
/home/chooaa/cs_lab/cpu_ex/inst/n16_bne_ds_ex.S:48
9fc04b10:	ad120000 	sw	s2,0(t0)
/home/chooaa/cs_lab/cpu_ex/inst/n16_bne_ds_ex.S:49
9fc04b14:	3c149fc0 	lui	s4,0x9fc0
9fc04b18:	26944b2c 	addiu	s4,s4,19244
/home/chooaa/cs_lab/cpu_ex/inst/n16_bne_ds_ex.S:50
9fc04b1c:	3c04ba03 	lui	a0,0xba03
9fc04b20:	34844f60 	ori	a0,a0,0x4f60
/home/chooaa/cs_lab/cpu_ex/inst/n16_bne_ds_ex.S:51
9fc04b24:	3c05b615 	lui	a1,0xb615
9fc04b28:	34a5fd67 	ori	a1,a1,0xfd67
/home/chooaa/cs_lab/cpu_ex/inst/n16_bne_ds_ex.S:52
9fc04b2c:	1400008b 	bnez	zero,9fc04d5c <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n16_bne_ds_ex.S:53
9fc04b30:	0085b820 	add	s7,a0,a1
/home/chooaa/cs_lab/cpu_ex/inst/n16_bne_ds_ex.S:54
9fc04b34:	16570089 	bne	s2,s7,9fc04d5c <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n16_bne_ds_ex.S:55
9fc04b38:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n16_bne_ds_ex.S:56
9fc04b3c:	24120003 	li	s2,3
/home/chooaa/cs_lab/cpu_ex/inst/n16_bne_ds_ex.S:57
9fc04b40:	3c149fc0 	lui	s4,0x9fc0
9fc04b44:	26944b48 	addiu	s4,s4,19272
/home/chooaa/cs_lab/cpu_ex/inst/n16_bne_ds_ex.S:58
9fc04b48:	15000084 	bnez	t0,9fc04d5c <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n16_bne_ds_ex.S:59
9fc04b4c:	0085b820 	add	s7,a0,a1
/home/chooaa/cs_lab/cpu_ex/inst/n16_bne_ds_ex.S:60
9fc04b50:	16570082 	bne	s2,s7,9fc04d5c <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n16_bne_ds_ex.S:61
9fc04b54:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n16_bne_ds_ex.S:62
9fc04b58:	24120003 	li	s2,3
/home/chooaa/cs_lab/cpu_ex/inst/n16_bne_ds_ex.S:63
9fc04b5c:	3c149fc0 	lui	s4,0x9fc0
9fc04b60:	26944b6c 	addiu	s4,s4,19308
/home/chooaa/cs_lab/cpu_ex/inst/n16_bne_ds_ex.S:64
9fc04b64:	3c047fff 	lui	a0,0x7fff
9fc04b68:	3484c19e 	ori	a0,a0,0xc19e
/home/chooaa/cs_lab/cpu_ex/inst/n16_bne_ds_ex.S:65
9fc04b6c:	1400007b 	bnez	zero,9fc04d5c <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n16_bne_ds_ex.S:66
9fc04b70:	20976512 	addi	s7,a0,25874
/home/chooaa/cs_lab/cpu_ex/inst/n16_bne_ds_ex.S:67
9fc04b74:	16570079 	bne	s2,s7,9fc04d5c <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n16_bne_ds_ex.S:68
9fc04b78:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n16_bne_ds_ex.S:69
9fc04b7c:	24120003 	li	s2,3
/home/chooaa/cs_lab/cpu_ex/inst/n16_bne_ds_ex.S:70
9fc04b80:	3c149fc0 	lui	s4,0x9fc0
9fc04b84:	26944b88 	addiu	s4,s4,19336
/home/chooaa/cs_lab/cpu_ex/inst/n16_bne_ds_ex.S:71
9fc04b88:	15000074 	bnez	t0,9fc04d5c <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n16_bne_ds_ex.S:72
9fc04b8c:	20976512 	addi	s7,a0,25874
/home/chooaa/cs_lab/cpu_ex/inst/n16_bne_ds_ex.S:73
9fc04b90:	16570072 	bne	s2,s7,9fc04d5c <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n16_bne_ds_ex.S:74
9fc04b94:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n16_bne_ds_ex.S:75
9fc04b98:	24120003 	li	s2,3
/home/chooaa/cs_lab/cpu_ex/inst/n16_bne_ds_ex.S:76
9fc04b9c:	3c149fc0 	lui	s4,0x9fc0
9fc04ba0:	26944bb4 	addiu	s4,s4,19380
/home/chooaa/cs_lab/cpu_ex/inst/n16_bne_ds_ex.S:77
9fc04ba4:	3c04a85e 	lui	a0,0xa85e
9fc04ba8:	34847d00 	ori	a0,a0,0x7d00
/home/chooaa/cs_lab/cpu_ex/inst/n16_bne_ds_ex.S:78
9fc04bac:	3c056b7e 	lui	a1,0x6b7e
9fc04bb0:	34a58e36 	ori	a1,a1,0x8e36
/home/chooaa/cs_lab/cpu_ex/inst/n16_bne_ds_ex.S:79
9fc04bb4:	14000069 	bnez	zero,9fc04d5c <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n16_bne_ds_ex.S:80
9fc04bb8:	0085b822 	sub	s7,a0,a1
/home/chooaa/cs_lab/cpu_ex/inst/n16_bne_ds_ex.S:81
9fc04bbc:	16570067 	bne	s2,s7,9fc04d5c <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n16_bne_ds_ex.S:82
9fc04bc0:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n16_bne_ds_ex.S:83
9fc04bc4:	24120003 	li	s2,3
/home/chooaa/cs_lab/cpu_ex/inst/n16_bne_ds_ex.S:84
9fc04bc8:	3c149fc0 	lui	s4,0x9fc0
9fc04bcc:	26944bd0 	addiu	s4,s4,19408
/home/chooaa/cs_lab/cpu_ex/inst/n16_bne_ds_ex.S:85
9fc04bd0:	15000062 	bnez	t0,9fc04d5c <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n16_bne_ds_ex.S:86
9fc04bd4:	0085b822 	sub	s7,a0,a1
/home/chooaa/cs_lab/cpu_ex/inst/n16_bne_ds_ex.S:87
9fc04bd8:	16570060 	bne	s2,s7,9fc04d5c <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n16_bne_ds_ex.S:88
9fc04bdc:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n16_bne_ds_ex.S:90
9fc04be0:	24120004 	li	s2,4
/home/chooaa/cs_lab/cpu_ex/inst/n16_bne_ds_ex.S:91
9fc04be4:	3c170004 	lui	s7,0x4
/home/chooaa/cs_lab/cpu_ex/inst/n16_bne_ds_ex.S:92
9fc04be8:	ad120000 	sw	s2,0(t0)
/home/chooaa/cs_lab/cpu_ex/inst/n16_bne_ds_ex.S:93
9fc04bec:	3c149fc0 	lui	s4,0x9fc0
9fc04bf0:	26944bf4 	addiu	s4,s4,19444
/home/chooaa/cs_lab/cpu_ex/inst/n16_bne_ds_ex.S:94
9fc04bf4:	14000059 	bnez	zero,9fc04d5c <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n16_bne_ds_ex.S:95
9fc04bf8:	8d170002 	lw	s7,2(t0)
/home/chooaa/cs_lab/cpu_ex/inst/n16_bne_ds_ex.S:96
9fc04bfc:	ad170000 	sw	s7,0(t0)
/home/chooaa/cs_lab/cpu_ex/inst/n16_bne_ds_ex.S:97
9fc04c00:	16570056 	bne	s2,s7,9fc04d5c <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n16_bne_ds_ex.S:98
9fc04c04:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n16_bne_ds_ex.S:99
9fc04c08:	24120004 	li	s2,4
/home/chooaa/cs_lab/cpu_ex/inst/n16_bne_ds_ex.S:100
9fc04c0c:	ad120000 	sw	s2,0(t0)
/home/chooaa/cs_lab/cpu_ex/inst/n16_bne_ds_ex.S:101
9fc04c10:	3c149fc0 	lui	s4,0x9fc0
9fc04c14:	26944c18 	addiu	s4,s4,19480
/home/chooaa/cs_lab/cpu_ex/inst/n16_bne_ds_ex.S:102
9fc04c18:	15000050 	bnez	t0,9fc04d5c <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n16_bne_ds_ex.S:103
9fc04c1c:	8d170002 	lw	s7,2(t0)
/home/chooaa/cs_lab/cpu_ex/inst/n16_bne_ds_ex.S:104
9fc04c20:	1657004e 	bne	s2,s7,9fc04d5c <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n16_bne_ds_ex.S:105
9fc04c24:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n16_bne_ds_ex.S:106
9fc04c28:	24120004 	li	s2,4
/home/chooaa/cs_lab/cpu_ex/inst/n16_bne_ds_ex.S:107
9fc04c2c:	3c149fc0 	lui	s4,0x9fc0
9fc04c30:	26944c34 	addiu	s4,s4,19508
/home/chooaa/cs_lab/cpu_ex/inst/n16_bne_ds_ex.S:108
9fc04c34:	14000049 	bnez	zero,9fc04d5c <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n16_bne_ds_ex.S:109
9fc04c38:	85170001 	lh	s7,1(t0)
/home/chooaa/cs_lab/cpu_ex/inst/n16_bne_ds_ex.S:110
9fc04c3c:	16570047 	bne	s2,s7,9fc04d5c <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n16_bne_ds_ex.S:111
9fc04c40:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n16_bne_ds_ex.S:112
9fc04c44:	24120004 	li	s2,4
/home/chooaa/cs_lab/cpu_ex/inst/n16_bne_ds_ex.S:113
9fc04c48:	3c149fc0 	lui	s4,0x9fc0
9fc04c4c:	26944c50 	addiu	s4,s4,19536
/home/chooaa/cs_lab/cpu_ex/inst/n16_bne_ds_ex.S:114
9fc04c50:	15000042 	bnez	t0,9fc04d5c <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n16_bne_ds_ex.S:115
9fc04c54:	85170001 	lh	s7,1(t0)
/home/chooaa/cs_lab/cpu_ex/inst/n16_bne_ds_ex.S:116
9fc04c58:	16570040 	bne	s2,s7,9fc04d5c <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n16_bne_ds_ex.S:117
9fc04c5c:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n16_bne_ds_ex.S:118
9fc04c60:	3c149fc0 	lui	s4,0x9fc0
9fc04c64:	26944c68 	addiu	s4,s4,19560
/home/chooaa/cs_lab/cpu_ex/inst/n16_bne_ds_ex.S:119
9fc04c68:	1400003c 	bnez	zero,9fc04d5c <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n16_bne_ds_ex.S:120
9fc04c6c:	95170003 	lhu	s7,3(t0)
/home/chooaa/cs_lab/cpu_ex/inst/n16_bne_ds_ex.S:121
9fc04c70:	1657003a 	bne	s2,s7,9fc04d5c <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n16_bne_ds_ex.S:122
9fc04c74:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n16_bne_ds_ex.S:123
9fc04c78:	24120004 	li	s2,4
/home/chooaa/cs_lab/cpu_ex/inst/n16_bne_ds_ex.S:124
9fc04c7c:	3c149fc0 	lui	s4,0x9fc0
9fc04c80:	26944c84 	addiu	s4,s4,19588
/home/chooaa/cs_lab/cpu_ex/inst/n16_bne_ds_ex.S:125
9fc04c84:	15000035 	bnez	t0,9fc04d5c <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n16_bne_ds_ex.S:126
9fc04c88:	95170003 	lhu	s7,3(t0)
/home/chooaa/cs_lab/cpu_ex/inst/n16_bne_ds_ex.S:127
9fc04c8c:	16570033 	bne	s2,s7,9fc04d5c <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n16_bne_ds_ex.S:128
9fc04c90:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n16_bne_ds_ex.S:130
9fc04c94:	24120005 	li	s2,5
/home/chooaa/cs_lab/cpu_ex/inst/n16_bne_ds_ex.S:131
9fc04c98:	3c170005 	lui	s7,0x5
/home/chooaa/cs_lab/cpu_ex/inst/n16_bne_ds_ex.S:132
9fc04c9c:	ad120000 	sw	s2,0(t0)
/home/chooaa/cs_lab/cpu_ex/inst/n16_bne_ds_ex.S:133
9fc04ca0:	3c149fc0 	lui	s4,0x9fc0
9fc04ca4:	26944ca8 	addiu	s4,s4,19624
/home/chooaa/cs_lab/cpu_ex/inst/n16_bne_ds_ex.S:134
9fc04ca8:	1400002c 	bnez	zero,9fc04d5c <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n16_bne_ds_ex.S:135
9fc04cac:	ad170002 	sw	s7,2(t0)
/home/chooaa/cs_lab/cpu_ex/inst/n16_bne_ds_ex.S:136
9fc04cb0:	02f2001b 	divu	zero,s7,s2
/home/chooaa/cs_lab/cpu_ex/inst/n16_bne_ds_ex.S:137
9fc04cb4:	16570029 	bne	s2,s7,9fc04d5c <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n16_bne_ds_ex.S:138
9fc04cb8:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n16_bne_ds_ex.S:139
9fc04cbc:	24120005 	li	s2,5
/home/chooaa/cs_lab/cpu_ex/inst/n16_bne_ds_ex.S:140
9fc04cc0:	3c149fc0 	lui	s4,0x9fc0
9fc04cc4:	26944cc8 	addiu	s4,s4,19656
/home/chooaa/cs_lab/cpu_ex/inst/n16_bne_ds_ex.S:141
9fc04cc8:	15000024 	bnez	t0,9fc04d5c <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n16_bne_ds_ex.S:142
9fc04ccc:	ad170002 	sw	s7,2(t0)
/home/chooaa/cs_lab/cpu_ex/inst/n16_bne_ds_ex.S:143
9fc04cd0:	16570022 	bne	s2,s7,9fc04d5c <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n16_bne_ds_ex.S:144
9fc04cd4:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n16_bne_ds_ex.S:145
9fc04cd8:	24120005 	li	s2,5
/home/chooaa/cs_lab/cpu_ex/inst/n16_bne_ds_ex.S:146
9fc04cdc:	3c149fc0 	lui	s4,0x9fc0
9fc04ce0:	26944ce4 	addiu	s4,s4,19684
/home/chooaa/cs_lab/cpu_ex/inst/n16_bne_ds_ex.S:147
9fc04ce4:	1400001d 	bnez	zero,9fc04d5c <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n16_bne_ds_ex.S:148
9fc04ce8:	a5170001 	sh	s7,1(t0)
/home/chooaa/cs_lab/cpu_ex/inst/n16_bne_ds_ex.S:149
9fc04cec:	1657001b 	bne	s2,s7,9fc04d5c <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n16_bne_ds_ex.S:150
9fc04cf0:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n16_bne_ds_ex.S:151
9fc04cf4:	24120005 	li	s2,5
/home/chooaa/cs_lab/cpu_ex/inst/n16_bne_ds_ex.S:152
9fc04cf8:	3c149fc0 	lui	s4,0x9fc0
9fc04cfc:	26944d00 	addiu	s4,s4,19712
/home/chooaa/cs_lab/cpu_ex/inst/n16_bne_ds_ex.S:153
9fc04d00:	15000016 	bnez	t0,9fc04d5c <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n16_bne_ds_ex.S:154
9fc04d04:	a5170001 	sh	s7,1(t0)
/home/chooaa/cs_lab/cpu_ex/inst/n16_bne_ds_ex.S:155
9fc04d08:	16570014 	bne	s2,s7,9fc04d5c <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n16_bne_ds_ex.S:156
9fc04d0c:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n16_bne_ds_ex.S:159
9fc04d10:	24120007 	li	s2,7
/home/chooaa/cs_lab/cpu_ex/inst/n16_bne_ds_ex.S:160
9fc04d14:	3c170007 	lui	s7,0x7
/home/chooaa/cs_lab/cpu_ex/inst/n16_bne_ds_ex.S:161
9fc04d18:	ad120000 	sw	s2,0(t0)
/home/chooaa/cs_lab/cpu_ex/inst/n16_bne_ds_ex.S:162
9fc04d1c:	3c149fc0 	lui	s4,0x9fc0
9fc04d20:	26944d24 	addiu	s4,s4,19748
/home/chooaa/cs_lab/cpu_ex/inst/n16_bne_ds_ex.S:163
9fc04d24:	1400000d 	bnez	zero,9fc04d5c <inst_error>
9fc04d28:	9e3c56aa 	0x9e3c56aa
/home/chooaa/cs_lab/cpu_ex/inst/n16_bne_ds_ex.S:165
9fc04d2c:	02f20018 	mult	s7,s2
/home/chooaa/cs_lab/cpu_ex/inst/n16_bne_ds_ex.S:166
9fc04d30:	1657000a 	bne	s2,s7,9fc04d5c <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n16_bne_ds_ex.S:167
9fc04d34:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n16_bne_ds_ex.S:168
9fc04d38:	24120007 	li	s2,7
/home/chooaa/cs_lab/cpu_ex/inst/n16_bne_ds_ex.S:169
9fc04d3c:	3c149fc0 	lui	s4,0x9fc0
9fc04d40:	26944d48 	addiu	s4,s4,19784
/home/chooaa/cs_lab/cpu_ex/inst/n16_bne_ds_ex.S:170
9fc04d44:	02f20018 	mult	s7,s2
/home/chooaa/cs_lab/cpu_ex/inst/n16_bne_ds_ex.S:171
9fc04d48:	15000004 	bnez	t0,9fc04d5c <inst_error>
9fc04d4c:	ec1ba960 	swc3	$27,-22176(zero)
/home/chooaa/cs_lab/cpu_ex/inst/n16_bne_ds_ex.S:173
9fc04d50:	16570002 	bne	s2,s7,9fc04d5c <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n16_bne_ds_ex.S:174
9fc04d54:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n16_bne_ds_ex.S:176
9fc04d58:	26730001 	addiu	s3,s3,1

9fc04d5c <inst_error>:
/home/chooaa/cs_lab/cpu_ex/inst/n16_bne_ds_ex.S:179
9fc04d5c:	00104e00 	sll	t1,s0,0x18
/home/chooaa/cs_lab/cpu_ex/inst/n16_bne_ds_ex.S:180
9fc04d60:	01334025 	or	t0,t1,s3
/home/chooaa/cs_lab/cpu_ex/inst/n16_bne_ds_ex.S:181
9fc04d64:	ae280000 	sw	t0,0(s1)
/home/chooaa/cs_lab/cpu_ex/inst/n16_bne_ds_ex.S:182
9fc04d68:	03e00008 	jr	ra
/home/chooaa/cs_lab/cpu_ex/inst/n16_bne_ds_ex.S:183
9fc04d6c:	00000000 	nop

9fc04d70 <n14_soft_int_ex_test>:
/home/chooaa/cs_lab/cpu_ex/inst/n14_soft_int_ex.S:7
9fc04d70:	26100001 	addiu	s0,s0,1
/home/chooaa/cs_lab/cpu_ex/inst/n14_soft_int_ex.S:8
9fc04d74:	3c08800d 	lui	t0,0x800d
/home/chooaa/cs_lab/cpu_ex/inst/n14_soft_int_ex.S:9
9fc04d78:	24120008 	li	s2,8
/home/chooaa/cs_lab/cpu_ex/inst/n14_soft_int_ex.S:10
9fc04d7c:	ad120000 	sw	s2,0(t0)
/home/chooaa/cs_lab/cpu_ex/inst/n14_soft_int_ex.S:12
9fc04d80:	40805800 	mtc0	zero,c0_compare
/home/chooaa/cs_lab/cpu_ex/inst/n14_soft_int_ex.S:13
9fc04d84:	3c170040 	lui	s7,0x40
/home/chooaa/cs_lab/cpu_ex/inst/n14_soft_int_ex.S:14
9fc04d88:	40976000 	mtc0	s7,c0_status
/home/chooaa/cs_lab/cpu_ex/inst/n14_soft_int_ex.S:15
9fc04d8c:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n14_soft_int_ex.S:16
9fc04d90:	3c170008 	lui	s7,0x8
/home/chooaa/cs_lab/cpu_ex/inst/n14_soft_int_ex.S:19
9fc04d94:	3c149fc0 	lui	s4,0x9fc0
9fc04d98:	26944dc4 	addiu	s4,s4,19908
/home/chooaa/cs_lab/cpu_ex/inst/n14_soft_int_ex.S:20
9fc04d9c:	3c070040 	lui	a3,0x40
9fc04da0:	34e7ff01 	ori	a3,a3,0xff01
9fc04da4:	2402ffff 	li	v0,-1
9fc04da8:	3c03000f 	lui	v1,0xf
9fc04dac:	3463f2ff 	ori	v1,v1,0xf2ff
9fc04db0:	40804800 	mtc0	zero,c0_count
9fc04db4:	40825800 	mtc0	v0,c0_compare
9fc04db8:	40876000 	mtc0	a3,c0_status
9fc04dbc:	00000000 	nop
9fc04dc0:	40836800 	mtc0	v1,c0_cause
9fc04dc4:	1000ffff 	b	9fc04dc4 <n14_soft_int_ex_test+0x54>
9fc04dc8:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n14_soft_int_ex.S:21
9fc04dcc:	16570078 	bne	s2,s7,9fc04fb0 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n14_soft_int_ex.S:22
9fc04dd0:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n14_soft_int_ex.S:24
9fc04dd4:	24120008 	li	s2,8
/home/chooaa/cs_lab/cpu_ex/inst/n14_soft_int_ex.S:25
9fc04dd8:	3c149fc0 	lui	s4,0x9fc0
9fc04ddc:	26944e0c 	addiu	s4,s4,19980
/home/chooaa/cs_lab/cpu_ex/inst/n14_soft_int_ex.S:26
9fc04de0:	ad080004 	sw	t0,4(t0)
/home/chooaa/cs_lab/cpu_ex/inst/n14_soft_int_ex.S:27
9fc04de4:	ad140004 	sw	s4,4(t0)
/home/chooaa/cs_lab/cpu_ex/inst/n14_soft_int_ex.S:28
9fc04de8:	3c070040 	lui	a3,0x40
9fc04dec:	34e7ff01 	ori	a3,a3,0xff01
9fc04df0:	2402ffff 	li	v0,-1
9fc04df4:	3403f1ff 	li	v1,0xf1ff
9fc04df8:	40804800 	mtc0	zero,c0_count
9fc04dfc:	40825800 	mtc0	v0,c0_compare
9fc04e00:	40876000 	mtc0	a3,c0_status
9fc04e04:	00000000 	nop
9fc04e08:	40836800 	mtc0	v1,c0_cause
9fc04e0c:	1000ffff 	b	9fc04e0c <n14_soft_int_ex_test+0x9c>
9fc04e10:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n14_soft_int_ex.S:29
9fc04e14:	ad140000 	sw	s4,0(t0)
/home/chooaa/cs_lab/cpu_ex/inst/n14_soft_int_ex.S:30
9fc04e18:	8d090004 	lw	t1,4(t0)
/home/chooaa/cs_lab/cpu_ex/inst/n14_soft_int_ex.S:31
9fc04e1c:	15340064 	bne	t1,s4,9fc04fb0 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n14_soft_int_ex.S:32
9fc04e20:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n14_soft_int_ex.S:33
9fc04e24:	16570062 	bne	s2,s7,9fc04fb0 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n14_soft_int_ex.S:34
9fc04e28:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n14_soft_int_ex.S:35
9fc04e2c:	24120008 	li	s2,8
/home/chooaa/cs_lab/cpu_ex/inst/n14_soft_int_ex.S:36
9fc04e30:	ad120000 	sw	s2,0(t0)
/home/chooaa/cs_lab/cpu_ex/inst/n14_soft_int_ex.S:38
9fc04e34:	24120008 	li	s2,8
/home/chooaa/cs_lab/cpu_ex/inst/n14_soft_int_ex.S:39
9fc04e38:	3c149fc0 	lui	s4,0x9fc0
9fc04e3c:	26944e6c 	addiu	s4,s4,20076
/home/chooaa/cs_lab/cpu_ex/inst/n14_soft_int_ex.S:40
9fc04e40:	01000011 	mthi	t0
/home/chooaa/cs_lab/cpu_ex/inst/n14_soft_int_ex.S:41
9fc04e44:	0110001b 	divu	zero,t0,s0
/home/chooaa/cs_lab/cpu_ex/inst/n14_soft_int_ex.S:42
9fc04e48:	3c070040 	lui	a3,0x40
9fc04e4c:	34e7ff01 	ori	a3,a3,0xff01
9fc04e50:	2402ffff 	li	v0,-1
9fc04e54:	24030100 	li	v1,256
9fc04e58:	40804800 	mtc0	zero,c0_count
9fc04e5c:	40825800 	mtc0	v0,c0_compare
9fc04e60:	40876000 	mtc0	a3,c0_status
9fc04e64:	00000000 	nop
9fc04e68:	40836800 	mtc0	v1,c0_cause
9fc04e6c:	1000ffff 	b	9fc04e6c <n14_soft_int_ex_test+0xfc>
9fc04e70:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n14_soft_int_ex.S:43
9fc04e74:	00004810 	mfhi	t1
/home/chooaa/cs_lab/cpu_ex/inst/n14_soft_int_ex.S:44
9fc04e78:	1128004d 	beq	t1,t0,9fc04fb0 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n14_soft_int_ex.S:45
9fc04e7c:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n14_soft_int_ex.S:46
9fc04e80:	1657004b 	bne	s2,s7,9fc04fb0 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n14_soft_int_ex.S:47
9fc04e84:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n14_soft_int_ex.S:49
9fc04e88:	24120008 	li	s2,8
/home/chooaa/cs_lab/cpu_ex/inst/n14_soft_int_ex.S:50
9fc04e8c:	3c149fc0 	lui	s4,0x9fc0
9fc04e90:	26944eb8 	addiu	s4,s4,20152
/home/chooaa/cs_lab/cpu_ex/inst/n14_soft_int_ex.S:51
9fc04e94:	3c070040 	lui	a3,0x40
9fc04e98:	34e7ff01 	ori	a3,a3,0xff01
9fc04e9c:	2402ffff 	li	v0,-1
9fc04ea0:	24030200 	li	v1,512
9fc04ea4:	40804800 	mtc0	zero,c0_count
9fc04ea8:	40825800 	mtc0	v0,c0_compare
9fc04eac:	40876000 	mtc0	a3,c0_status
9fc04eb0:	00000000 	nop
9fc04eb4:	40836800 	mtc0	v1,c0_cause
9fc04eb8:	1000ffff 	b	9fc04eb8 <n14_soft_int_ex_test+0x148>
9fc04ebc:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n14_soft_int_ex.S:52
9fc04ec0:	0208001b 	divu	zero,s0,t0
/home/chooaa/cs_lab/cpu_ex/inst/n14_soft_int_ex.S:53
9fc04ec4:	1657003a 	bne	s2,s7,9fc04fb0 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n14_soft_int_ex.S:54
9fc04ec8:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n14_soft_int_ex.S:56
9fc04ecc:	24120008 	li	s2,8
/home/chooaa/cs_lab/cpu_ex/inst/n14_soft_int_ex.S:57
9fc04ed0:	3c149fc0 	lui	s4,0x9fc0
9fc04ed4:	26944f04 	addiu	s4,s4,20228
/home/chooaa/cs_lab/cpu_ex/inst/n14_soft_int_ex.S:58
9fc04ed8:	01000013 	mtlo	t0
/home/chooaa/cs_lab/cpu_ex/inst/n14_soft_int_ex.S:59
9fc04edc:	01100019 	multu	t0,s0
/home/chooaa/cs_lab/cpu_ex/inst/n14_soft_int_ex.S:60
9fc04ee0:	3c070040 	lui	a3,0x40
9fc04ee4:	34e7ff01 	ori	a3,a3,0xff01
9fc04ee8:	2402ffff 	li	v0,-1
9fc04eec:	24030300 	li	v1,768
9fc04ef0:	40804800 	mtc0	zero,c0_count
9fc04ef4:	40825800 	mtc0	v0,c0_compare
9fc04ef8:	40876000 	mtc0	a3,c0_status
9fc04efc:	00000000 	nop
9fc04f00:	40836800 	mtc0	v1,c0_cause
9fc04f04:	1000ffff 	b	9fc04f04 <n14_soft_int_ex_test+0x194>
9fc04f08:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n14_soft_int_ex.S:61
9fc04f0c:	00004810 	mfhi	t1
/home/chooaa/cs_lab/cpu_ex/inst/n14_soft_int_ex.S:62
9fc04f10:	11280027 	beq	t1,t0,9fc04fb0 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n14_soft_int_ex.S:63
9fc04f14:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n14_soft_int_ex.S:64
9fc04f18:	16570025 	bne	s2,s7,9fc04fb0 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n14_soft_int_ex.S:65
9fc04f1c:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n14_soft_int_ex.S:67
9fc04f20:	24120008 	li	s2,8
/home/chooaa/cs_lab/cpu_ex/inst/n14_soft_int_ex.S:68
9fc04f24:	3c149fc0 	lui	s4,0x9fc0
9fc04f28:	26944f50 	addiu	s4,s4,20304
/home/chooaa/cs_lab/cpu_ex/inst/n14_soft_int_ex.S:69
9fc04f2c:	3c070040 	lui	a3,0x40
9fc04f30:	34e7ff01 	ori	a3,a3,0xff01
9fc04f34:	2402ffff 	li	v0,-1
9fc04f38:	24030500 	li	v1,1280
9fc04f3c:	40804800 	mtc0	zero,c0_count
9fc04f40:	40825800 	mtc0	v0,c0_compare
9fc04f44:	40876000 	mtc0	a3,c0_status
9fc04f48:	00000000 	nop
9fc04f4c:	40836800 	mtc0	v1,c0_cause
9fc04f50:	1000ffff 	b	9fc04f50 <n14_soft_int_ex_test+0x1e0>
9fc04f54:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n14_soft_int_ex.S:70
9fc04f58:	01120019 	multu	t0,s2
/home/chooaa/cs_lab/cpu_ex/inst/n14_soft_int_ex.S:71
9fc04f5c:	16570014 	bne	s2,s7,9fc04fb0 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n14_soft_int_ex.S:72
9fc04f60:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n14_soft_int_ex.S:74
9fc04f64:	24120008 	li	s2,8
/home/chooaa/cs_lab/cpu_ex/inst/n14_soft_int_ex.S:75
9fc04f68:	3c149fc0 	lui	s4,0x9fc0
9fc04f6c:	26944f98 	addiu	s4,s4,20376
/home/chooaa/cs_lab/cpu_ex/inst/n14_soft_int_ex.S:76
9fc04f70:	40927000 	mtc0	s2,c0_epc
/home/chooaa/cs_lab/cpu_ex/inst/n14_soft_int_ex.S:77
9fc04f74:	3c070040 	lui	a3,0x40
9fc04f78:	34e7ff01 	ori	a3,a3,0xff01
9fc04f7c:	2402ffff 	li	v0,-1
9fc04f80:	24030f00 	li	v1,3840
9fc04f84:	40804800 	mtc0	zero,c0_count
9fc04f88:	40825800 	mtc0	v0,c0_compare
9fc04f8c:	40876000 	mtc0	a3,c0_status
9fc04f90:	00000000 	nop
9fc04f94:	40836800 	mtc0	v1,c0_cause
9fc04f98:	1000ffff 	b	9fc04f98 <n14_soft_int_ex_test+0x228>
9fc04f9c:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n14_soft_int_ex.S:78
9fc04fa0:	40887000 	mtc0	t0,c0_epc
/home/chooaa/cs_lab/cpu_ex/inst/n14_soft_int_ex.S:79
9fc04fa4:	16570002 	bne	s2,s7,9fc04fb0 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n14_soft_int_ex.S:80
9fc04fa8:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n14_soft_int_ex.S:82
9fc04fac:	26730001 	addiu	s3,s3,1

9fc04fb0 <inst_error>:
/home/chooaa/cs_lab/cpu_ex/inst/n14_soft_int_ex.S:85
9fc04fb0:	00104e00 	sll	t1,s0,0x18
/home/chooaa/cs_lab/cpu_ex/inst/n14_soft_int_ex.S:86
9fc04fb4:	01334025 	or	t0,t1,s3
/home/chooaa/cs_lab/cpu_ex/inst/n14_soft_int_ex.S:87
9fc04fb8:	ae280000 	sw	t0,0(s1)
/home/chooaa/cs_lab/cpu_ex/inst/n14_soft_int_ex.S:88
9fc04fbc:	03e00008 	jr	ra
/home/chooaa/cs_lab/cpu_ex/inst/n14_soft_int_ex.S:89
9fc04fc0:	00000000 	nop
	...

9fc04fd0 <n5_sub_ov_ex_test>:
/home/chooaa/cs_lab/cpu_ex/inst/n5_sub_ov_ex.S:7
9fc04fd0:	26100001 	addiu	s0,s0,1
/home/chooaa/cs_lab/cpu_ex/inst/n5_sub_ov_ex.S:8
9fc04fd4:	3c08800d 	lui	t0,0x800d
/home/chooaa/cs_lab/cpu_ex/inst/n5_sub_ov_ex.S:9
9fc04fd8:	24120003 	li	s2,3
/home/chooaa/cs_lab/cpu_ex/inst/n5_sub_ov_ex.S:10
9fc04fdc:	ad120000 	sw	s2,0(t0)
/home/chooaa/cs_lab/cpu_ex/inst/n5_sub_ov_ex.S:12
9fc04fe0:	40805800 	mtc0	zero,c0_compare
/home/chooaa/cs_lab/cpu_ex/inst/n5_sub_ov_ex.S:13
9fc04fe4:	3c170040 	lui	s7,0x40
/home/chooaa/cs_lab/cpu_ex/inst/n5_sub_ov_ex.S:14
9fc04fe8:	40976000 	mtc0	s7,c0_status
/home/chooaa/cs_lab/cpu_ex/inst/n5_sub_ov_ex.S:15
9fc04fec:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n5_sub_ov_ex.S:16
9fc04ff0:	3c170003 	lui	s7,0x3
/home/chooaa/cs_lab/cpu_ex/inst/n5_sub_ov_ex.S:19
9fc04ff4:	3c023f06 	lui	v0,0x3f06
9fc04ff8:	344237b6 	ori	v0,v0,0x37b6
9fc04ffc:	3c033f06 	lui	v1,0x3f06
9fc05000:	346337b6 	ori	v1,v1,0x37b6
9fc05004:	3c0463d3 	lui	a0,0x63d3
9fc05008:	3484fd1e 	ori	a0,a0,0xfd1e
9fc0500c:	3c05d037 	lui	a1,0xd037
9fc05010:	34a58bea 	ori	a1,a1,0x8bea
/home/chooaa/cs_lab/cpu_ex/inst/n5_sub_ov_ex.S:20
9fc05014:	3c149fc0 	lui	s4,0x9fc0
9fc05018:	2694501c 	addiu	s4,s4,20508
/home/chooaa/cs_lab/cpu_ex/inst/n5_sub_ov_ex.S:21
9fc0501c:	00851022 	sub	v0,a0,a1
/home/chooaa/cs_lab/cpu_ex/inst/n5_sub_ov_ex.S:22
9fc05020:	1657007a 	bne	s2,s7,9fc0520c <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n5_sub_ov_ex.S:23
9fc05024:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n5_sub_ov_ex.S:24
9fc05028:	14430078 	bne	v0,v1,9fc0520c <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n5_sub_ov_ex.S:25
9fc0502c:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n5_sub_ov_ex.S:27
9fc05030:	24120003 	li	s2,3
/home/chooaa/cs_lab/cpu_ex/inst/n5_sub_ov_ex.S:28
9fc05034:	3c028754 	lui	v0,0x8754
9fc05038:	3442eb0d 	ori	v0,v0,0xeb0d
9fc0503c:	3c038754 	lui	v1,0x8754
9fc05040:	3463eb0d 	ori	v1,v1,0xeb0d
9fc05044:	3c046f8c 	lui	a0,0x6f8c
9fc05048:	34841169 	ori	a0,a0,0x1169
9fc0504c:	3c059edd 	lui	a1,0x9edd
9fc05050:	34a5bba4 	ori	a1,a1,0xbba4
/home/chooaa/cs_lab/cpu_ex/inst/n5_sub_ov_ex.S:29
9fc05054:	3c149fc0 	lui	s4,0x9fc0
9fc05058:	26945064 	addiu	s4,s4,20580
/home/chooaa/cs_lab/cpu_ex/inst/n5_sub_ov_ex.S:30
9fc0505c:	ad080004 	sw	t0,4(t0)
/home/chooaa/cs_lab/cpu_ex/inst/n5_sub_ov_ex.S:31
9fc05060:	ad140004 	sw	s4,4(t0)
/home/chooaa/cs_lab/cpu_ex/inst/n5_sub_ov_ex.S:32
9fc05064:	00851022 	sub	v0,a0,a1
/home/chooaa/cs_lab/cpu_ex/inst/n5_sub_ov_ex.S:33
9fc05068:	ad140000 	sw	s4,0(t0)
/home/chooaa/cs_lab/cpu_ex/inst/n5_sub_ov_ex.S:34
9fc0506c:	8d090004 	lw	t1,4(t0)
/home/chooaa/cs_lab/cpu_ex/inst/n5_sub_ov_ex.S:35
9fc05070:	15340066 	bne	t1,s4,9fc0520c <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n5_sub_ov_ex.S:36
9fc05074:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n5_sub_ov_ex.S:37
9fc05078:	16570064 	bne	s2,s7,9fc0520c <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n5_sub_ov_ex.S:38
9fc0507c:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n5_sub_ov_ex.S:39
9fc05080:	14430062 	bne	v0,v1,9fc0520c <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n5_sub_ov_ex.S:40
9fc05084:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n5_sub_ov_ex.S:41
9fc05088:	24120003 	li	s2,3
/home/chooaa/cs_lab/cpu_ex/inst/n5_sub_ov_ex.S:42
9fc0508c:	ad120000 	sw	s2,0(t0)
/home/chooaa/cs_lab/cpu_ex/inst/n5_sub_ov_ex.S:44
9fc05090:	24120003 	li	s2,3
/home/chooaa/cs_lab/cpu_ex/inst/n5_sub_ov_ex.S:45
9fc05094:	3c02f4e0 	lui	v0,0xf4e0
9fc05098:	34421aa8 	ori	v0,v0,0x1aa8
9fc0509c:	3c03f4e0 	lui	v1,0xf4e0
9fc050a0:	34631aa8 	ori	v1,v1,0x1aa8
9fc050a4:	3c04734a 	lui	a0,0x734a
9fc050a8:	3484367f 	ori	a0,a0,0x367f
9fc050ac:	3c05e173 	lui	a1,0xe173
9fc050b0:	34a554f8 	ori	a1,a1,0x54f8
/home/chooaa/cs_lab/cpu_ex/inst/n5_sub_ov_ex.S:46
9fc050b4:	3c149fc0 	lui	s4,0x9fc0
9fc050b8:	269450c4 	addiu	s4,s4,20676
/home/chooaa/cs_lab/cpu_ex/inst/n5_sub_ov_ex.S:47
9fc050bc:	01000011 	mthi	t0
/home/chooaa/cs_lab/cpu_ex/inst/n5_sub_ov_ex.S:48
9fc050c0:	0110001b 	divu	zero,t0,s0
/home/chooaa/cs_lab/cpu_ex/inst/n5_sub_ov_ex.S:49
9fc050c4:	00851022 	sub	v0,a0,a1
/home/chooaa/cs_lab/cpu_ex/inst/n5_sub_ov_ex.S:50
9fc050c8:	00004810 	mfhi	t1
/home/chooaa/cs_lab/cpu_ex/inst/n5_sub_ov_ex.S:51
9fc050cc:	1128004f 	beq	t1,t0,9fc0520c <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n5_sub_ov_ex.S:52
9fc050d0:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n5_sub_ov_ex.S:53
9fc050d4:	1657004d 	bne	s2,s7,9fc0520c <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n5_sub_ov_ex.S:54
9fc050d8:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n5_sub_ov_ex.S:55
9fc050dc:	1443004b 	bne	v0,v1,9fc0520c <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n5_sub_ov_ex.S:56
9fc050e0:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n5_sub_ov_ex.S:58
9fc050e4:	24120003 	li	s2,3
/home/chooaa/cs_lab/cpu_ex/inst/n5_sub_ov_ex.S:59
9fc050e8:	3c02dc37 	lui	v0,0xdc37
9fc050ec:	34423c00 	ori	v0,v0,0x3c00
9fc050f0:	3c03dc37 	lui	v1,0xdc37
9fc050f4:	34633c00 	ori	v1,v1,0x3c00
9fc050f8:	3c0421cc 	lui	a0,0x21cc
9fc050fc:	3484bee8 	ori	a0,a0,0xbee8
9fc05100:	3c059a01 	lui	a1,0x9a01
9fc05104:	34a5fac4 	ori	a1,a1,0xfac4
/home/chooaa/cs_lab/cpu_ex/inst/n5_sub_ov_ex.S:60
9fc05108:	3c149fc0 	lui	s4,0x9fc0
9fc0510c:	26945110 	addiu	s4,s4,20752
/home/chooaa/cs_lab/cpu_ex/inst/n5_sub_ov_ex.S:61
9fc05110:	00851022 	sub	v0,a0,a1
/home/chooaa/cs_lab/cpu_ex/inst/n5_sub_ov_ex.S:62
9fc05114:	0208001b 	divu	zero,s0,t0
/home/chooaa/cs_lab/cpu_ex/inst/n5_sub_ov_ex.S:63
9fc05118:	1657003c 	bne	s2,s7,9fc0520c <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n5_sub_ov_ex.S:64
9fc0511c:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n5_sub_ov_ex.S:65
9fc05120:	1443003a 	bne	v0,v1,9fc0520c <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n5_sub_ov_ex.S:66
9fc05124:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n5_sub_ov_ex.S:68
9fc05128:	24120003 	li	s2,3
/home/chooaa/cs_lab/cpu_ex/inst/n5_sub_ov_ex.S:69
9fc0512c:	3c02b226 	lui	v0,0xb226
9fc05130:	3442ec94 	ori	v0,v0,0xec94
9fc05134:	3c03b226 	lui	v1,0xb226
9fc05138:	3463ec94 	ori	v1,v1,0xec94
9fc0513c:	3c04b196 	lui	a0,0xb196
9fc05140:	3484dd00 	ori	a0,a0,0xdd00
9fc05144:	3c057dfd 	lui	a1,0x7dfd
9fc05148:	34a59ab0 	ori	a1,a1,0x9ab0
/home/chooaa/cs_lab/cpu_ex/inst/n5_sub_ov_ex.S:70
9fc0514c:	3c149fc0 	lui	s4,0x9fc0
9fc05150:	2694515c 	addiu	s4,s4,20828
/home/chooaa/cs_lab/cpu_ex/inst/n5_sub_ov_ex.S:71
9fc05154:	01000013 	mtlo	t0
/home/chooaa/cs_lab/cpu_ex/inst/n5_sub_ov_ex.S:72
9fc05158:	01100019 	multu	t0,s0
/home/chooaa/cs_lab/cpu_ex/inst/n5_sub_ov_ex.S:73
9fc0515c:	00851022 	sub	v0,a0,a1
/home/chooaa/cs_lab/cpu_ex/inst/n5_sub_ov_ex.S:74
9fc05160:	00004810 	mfhi	t1
/home/chooaa/cs_lab/cpu_ex/inst/n5_sub_ov_ex.S:75
9fc05164:	11280029 	beq	t1,t0,9fc0520c <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n5_sub_ov_ex.S:76
9fc05168:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n5_sub_ov_ex.S:77
9fc0516c:	16570027 	bne	s2,s7,9fc0520c <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n5_sub_ov_ex.S:78
9fc05170:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n5_sub_ov_ex.S:79
9fc05174:	14430025 	bne	v0,v1,9fc0520c <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n5_sub_ov_ex.S:80
9fc05178:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n5_sub_ov_ex.S:82
9fc0517c:	24120003 	li	s2,3
/home/chooaa/cs_lab/cpu_ex/inst/n5_sub_ov_ex.S:83
9fc05180:	3c021625 	lui	v0,0x1625
9fc05184:	3442bcc8 	ori	v0,v0,0xbcc8
9fc05188:	3c031625 	lui	v1,0x1625
9fc0518c:	3463bcc8 	ori	v1,v1,0xbcc8
9fc05190:	3c04b53c 	lui	a0,0xb53c
9fc05194:	3484d464 	ori	a0,a0,0xd464
9fc05198:	3c05421d 	lui	a1,0x421d
9fc0519c:	34a5020a 	ori	a1,a1,0x20a
/home/chooaa/cs_lab/cpu_ex/inst/n5_sub_ov_ex.S:84
9fc051a0:	3c149fc0 	lui	s4,0x9fc0
9fc051a4:	269451a8 	addiu	s4,s4,20904
/home/chooaa/cs_lab/cpu_ex/inst/n5_sub_ov_ex.S:85
9fc051a8:	00851022 	sub	v0,a0,a1
/home/chooaa/cs_lab/cpu_ex/inst/n5_sub_ov_ex.S:86
9fc051ac:	01120019 	multu	t0,s2
/home/chooaa/cs_lab/cpu_ex/inst/n5_sub_ov_ex.S:87
9fc051b0:	16570016 	bne	s2,s7,9fc0520c <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n5_sub_ov_ex.S:88
9fc051b4:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n5_sub_ov_ex.S:89
9fc051b8:	14430014 	bne	v0,v1,9fc0520c <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n5_sub_ov_ex.S:90
9fc051bc:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n5_sub_ov_ex.S:92
9fc051c0:	24120003 	li	s2,3
/home/chooaa/cs_lab/cpu_ex/inst/n5_sub_ov_ex.S:93
9fc051c4:	3c029f76 	lui	v0,0x9f76
9fc051c8:	34427750 	ori	v0,v0,0x7750
9fc051cc:	3c039f76 	lui	v1,0x9f76
9fc051d0:	34637750 	ori	v1,v1,0x7750
9fc051d4:	3c047041 	lui	a0,0x7041
9fc051d8:	34840c7a 	ori	a0,a0,0xc7a
9fc051dc:	3c058ddc 	lui	a1,0x8ddc
9fc051e0:	34a520c0 	ori	a1,a1,0x20c0
/home/chooaa/cs_lab/cpu_ex/inst/n5_sub_ov_ex.S:94
9fc051e4:	3c149fc0 	lui	s4,0x9fc0
9fc051e8:	269451f0 	addiu	s4,s4,20976
/home/chooaa/cs_lab/cpu_ex/inst/n5_sub_ov_ex.S:95
9fc051ec:	40927000 	mtc0	s2,c0_epc
/home/chooaa/cs_lab/cpu_ex/inst/n5_sub_ov_ex.S:96
9fc051f0:	00851022 	sub	v0,a0,a1
/home/chooaa/cs_lab/cpu_ex/inst/n5_sub_ov_ex.S:97
9fc051f4:	40887000 	mtc0	t0,c0_epc
/home/chooaa/cs_lab/cpu_ex/inst/n5_sub_ov_ex.S:98
9fc051f8:	16570004 	bne	s2,s7,9fc0520c <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n5_sub_ov_ex.S:99
9fc051fc:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n5_sub_ov_ex.S:100
9fc05200:	14430002 	bne	v0,v1,9fc0520c <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n5_sub_ov_ex.S:101
9fc05204:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n5_sub_ov_ex.S:103
9fc05208:	26730001 	addiu	s3,s3,1

9fc0520c <inst_error>:
/home/chooaa/cs_lab/cpu_ex/inst/n5_sub_ov_ex.S:106
9fc0520c:	00104e00 	sll	t1,s0,0x18
/home/chooaa/cs_lab/cpu_ex/inst/n5_sub_ov_ex.S:107
9fc05210:	01334025 	or	t0,t1,s3
/home/chooaa/cs_lab/cpu_ex/inst/n5_sub_ov_ex.S:108
9fc05214:	ae280000 	sw	t0,0(s1)
/home/chooaa/cs_lab/cpu_ex/inst/n5_sub_ov_ex.S:109
9fc05218:	03e00008 	jr	ra
/home/chooaa/cs_lab/cpu_ex/inst/n5_sub_ov_ex.S:110
9fc0521c:	00000000 	nop

9fc05220 <n22_bgezal_ds_ex_test>:
/home/chooaa/cs_lab/cpu_ex/inst/n22_bgezal_ds_ex.S:7
9fc05220:	03e0b021 	move	s6,ra
/home/chooaa/cs_lab/cpu_ex/inst/n22_bgezal_ds_ex.S:8
9fc05224:	26100001 	addiu	s0,s0,1
/home/chooaa/cs_lab/cpu_ex/inst/n22_bgezal_ds_ex.S:9
9fc05228:	3c08800d 	lui	t0,0x800d
/home/chooaa/cs_lab/cpu_ex/inst/n22_bgezal_ds_ex.S:11
9fc0522c:	40805800 	mtc0	zero,c0_compare
/home/chooaa/cs_lab/cpu_ex/inst/n22_bgezal_ds_ex.S:12
9fc05230:	3c170040 	lui	s7,0x40
/home/chooaa/cs_lab/cpu_ex/inst/n22_bgezal_ds_ex.S:13
9fc05234:	40976000 	mtc0	s7,c0_status
/home/chooaa/cs_lab/cpu_ex/inst/n22_bgezal_ds_ex.S:14
9fc05238:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n22_bgezal_ds_ex.S:17
9fc0523c:	24120001 	li	s2,1
/home/chooaa/cs_lab/cpu_ex/inst/n22_bgezal_ds_ex.S:18
9fc05240:	3c170001 	lui	s7,0x1
/home/chooaa/cs_lab/cpu_ex/inst/n22_bgezal_ds_ex.S:19
9fc05244:	ad120000 	sw	s2,0(t0)
/home/chooaa/cs_lab/cpu_ex/inst/n22_bgezal_ds_ex.S:20
9fc05248:	3c149fc0 	lui	s4,0x9fc0
9fc0524c:	26945250 	addiu	s4,s4,21072
/home/chooaa/cs_lab/cpu_ex/inst/n22_bgezal_ds_ex.S:21
9fc05250:	041100af 	bal	9fc05510 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n22_bgezal_ds_ex.S:22
9fc05254:	0000000c 	syscall
/home/chooaa/cs_lab/cpu_ex/inst/n22_bgezal_ds_ex.S:23
9fc05258:	165700ad 	bne	s2,s7,9fc05510 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n22_bgezal_ds_ex.S:24
9fc0525c:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n22_bgezal_ds_ex.S:25
9fc05260:	24120001 	li	s2,1
/home/chooaa/cs_lab/cpu_ex/inst/n22_bgezal_ds_ex.S:26
9fc05264:	3c149fc0 	lui	s4,0x9fc0
9fc05268:	2694526c 	addiu	s4,s4,21100
/home/chooaa/cs_lab/cpu_ex/inst/n22_bgezal_ds_ex.S:27
9fc0526c:	051100a8 	bgezal	t0,9fc05510 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n22_bgezal_ds_ex.S:28
9fc05270:	0000000c 	syscall
/home/chooaa/cs_lab/cpu_ex/inst/n22_bgezal_ds_ex.S:29
9fc05274:	165700a6 	bne	s2,s7,9fc05510 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n22_bgezal_ds_ex.S:30
9fc05278:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n22_bgezal_ds_ex.S:32
9fc0527c:	24120002 	li	s2,2
/home/chooaa/cs_lab/cpu_ex/inst/n22_bgezal_ds_ex.S:33
9fc05280:	3c170002 	lui	s7,0x2
/home/chooaa/cs_lab/cpu_ex/inst/n22_bgezal_ds_ex.S:34
9fc05284:	ad120000 	sw	s2,0(t0)
/home/chooaa/cs_lab/cpu_ex/inst/n22_bgezal_ds_ex.S:35
9fc05288:	3c149fc0 	lui	s4,0x9fc0
9fc0528c:	26945290 	addiu	s4,s4,21136
/home/chooaa/cs_lab/cpu_ex/inst/n22_bgezal_ds_ex.S:36
9fc05290:	0411009f 	bal	9fc05510 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n22_bgezal_ds_ex.S:37
9fc05294:	0000000d 	break
/home/chooaa/cs_lab/cpu_ex/inst/n22_bgezal_ds_ex.S:38
9fc05298:	1657009d 	bne	s2,s7,9fc05510 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n22_bgezal_ds_ex.S:39
9fc0529c:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n22_bgezal_ds_ex.S:40
9fc052a0:	24120002 	li	s2,2
/home/chooaa/cs_lab/cpu_ex/inst/n22_bgezal_ds_ex.S:41
9fc052a4:	3c149fc0 	lui	s4,0x9fc0
9fc052a8:	269452ac 	addiu	s4,s4,21164
/home/chooaa/cs_lab/cpu_ex/inst/n22_bgezal_ds_ex.S:42
9fc052ac:	05110098 	bgezal	t0,9fc05510 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n22_bgezal_ds_ex.S:43
9fc052b0:	0000000d 	break
/home/chooaa/cs_lab/cpu_ex/inst/n22_bgezal_ds_ex.S:44
9fc052b4:	16570096 	bne	s2,s7,9fc05510 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n22_bgezal_ds_ex.S:45
9fc052b8:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n22_bgezal_ds_ex.S:47
9fc052bc:	24120003 	li	s2,3
/home/chooaa/cs_lab/cpu_ex/inst/n22_bgezal_ds_ex.S:48
9fc052c0:	3c170003 	lui	s7,0x3
/home/chooaa/cs_lab/cpu_ex/inst/n22_bgezal_ds_ex.S:49
9fc052c4:	ad120000 	sw	s2,0(t0)
/home/chooaa/cs_lab/cpu_ex/inst/n22_bgezal_ds_ex.S:50
9fc052c8:	3c149fc0 	lui	s4,0x9fc0
9fc052cc:	269452e0 	addiu	s4,s4,21216
/home/chooaa/cs_lab/cpu_ex/inst/n22_bgezal_ds_ex.S:51
9fc052d0:	3c04ba03 	lui	a0,0xba03
9fc052d4:	34844f60 	ori	a0,a0,0x4f60
/home/chooaa/cs_lab/cpu_ex/inst/n22_bgezal_ds_ex.S:52
9fc052d8:	3c05b615 	lui	a1,0xb615
9fc052dc:	34a5fd67 	ori	a1,a1,0xfd67
/home/chooaa/cs_lab/cpu_ex/inst/n22_bgezal_ds_ex.S:53
9fc052e0:	0411008b 	bal	9fc05510 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n22_bgezal_ds_ex.S:54
9fc052e4:	0085b820 	add	s7,a0,a1
/home/chooaa/cs_lab/cpu_ex/inst/n22_bgezal_ds_ex.S:55
9fc052e8:	16570089 	bne	s2,s7,9fc05510 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n22_bgezal_ds_ex.S:56
9fc052ec:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n22_bgezal_ds_ex.S:57
9fc052f0:	24120003 	li	s2,3
/home/chooaa/cs_lab/cpu_ex/inst/n22_bgezal_ds_ex.S:58
9fc052f4:	3c149fc0 	lui	s4,0x9fc0
9fc052f8:	269452fc 	addiu	s4,s4,21244
/home/chooaa/cs_lab/cpu_ex/inst/n22_bgezal_ds_ex.S:59
9fc052fc:	05110084 	bgezal	t0,9fc05510 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n22_bgezal_ds_ex.S:60
9fc05300:	0085b820 	add	s7,a0,a1
/home/chooaa/cs_lab/cpu_ex/inst/n22_bgezal_ds_ex.S:61
9fc05304:	ad170000 	sw	s7,0(t0)
/home/chooaa/cs_lab/cpu_ex/inst/n22_bgezal_ds_ex.S:62
9fc05308:	16570081 	bne	s2,s7,9fc05510 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n22_bgezal_ds_ex.S:63
9fc0530c:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n22_bgezal_ds_ex.S:64
9fc05310:	24120003 	li	s2,3
/home/chooaa/cs_lab/cpu_ex/inst/n22_bgezal_ds_ex.S:65
9fc05314:	ad120000 	sw	s2,0(t0)
/home/chooaa/cs_lab/cpu_ex/inst/n22_bgezal_ds_ex.S:66
9fc05318:	3c149fc0 	lui	s4,0x9fc0
9fc0531c:	26945328 	addiu	s4,s4,21288
/home/chooaa/cs_lab/cpu_ex/inst/n22_bgezal_ds_ex.S:67
9fc05320:	3c047fff 	lui	a0,0x7fff
9fc05324:	3484c19e 	ori	a0,a0,0xc19e
/home/chooaa/cs_lab/cpu_ex/inst/n22_bgezal_ds_ex.S:68
9fc05328:	04110079 	bal	9fc05510 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n22_bgezal_ds_ex.S:69
9fc0532c:	20976512 	addi	s7,a0,25874
/home/chooaa/cs_lab/cpu_ex/inst/n22_bgezal_ds_ex.S:70
9fc05330:	16570077 	bne	s2,s7,9fc05510 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n22_bgezal_ds_ex.S:71
9fc05334:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n22_bgezal_ds_ex.S:72
9fc05338:	24120003 	li	s2,3
/home/chooaa/cs_lab/cpu_ex/inst/n22_bgezal_ds_ex.S:73
9fc0533c:	3c149fc0 	lui	s4,0x9fc0
9fc05340:	26945344 	addiu	s4,s4,21316
/home/chooaa/cs_lab/cpu_ex/inst/n22_bgezal_ds_ex.S:74
9fc05344:	05110072 	bgezal	t0,9fc05510 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n22_bgezal_ds_ex.S:75
9fc05348:	20976512 	addi	s7,a0,25874
/home/chooaa/cs_lab/cpu_ex/inst/n22_bgezal_ds_ex.S:76
9fc0534c:	16570070 	bne	s2,s7,9fc05510 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n22_bgezal_ds_ex.S:77
9fc05350:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n22_bgezal_ds_ex.S:78
9fc05354:	24120003 	li	s2,3
/home/chooaa/cs_lab/cpu_ex/inst/n22_bgezal_ds_ex.S:79
9fc05358:	3c149fc0 	lui	s4,0x9fc0
9fc0535c:	26945370 	addiu	s4,s4,21360
/home/chooaa/cs_lab/cpu_ex/inst/n22_bgezal_ds_ex.S:80
9fc05360:	3c04a85e 	lui	a0,0xa85e
9fc05364:	34847d00 	ori	a0,a0,0x7d00
/home/chooaa/cs_lab/cpu_ex/inst/n22_bgezal_ds_ex.S:81
9fc05368:	3c056b7e 	lui	a1,0x6b7e
9fc0536c:	34a58e36 	ori	a1,a1,0x8e36
/home/chooaa/cs_lab/cpu_ex/inst/n22_bgezal_ds_ex.S:82
9fc05370:	04110067 	bal	9fc05510 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n22_bgezal_ds_ex.S:83
9fc05374:	0085b822 	sub	s7,a0,a1
/home/chooaa/cs_lab/cpu_ex/inst/n22_bgezal_ds_ex.S:84
9fc05378:	16570065 	bne	s2,s7,9fc05510 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n22_bgezal_ds_ex.S:85
9fc0537c:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n22_bgezal_ds_ex.S:86
9fc05380:	24120003 	li	s2,3
/home/chooaa/cs_lab/cpu_ex/inst/n22_bgezal_ds_ex.S:87
9fc05384:	3c149fc0 	lui	s4,0x9fc0
9fc05388:	2694538c 	addiu	s4,s4,21388
/home/chooaa/cs_lab/cpu_ex/inst/n22_bgezal_ds_ex.S:88
9fc0538c:	05110060 	bgezal	t0,9fc05510 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n22_bgezal_ds_ex.S:89
9fc05390:	0085b822 	sub	s7,a0,a1
/home/chooaa/cs_lab/cpu_ex/inst/n22_bgezal_ds_ex.S:90
9fc05394:	1657005e 	bne	s2,s7,9fc05510 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n22_bgezal_ds_ex.S:91
9fc05398:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n22_bgezal_ds_ex.S:93
9fc0539c:	24120004 	li	s2,4
/home/chooaa/cs_lab/cpu_ex/inst/n22_bgezal_ds_ex.S:94
9fc053a0:	3c170004 	lui	s7,0x4
/home/chooaa/cs_lab/cpu_ex/inst/n22_bgezal_ds_ex.S:95
9fc053a4:	ad120000 	sw	s2,0(t0)
/home/chooaa/cs_lab/cpu_ex/inst/n22_bgezal_ds_ex.S:96
9fc053a8:	3c149fc0 	lui	s4,0x9fc0
9fc053ac:	269453b0 	addiu	s4,s4,21424
/home/chooaa/cs_lab/cpu_ex/inst/n22_bgezal_ds_ex.S:97
9fc053b0:	04110057 	bal	9fc05510 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n22_bgezal_ds_ex.S:98
9fc053b4:	8d170002 	lw	s7,2(t0)
/home/chooaa/cs_lab/cpu_ex/inst/n22_bgezal_ds_ex.S:99
9fc053b8:	16570055 	bne	s2,s7,9fc05510 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n22_bgezal_ds_ex.S:100
9fc053bc:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n22_bgezal_ds_ex.S:101
9fc053c0:	24120004 	li	s2,4
/home/chooaa/cs_lab/cpu_ex/inst/n22_bgezal_ds_ex.S:102
9fc053c4:	3c149fc0 	lui	s4,0x9fc0
9fc053c8:	269453cc 	addiu	s4,s4,21452
/home/chooaa/cs_lab/cpu_ex/inst/n22_bgezal_ds_ex.S:103
9fc053cc:	05110050 	bgezal	t0,9fc05510 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n22_bgezal_ds_ex.S:104
9fc053d0:	8d170002 	lw	s7,2(t0)
/home/chooaa/cs_lab/cpu_ex/inst/n22_bgezal_ds_ex.S:105
9fc053d4:	1657004e 	bne	s2,s7,9fc05510 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n22_bgezal_ds_ex.S:106
9fc053d8:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n22_bgezal_ds_ex.S:107
9fc053dc:	24120004 	li	s2,4
/home/chooaa/cs_lab/cpu_ex/inst/n22_bgezal_ds_ex.S:108
9fc053e0:	3c149fc0 	lui	s4,0x9fc0
9fc053e4:	269453e8 	addiu	s4,s4,21480
/home/chooaa/cs_lab/cpu_ex/inst/n22_bgezal_ds_ex.S:109
9fc053e8:	04110049 	bal	9fc05510 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n22_bgezal_ds_ex.S:110
9fc053ec:	85170001 	lh	s7,1(t0)
/home/chooaa/cs_lab/cpu_ex/inst/n22_bgezal_ds_ex.S:111
9fc053f0:	02f2001b 	divu	zero,s7,s2
/home/chooaa/cs_lab/cpu_ex/inst/n22_bgezal_ds_ex.S:112
9fc053f4:	16570046 	bne	s2,s7,9fc05510 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n22_bgezal_ds_ex.S:113
9fc053f8:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n22_bgezal_ds_ex.S:114
9fc053fc:	24120004 	li	s2,4
/home/chooaa/cs_lab/cpu_ex/inst/n22_bgezal_ds_ex.S:115
9fc05400:	3c149fc0 	lui	s4,0x9fc0
9fc05404:	26945408 	addiu	s4,s4,21512
/home/chooaa/cs_lab/cpu_ex/inst/n22_bgezal_ds_ex.S:116
9fc05408:	05110041 	bgezal	t0,9fc05510 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n22_bgezal_ds_ex.S:117
9fc0540c:	85170001 	lh	s7,1(t0)
/home/chooaa/cs_lab/cpu_ex/inst/n22_bgezal_ds_ex.S:118
9fc05410:	1657003f 	bne	s2,s7,9fc05510 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n22_bgezal_ds_ex.S:119
9fc05414:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n22_bgezal_ds_ex.S:120
9fc05418:	3c149fc0 	lui	s4,0x9fc0
9fc0541c:	26945420 	addiu	s4,s4,21536
/home/chooaa/cs_lab/cpu_ex/inst/n22_bgezal_ds_ex.S:121
9fc05420:	0411003b 	bal	9fc05510 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n22_bgezal_ds_ex.S:122
9fc05424:	95170003 	lhu	s7,3(t0)
/home/chooaa/cs_lab/cpu_ex/inst/n22_bgezal_ds_ex.S:123
9fc05428:	16570039 	bne	s2,s7,9fc05510 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n22_bgezal_ds_ex.S:124
9fc0542c:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n22_bgezal_ds_ex.S:125
9fc05430:	24120004 	li	s2,4
/home/chooaa/cs_lab/cpu_ex/inst/n22_bgezal_ds_ex.S:126
9fc05434:	3c149fc0 	lui	s4,0x9fc0
9fc05438:	2694543c 	addiu	s4,s4,21564
/home/chooaa/cs_lab/cpu_ex/inst/n22_bgezal_ds_ex.S:127
9fc0543c:	05110034 	bgezal	t0,9fc05510 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n22_bgezal_ds_ex.S:128
9fc05440:	95170003 	lhu	s7,3(t0)
/home/chooaa/cs_lab/cpu_ex/inst/n22_bgezal_ds_ex.S:129
9fc05444:	16570032 	bne	s2,s7,9fc05510 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n22_bgezal_ds_ex.S:130
9fc05448:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n22_bgezal_ds_ex.S:132
9fc0544c:	24120005 	li	s2,5
/home/chooaa/cs_lab/cpu_ex/inst/n22_bgezal_ds_ex.S:133
9fc05450:	3c170005 	lui	s7,0x5
/home/chooaa/cs_lab/cpu_ex/inst/n22_bgezal_ds_ex.S:134
9fc05454:	ad120000 	sw	s2,0(t0)
/home/chooaa/cs_lab/cpu_ex/inst/n22_bgezal_ds_ex.S:135
9fc05458:	3c149fc0 	lui	s4,0x9fc0
9fc0545c:	26945460 	addiu	s4,s4,21600
/home/chooaa/cs_lab/cpu_ex/inst/n22_bgezal_ds_ex.S:136
9fc05460:	0411002b 	bal	9fc05510 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n22_bgezal_ds_ex.S:137
9fc05464:	ad170002 	sw	s7,2(t0)
/home/chooaa/cs_lab/cpu_ex/inst/n22_bgezal_ds_ex.S:138
9fc05468:	16570029 	bne	s2,s7,9fc05510 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n22_bgezal_ds_ex.S:139
9fc0546c:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n22_bgezal_ds_ex.S:140
9fc05470:	24120005 	li	s2,5
/home/chooaa/cs_lab/cpu_ex/inst/n22_bgezal_ds_ex.S:141
9fc05474:	3c149fc0 	lui	s4,0x9fc0
9fc05478:	2694547c 	addiu	s4,s4,21628
/home/chooaa/cs_lab/cpu_ex/inst/n22_bgezal_ds_ex.S:142
9fc0547c:	05110024 	bgezal	t0,9fc05510 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n22_bgezal_ds_ex.S:143
9fc05480:	ad170002 	sw	s7,2(t0)
/home/chooaa/cs_lab/cpu_ex/inst/n22_bgezal_ds_ex.S:144
9fc05484:	16570022 	bne	s2,s7,9fc05510 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n22_bgezal_ds_ex.S:145
9fc05488:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n22_bgezal_ds_ex.S:146
9fc0548c:	24120005 	li	s2,5
/home/chooaa/cs_lab/cpu_ex/inst/n22_bgezal_ds_ex.S:147
9fc05490:	3c149fc0 	lui	s4,0x9fc0
9fc05494:	26945498 	addiu	s4,s4,21656
/home/chooaa/cs_lab/cpu_ex/inst/n22_bgezal_ds_ex.S:148
9fc05498:	0411001d 	bal	9fc05510 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n22_bgezal_ds_ex.S:149
9fc0549c:	a5170001 	sh	s7,1(t0)
/home/chooaa/cs_lab/cpu_ex/inst/n22_bgezal_ds_ex.S:150
9fc054a0:	1657001b 	bne	s2,s7,9fc05510 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n22_bgezal_ds_ex.S:151
9fc054a4:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n22_bgezal_ds_ex.S:152
9fc054a8:	24120005 	li	s2,5
/home/chooaa/cs_lab/cpu_ex/inst/n22_bgezal_ds_ex.S:153
9fc054ac:	3c149fc0 	lui	s4,0x9fc0
9fc054b0:	269454b4 	addiu	s4,s4,21684
/home/chooaa/cs_lab/cpu_ex/inst/n22_bgezal_ds_ex.S:154
9fc054b4:	05110016 	bgezal	t0,9fc05510 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n22_bgezal_ds_ex.S:155
9fc054b8:	a5170001 	sh	s7,1(t0)
/home/chooaa/cs_lab/cpu_ex/inst/n22_bgezal_ds_ex.S:156
9fc054bc:	16570014 	bne	s2,s7,9fc05510 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n22_bgezal_ds_ex.S:157
9fc054c0:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n22_bgezal_ds_ex.S:160
9fc054c4:	24120007 	li	s2,7
/home/chooaa/cs_lab/cpu_ex/inst/n22_bgezal_ds_ex.S:161
9fc054c8:	3c170007 	lui	s7,0x7
/home/chooaa/cs_lab/cpu_ex/inst/n22_bgezal_ds_ex.S:162
9fc054cc:	ad120000 	sw	s2,0(t0)
/home/chooaa/cs_lab/cpu_ex/inst/n22_bgezal_ds_ex.S:163
9fc054d0:	3c149fc0 	lui	s4,0x9fc0
9fc054d4:	269454d8 	addiu	s4,s4,21720
/home/chooaa/cs_lab/cpu_ex/inst/n22_bgezal_ds_ex.S:164
9fc054d8:	0411000d 	bal	9fc05510 <inst_error>
9fc054dc:	9e3c56aa 	0x9e3c56aa
/home/chooaa/cs_lab/cpu_ex/inst/n22_bgezal_ds_ex.S:166
9fc054e0:	02f20018 	mult	s7,s2
/home/chooaa/cs_lab/cpu_ex/inst/n22_bgezal_ds_ex.S:167
9fc054e4:	1657000a 	bne	s2,s7,9fc05510 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n22_bgezal_ds_ex.S:168
9fc054e8:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n22_bgezal_ds_ex.S:169
9fc054ec:	24120007 	li	s2,7
/home/chooaa/cs_lab/cpu_ex/inst/n22_bgezal_ds_ex.S:170
9fc054f0:	3c149fc0 	lui	s4,0x9fc0
9fc054f4:	269454fc 	addiu	s4,s4,21756
/home/chooaa/cs_lab/cpu_ex/inst/n22_bgezal_ds_ex.S:171
9fc054f8:	02f20018 	mult	s7,s2
/home/chooaa/cs_lab/cpu_ex/inst/n22_bgezal_ds_ex.S:172
9fc054fc:	05110004 	bgezal	t0,9fc05510 <inst_error>
9fc05500:	ec1ba960 	swc3	$27,-22176(zero)
/home/chooaa/cs_lab/cpu_ex/inst/n22_bgezal_ds_ex.S:174
9fc05504:	16570002 	bne	s2,s7,9fc05510 <inst_error>
/home/chooaa/cs_lab/cpu_ex/inst/n22_bgezal_ds_ex.S:175
9fc05508:	00000000 	nop
/home/chooaa/cs_lab/cpu_ex/inst/n22_bgezal_ds_ex.S:177
9fc0550c:	26730001 	addiu	s3,s3,1

9fc05510 <inst_error>:
/home/chooaa/cs_lab/cpu_ex/inst/n22_bgezal_ds_ex.S:180
9fc05510:	00104e00 	sll	t1,s0,0x18
/home/chooaa/cs_lab/cpu_ex/inst/n22_bgezal_ds_ex.S:181
9fc05514:	01334025 	or	t0,t1,s3
/home/chooaa/cs_lab/cpu_ex/inst/n22_bgezal_ds_ex.S:182
9fc05518:	ae280000 	sw	t0,0(s1)
/home/chooaa/cs_lab/cpu_ex/inst/n22_bgezal_ds_ex.S:183
9fc0551c:	02c0f821 	move	ra,s6
/home/chooaa/cs_lab/cpu_ex/inst/n22_bgezal_ds_ex.S:184
9fc05520:	03e00008 	jr	ra
/home/chooaa/cs_lab/cpu_ex/inst/n22_bgezal_ds_ex.S:185
9fc05524:	00000000 	nop
	...
9fc05530:	9e3f7f70 	0x9e3f7f70
	...
